using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using Exception = System.Exception;

public partial class Viavago : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUser_Click(object sender, EventArgs e)
    {

        if (txtRegisterPassword.Value == txtConfirmPassword.Value && txtRegisterEmail.Value != null && txtConfirmPassword.Value != null && txtFirstName.Value != null && txtLastName.Value != null)
        {
            //Instantiate a new UserManager object from the IdentityEF class that we imported.
            //This object is responsible for reading/writing data related to users of the application.
            var manager = new IdentityEF.UserManager();


            //Instantiate a new UserManager object from the IdentityEF class that we imported.
            //This object represents a user of our application.
            //We set the Username property of the ApplicationUser to the text entered in the UserName textbox.
            var user = new IdentityEF.ApplicationUser();
            user.UserName = txtRegisterEmail.Value;
            user.Email = txtRegisterEmail.Value;

            //Call the Create method of the UserManager to create a new record for this user.  
            //Pass in the ApplicationUser object and the password that was entered.
            //This writes the user information to the Identity database and returns an IdentityResult object.
            IdentityResult result = manager.Create(user, txtRegisterPassword.Value);




            //Connect to the 5050_Viavago database and insert the UserName into the Users table
            string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            string insertCommand = "INSERT INTO Users (UserName, FirstName, LastName) VALUES (@UserName, @FirstName, @LastName);";
            SqlCommand cmd = new SqlCommand(insertCommand, con);
            //attach parameter to command
            SqlParameter param = cmd.CreateParameter();
            param.ParameterName = "@UserName";
            param.Value = txtRegisterEmail.Value;
            cmd.Parameters.Add(param);
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Value);
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Value);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception err)
            {
                lblStatus.Text += "Command failed. " + err.Message;
            }
            finally
            {
                con.Close();
            }

            //if the user information was recorded successfully, create a new OWIN cookie-based claims identity for the user and sign them in
            if (result.Succeeded)
            {
                //Create a new ClaimsIdentity for the user
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                //Get a reference to the OWIN authentication middleware that will handle user authentication
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                //Use the authentication mamanger to sign in the user.
                //Pass in a new AuthenticationProperties object (allows for setting various properties of authentication.
                //Pass in the ClaimsIdentity object created above.
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                string selectCommand = "SELECT UserID FROM Users WHERE UserName = @UserName;";
                SqlCommand cmdSelect = new SqlCommand(selectCommand, con);
                cmdSelect.Parameters.AddWithValue("@UserName", txtRegisterEmail.Value);
                DataTable table = new DataTable();
                try
                {
                    con.Open();
                    SqlDataReader reader = cmdSelect.ExecuteReader();
                    table.Load(reader);
                }
                catch (Exception err)
                {
                    lblStatus.Text = err.Message;
                }
                finally
                {
                    con.Close();
                }

                var UserId = (Int32)table.Rows[0]["UserID"];
                Session["UserId"] = UserId;
                //Redirect the user to the Profile page where they can add additional profile variables.
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                //Report any errors that may have occurred.
                lblStatus.Text = result.Errors.FirstOrDefault();
            }
        }
        else
        {
            lblStatus.Text = "Passwords must match and all fields must be completed.";
        }

    }
    //Method to authenticate a user
    protected void SignIn(object sender, EventArgs e)
    {

        //Instantiate a new UserManager object from the IdentityEF class that we imported.
        //This object is responsible for reading/writing data related to users of the application.
        var userManager = new IdentityEF.UserManager();


        //Call the Find method of the UserManager to attempt to locate the user credentials in the database
        //If the credentials are not found, the user variable will be null
        var user = userManager.Find(txtLoginEmail.Value, txtLoginPassword.Value);

        //Create a boolean variable that denotes whether the user authentication should persist (the cookie does not expire)
        bool rememberme = chkRememberMe.Checked;

        //If the user variable is not null (meaning credentials are valid), sign the user in.
        if (user != null)
        {
            //Get a reference to the OWIN authentication middleware that will handle user authentication
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            //Create a new ClaimsIdentity for the user
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            //Use the authentication mamanger to sign in the user.
            //Pass in a new AuthenticationProperties object (allows for setting various properties of authentication.
            //Pass in the ClaimsIdentity object created above.
            authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = rememberme }, userIdentity);


            string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            string selectCommand = "SELECT UserID FROM Users WHERE UserName = @UserName;";
            SqlCommand cmdSelect = new SqlCommand(selectCommand, con);
            cmdSelect.Parameters.AddWithValue("@UserName", txtLoginEmail.Value);
            DataTable table = new DataTable();
            try
            {
                con.Open();
                SqlDataReader reader = cmdSelect.ExecuteReader();
                table.Load(reader);
            }
            catch (Exception err)
            {
                lblStatus.Text = err.Message;
            }
            finally
            {
                con.Close();
            }

            var UserId = (Int32)table.Rows[0]["UserID"];
            Session["UserId"] = UserId;
            //Redirect the user to the Profile page where they can add/modify additional profile variables.
            Response.Redirect("~/EditProfile.aspx");
        }
        else
        {
            lblStatus.Text = "Invalid username or password.";
        }
    }

    //Method to sign out a user
    protected void SignOut(object sender, EventArgs e)
    {
        //Get a reference to the OWIN authentication middleware that will handle user authentication
        var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

        //Call the SignOut method to revoke the ClaimsIdentity
        authenticationManager.SignOut();

        //Refresh the login page to show the Login form
        Response.Redirect("~/Default.aspx");
    }

}

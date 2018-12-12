using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using IdentityEF;
using Microsoft.AspNet.Identity;

public partial class EditProfile : System.Web.UI.Page
{
    //Declare a UserManager and ApplicationUser variable that will be used on this page.
    IdentityEF.UserManager usermanager;
    IdentityEF.ApplicationUser user;

    protected void Page_Load(object sender, EventArgs e)
    {



        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string selectCommand = "SELECT [UserID], [FirstName], [LastName], [ProfileImg], [City], [Country], [IsGuide], [AboutMe], [State], [UserName] FROM [Users] WHERE ([UserID] = @UserID);";
        SqlCommand cmdSelect = new SqlCommand(selectCommand, con);
        cmdSelect.Parameters.AddWithValue("@UserID", Session["UserId"]);

        DataTable table = new DataTable();
        try
        {
            con.Open();
            SqlDataReader reader = cmdSelect.ExecuteReader();
            table.Load(reader);
            txtFirstName.Value = (string)table.Rows[0]["FirstName"];
            txtLastName.Value = (string)table.Rows[0]["LastName"];
            imgProfile.ImageUrl = "~/ProfileImages/" + (string)table.Rows[0]["ProfileImg"];
            txtCity.Value = (string)table.Rows[0]["City"];
            txtCountry.Value = (string)table.Rows[0]["Country"];
            txtState.Value = (string)table.Rows[0]["State"];
            txtAboutMe.Text = (string)table.Rows[0]["AboutMe"];
            txtEmail.Value = (string)table.Rows[0]["UserName"];
            txtFirstName.Value = (string)table.Rows[0]["FirstName"];
            //Set the UserManager variable declared above to a new instance of the IdentityEF.UserManager class
            //usermanager = new IdentityEF.UserManager();

            ////Call the FindByName method of the UserManager to set the ApplicationUser variable to the user that is currently logged in
            //user = usermanager.FindByName(User.Identity.Name);

            //txtPhone.Value = user.PhoneNumber;
        }
        catch (Exception err)
        {
            lblStatus.Text = err.Message;
        }
        finally
        {
            con.Close();
        }



    }

    protected void btnSaveChanges_OnServerClick(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(fupProfileImage.FileName);

        if (fupProfileImage.HasFile)
        {
            fupProfileImage.SaveAs(Server.MapPath("~/ProfileImages/") + filename);
        }


        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string insertCommand = "UPDATE Users SET FirstName=@FirstName, LastName=@LastName, ProfileImg=@ProfileImg, City=@City, Country=@Country, AboutMe=@AboutMe, State=@State WHERE UserName = @UserName;";
        SqlCommand cmd = new SqlCommand(insertCommand, con);
        cmd.Parameters.AddWithValue("@UserName", User.Identity.Name);
        cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Value);
        cmd.Parameters.AddWithValue("@LastName", txtLastName.Value);
        cmd.Parameters.AddWithValue("@City", txtCity.Value);
        cmd.Parameters.AddWithValue("@Country", txtCountry.Value);
        cmd.Parameters.AddWithValue("@State", txtState.Value);
        cmd.Parameters.AddWithValue("@ProfileImg", filename);
        cmd.Parameters.AddWithValue("@AboutMe", txtAboutMe.Text);
        //Set the UserManager variable declared above to a new instance of the IdentityEF.UserManager class
        usermanager = new IdentityEF.UserManager();

        //Call the FindByName method of the UserManager to set the ApplicationUser variable to the user that is currently logged in
        user = usermanager.FindByName(User.Identity.Name);

        //user.PhoneNumber = txtPhone.Value;
        user.Email = txtEmail.Value;
        user.UserName = txtEmail.Value;


        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            lblStatus.Text = "Insert failed. " + err.Message;
        }
        finally
        {
            con.Close();
        }


    }

}
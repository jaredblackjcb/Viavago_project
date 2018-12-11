using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using IdentityEF;

public partial class EditProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSaveChanges_OnServerClick(object sender, EventArgs e)
    {
        string filename = Path.GetFileName(fupProfileImage.FileName);
        fupProfileImage.SaveAs(Server.MapPath("~/ProfileImages/") + filename);

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
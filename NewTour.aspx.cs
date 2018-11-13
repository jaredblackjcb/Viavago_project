using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
    //Open the database connection and insert values into the database
        string connectionString = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;

        //define ADO.net objects
        string insertSql =
            "INSERT INTO Tour_Information (GuideID, TourName, Category, Description, Price, StreetAddress, City, State, Country) VALUES (@GuideID, @TourName, @Category, @Description, @Price, @StreetAddress, @City, @State, @Country)";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSql, con);

        //create parameters and attach them to the command
        //cmd.Parameters.AddWithValue("@GuideID", Session["UserID"]); //How to make session variable for UserID?
        cmd.Parameters.AddWithValue("@TourName", txtTourName.Text);
        cmd.Parameters.AddWithValue("@Category", ddlCategory.Value);
        cmd.Parameters.AddWithValue("@Description", txtDescription.InnerText);
        cmd.Parameters.AddWithValue("@Price", txtPrice.Text);
        cmd.Parameters.AddWithValue("@StreetAddress", txtAddress.Text);
        cmd.Parameters.AddWithValue("@City", txtCity.Text);
        cmd.Parameters.AddWithValue("@State", txtState.Text);
        cmd.Parameters.AddWithValue("@Country", txtCountry.Text);

        //How to get images to upload and get image url into tour_images with the right TourID?
        
        if (fupTourImage.HasFile)
        {
            try
            {
                string filename = Path.GetFileName(fupTourImage.FileName);
                fupTourImage.SaveAs(Server.MapPath("~/TourImages" + filename));
                lblStatus.Text = "Save successful!";
            }
            catch(Exception err)
            {
                lblStatus.Text = "Save unsuccessful. The application encountered the following error while uploading: " + err.Message;
            }

        }
    }
}
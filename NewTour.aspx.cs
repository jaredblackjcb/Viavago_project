﻿using System;
using System.Collections.Generic;
using System.Data;
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
            "INSERT INTO Tour_Information (GuideID, TourName, Category, Description, Price, StreetAddress, City, State, Country, TourImg) VALUES (@GuideID, @TourName, @Category, @Description, @Price, @StreetAddress, @City, @State, @Country, @TourImg)";
        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSql, con);

        //create parameters and attach them to the command
        cmd.Parameters.AddWithValue("@GuideID", Session["UserId"]); //How to make session variable for UserID?
        cmd.Parameters.AddWithValue("@TourName", txtTourName.Text);
        cmd.Parameters.AddWithValue("@Category", ddlCategory.Value);
        cmd.Parameters.AddWithValue("@Description", txtDescription.InnerText);
        //Double price;
        //Double.TryParse(txtPrice.Text, out price);
        cmd.Parameters.AddWithValue("@Price", txtPrice.Text);
        cmd.Parameters.AddWithValue("@StreetAddress", txtAddress.Text);
        cmd.Parameters.AddWithValue("@City", txtCity.Text);
        cmd.Parameters.AddWithValue("@State", txtState.Text);
        cmd.Parameters.AddWithValue("@Country", txtCountry.Text);
        string filename = Path.GetFileName(fupTourImage.FileName);
        cmd.Parameters.AddWithValue("@TourImg", filename);


        //How to get images to upload and get image url into tour_images with the right TourID?

        if (fupTourImage.HasFile)
        {
            try
            {
                fupTourImage.SaveAs(Server.MapPath("~/TourImages/" + filename));
                lblStatus.Text = "Save successful!";
            }
            catch(Exception err)
            {
                lblStatus.Text = "Save unsuccessful. The application encountered the following error while uploading: " + err.Message;
            }

        }

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
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

    protected void Button1_OnClick(object sender, EventArgs e)
    {
        FileUpload uploader = new FileUpload();
        fupTourImage.Controls.Add(uploader);
    }
}
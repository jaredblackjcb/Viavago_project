using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TourDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBookNow_Click(object sender, EventArgs e)
    {
        //still working on getting this connection working
        //string connectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //string addBookings = "Insert Into Bookings (UserID, TourID, BookingStatus, BookingDate, NumberOfPeople)" +
        //    "Values @UserID, @TourID, @BookingStatus, @BookingDate, @NumberOfPeople";


        //SqlConnection con = new SqlConnection(connectionString);
        //SqlCommand cmd = new SqlCommand(addBookings, con);
        ////Add the values for each textbox
        //cmd.Parameters.AddWithValue("@UserID", txtPhone.Text);
        //cmd.Parameters.AddWithValue("@TourID", txtFName.Text);
        //cmd.Parameters.AddWithValue("@BookingStatus", txtLName.Text);
        //cmd.Parameters.AddWithValue("@BookingDate", txtEmail.Text);
        //cmd.Parameters.AddWithValue("@NumberOfPeople", );


        //int added = 0;
        //try
        //{
        //    con.Open();
        //    added = cmd.ExecuteNonQuery();
        //    lblregister.Text = added.ToString() + " Record Added.";
        //}
        //catch (Exception err)
        //{
        //    //Error Report given if invalid text is given
        //    lblregister.Text = "Error Adding. Please check to make sure your information provided is correct.";
        //    lblregister.Text += err.Message;
        //    lblregister.ForeColor = System.Drawing.Color.Black;


        //}
        //finally
        //{
        //    con.Close();
        //}
        //if (added > 1)
        //{
            

        //}

    }
}
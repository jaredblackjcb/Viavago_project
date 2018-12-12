using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin;

public partial class TourDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void fvwBookTour_ItemCommand(object sender, FormViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "InsertBooking")
    //    {
    //        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
    //        SqlConnection con = new SqlConnection(constring);
    //        string insertCommand = "INSERT INTO Bookings (UserID, TourID, BookingDate, NumberOfPeople) VALUES (UserID, TourID, BookingDate, NumberOfPeople);" ;
    //        SqlCommand cmd = new SqlCommand(insertCommand, con);

    //        cmd.Parameters.AddWithValue("@SenderID", Session["UserId"]);
    //        cmd.Parameters.AddWithValue("@TourID", Request["tourid"]);
    //        Calendar clrBookingDate = (Calendar) fvwBookTour.FindControl("clrBookingDate");
    //        cmd.Parameters.AddWithValue("@BookingDate", clrBookingDate.SelectedDate);
    //        TextBox txtNumberOfPeople = (TextBox)fvwBookTour.FindControl("txtNumberOfPeople");
    //        cmd.Parameters.AddWithValue("@NumberOfPeople", Convert.ToInt32(txtNumberOfPeople.Text));

    //        try
    //        {
    //            con.Open();
    //            cmd.ExecuteNonQuery();
    //        }
    //        catch (Exception err)
    //        {
    //            lblStatus.Text = err.Message;
    //        }
    //        finally
    //        {
    //            con.Close();
    //        }
    //    }
    //}

    protected void btnBook_OnClick(object sender, EventArgs e)
    {
        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string insertCommand = "INSERT INTO Bookings (UserID, TourID, BookingDate, NumberOfPeople) VALUES (@UserID, @TourID, @BookingDate, @NumberOfPeople);";
        SqlCommand cmd = new SqlCommand(insertCommand, con);

        cmd.Parameters.AddWithValue("@UserID", Session["UserId"]);
        cmd.Parameters.AddWithValue("@TourID", Request["tourid"]);
        cmd.Parameters.AddWithValue("@BookingDate", clrBookingDate.SelectedDate);
        cmd.Parameters.AddWithValue("@NumberOfPeople", Convert.ToInt32(txtNumberOfPeople.Value));

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
            lblStatus.Text = "Booking successful!";

        }
    }

    protected void btnSubmitReview_OnServerClick(object sender, EventArgs e)
    {
        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string insertCommand = "INSERT INTO Reviews (Rating, Review, ReviewerID, TourID) VALUES (@Rating, @Review, @ReviewerID, @TourID);";
        SqlCommand cmdInsert = new SqlCommand(insertCommand, con);

        cmdInsert.Parameters.AddWithValue("@ReviewerID", Session["UserId"]);
        //string rating = rating1.Value != null ? "1" :
        //    rating2.Value != null ? "2" :
        //    rating3.Value != null ? "3" :
        //    rating4.Value != null ? "4" :
        //    rating5.Value != null ? "5" : "0";
        int rating = Convert.ToInt32(rblRating.SelectedValue);
        cmdInsert.Parameters.AddWithValue("@Rating", rating);
        cmdInsert.Parameters.AddWithValue("@Review", txtReview.Value);
        cmdInsert.Parameters.AddWithValue("@TourID", Request["tourid"]);


        try
        {
            con.Open();
            int rowsAffected = cmdInsert.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                lblStatus.Text = "Review successful.";

            }
            else
            {
                lblStatus.Text = "There was a problem submitting the review.";

            }
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
}
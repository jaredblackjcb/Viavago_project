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
}
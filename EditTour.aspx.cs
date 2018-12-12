using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditTour : System.Web.UI.Page
{
    protected void Page_PreRender(object sender, EventArgs e)
    {
        this.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["tourid"] != null)
            {
                string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
                SqlConnection con = new SqlConnection(constring);
                string selectCommand =
                    "SELECT TourName, Category, Description, Price, StreetAddress, City, State, Country, TourImg FROM Tour_Information WHERE TourID = @TourID;";
                SqlCommand cmdSelect = new SqlCommand(selectCommand, con);
                cmdSelect.Parameters.AddWithValue("@TourID", Request.QueryString["tourid"]);

                DataTable table = new DataTable();
                try
                {
                    con.Open();
                    SqlDataReader reader = cmdSelect.ExecuteReader();
                    table.Load(reader);
                    txtTourName.Text = (string) table.Rows[0]["TourName"];
                    ddlCategory.Value = (string) table.Rows[0]["Category"];
                    txtDescription.Value = (string) table.Rows[0]["Description"];
                    txtPrice.Text = table.Rows[0]["Price"].ToString();
                    txtAddress.Text = (string) table.Rows[0]["StreetAddress"];
                    txtCity.Text = (string) table.Rows[0]["City"];
                    txtState.Text = (string) table.Rows[0]["State"];
                    txtCountry.Text = (string) table.Rows[0]["Country"];
                    imgTourImage.ImageUrl = "~/TourImages/" + (string) table.Rows[0]["TourImg"];


                }
                catch (Exception err)
                {
                    lblStatus.Text = err.Message;
                }
                finally
                {
                    con.Close();
                    this.DataBind();
                }
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string updateCommand =
            "UPDATE Tour_Information SET TourName=@TourName, Category=@Category, Description=@Description, Price=@Price, StreetAddress=@StreetAddress, City=@City, State=@State, Country=@Country, TourImg=@TourImg WHERE TourID = @TourID;";
        SqlCommand cmdUpdate = new SqlCommand(updateCommand, con);
        cmdUpdate.Parameters.AddWithValue("@TourID", Request.QueryString["tourid"]);
        cmdUpdate.Parameters.AddWithValue("@TourName", txtTourName.Text);
        cmdUpdate.Parameters.AddWithValue("@Category", ddlCategory.Value);
        cmdUpdate.Parameters.AddWithValue("@Description", txtDescription.Value);
        cmdUpdate.Parameters.AddWithValue("@Price", txtPrice.Text);
        cmdUpdate.Parameters.AddWithValue("@StreetAddress", txtAddress.Text);
        cmdUpdate.Parameters.AddWithValue("@City", txtCity.Text);
        cmdUpdate.Parameters.AddWithValue("@State", txtState.Text);
        cmdUpdate.Parameters.AddWithValue("@Country", txtCountry.Text);
        string filename = fupTourImage.FileName;
        cmdUpdate.Parameters.AddWithValue("@TourImg", filename);


        try
        {
            con.Open();
            int rowsAffected = cmdUpdate.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                lblStatus.Text = "Update successful.";
            }
        }
        catch (Exception err)
        {
            lblStatus.Text = err.Message;
        }
        finally
        {
            con.Close();
            this.DataBind();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Messages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnReply_OnClick(object sender, EventArgs e)
    {
        TextBox txtReply = (TextBox)lvwInbox.FindControl("txtReply");
        txtReply.Visible = true;
    }

    protected void btnSend_OnClick(object sender, EventArgs e)
    {
        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string insertCommand = "INSERT INTO Messages (SenderID, ReceiverID, Message, Date) VALUES (@SenderID, @ReceiverID, @Message, @Date);";
        SqlCommand cmd = new SqlCommand(insertCommand, con);

        cmd.Parameters.AddWithValue("@SenderID", Session["UserId"]);
        cmd.Parameters.AddWithValue("@ReceiverID", lvwInbox.DataKeys[0].Value);
        TextBox txtReply = (TextBox)lvwInbox.FindControl("txtReply");
        cmd.Parameters.AddWithValue("@Message", txtReply.Text); 
        cmd.Parameters.AddWithValue("@Date", DateTime.Today);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
        }
        catch (Exception err)
        {
            txtStatus.Text = err.Message;
        }
        finally
        {
            con.Close();
        }
    }

    protected void lvwInbox_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "InsertMessage" && Session["UserId"] != null)
        { 
            string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            string insertCommand = "INSERT INTO Messages (SenderID, ReceiverID, Message, Date) VALUES (@SenderID, @ReceiverID, @Message, @Date);";
            SqlCommand cmd = new SqlCommand(insertCommand, con);

            cmd.Parameters.AddWithValue("@SenderID", Session["UserId"]);
            cmd.Parameters.AddWithValue("@ReceiverID",lvwInbox.DataKeys[e.Item.DataItemIndex].Value );
            TextBox txtReply = (TextBox)e.Item.FindControl("txtReply");
            cmd.Parameters.AddWithValue("@Message", txtReply.Text);
            cmd.Parameters.AddWithValue("@Date", DateTime.Today);

            try
            {
                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    txtStatus.Text = "Message sent.";
                }
            }
            catch (Exception err)
            {
                txtStatus.Text = err.Message;
            }
            finally
            {
                con.Close();
                lvwInbox.EditIndex = -1;
                lvwInbox.DataBind();
            }
        }
        else
        {
            txtStatus.Text = "Session has expired. Please log in.";

        }
    }
}
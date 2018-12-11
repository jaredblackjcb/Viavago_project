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
        //foreach (var i in Session)
        //{
        //    txtStatus.Text += i.ToString();
        //}
        txtStatus.Text = Session["UserId"].ToString();
        //TextBox txtReply = (TextBox) lvwInbox.FindControl("txtReply");?????????????????????????????????
        //txtReply.Visible = false;
    }


    protected void btnReply_OnClick(object sender, EventArgs e)
    {
        //TextBox txtReply = (TextBox)lvwInbox.FindControl("txtReply");????????????????????????????/
        //txtReply.Visible = true;
    }

    protected void btnSend_OnClick(object sender, EventArgs e)
    {
        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string insertCommand = "INSERT INTO Messages (SenderID, ReceiverID, Message, Date) VALUES (@SenderID, @ReceiverID, @Message, @Date);";
        SqlCommand cmd = new SqlCommand(insertCommand, con);

        cmd.Parameters.AddWithValue("@SenderID", Session["UserId"]);
        cmd.Parameters.AddWithValue("@ReceiverID", lvwInbox.DataKeyNames[0]);
        TextBox txtReply = (TextBox)lvwInbox.FindControl("txtReply");
        cmd.Parameters.AddWithValue("@Message", txtReply.Text); ??????????????????????????????????????
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
}
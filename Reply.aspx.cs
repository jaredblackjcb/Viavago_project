using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSend_OnClick(object sender, EventArgs e)
    {
        string constring = WebConfigurationManager.ConnectionStrings["5050_Viavago"].ConnectionString;
        SqlConnection con = new SqlConnection(constring);
        string insertCommand =
            "INSERT INTO Messages (SenderID, ReceiverID, Message, Date) VALUES (@SenderID, @ReceiverID, @Message, @Date);";
        SqlCommand cmd = new SqlCommand(insertCommand, con);
        cmd.Parameters.AddWithValue("@SenderID", Session["UserId"]);
        cmd.Parameters.AddWithValue("@ReceiverID", ?????);
        cmd.Parameters.AddWithValue("@Message", txtMessage.Value);
        cmd.Parameters.AddWithValue("@Date", DateTime.Today);



    }
}
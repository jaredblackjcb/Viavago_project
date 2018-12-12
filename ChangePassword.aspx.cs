using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected async void btnSaveChanges_OnServerClickAsync(object sender, EventArgs e)
    {
        //Instantiate a new UserManager object from the IdentityEF class that we imported.
        //This object is responsible for reading/writing data related to users of the application.
        var manager = new IdentityEF.UserManager();

        if (txtNewPassword.Value == txtConfirmNewPassword.Value)
        {
            //Update password
            IdentityResult result = await manager.ChangePasswordAsync(User.Identity.GetUserId(),
                txtCurrentPassword.Value, txtNewPassword.Value);
            if (result.Succeeded)
            {
                lblStatus.Text = "Password updated successfully.";
            }
            else
            {
                lblStatus.Text = "Error updating password.";
            }
        }
    }
}
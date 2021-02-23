using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyFood_feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string name, email, output;

        name = txtName.Text;
        email = txtEmail.Text;

        if (Page.IsValid)
        {
            output = "Hi " + name +  ", We have received your feedback. Thanks you for taking your time to give us your feedback so that we can serve you better. " ;
        }
        else
        {
            output = "This is not a valid form";
        }
        txtOutput.Text = output;

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtEmail.Text = "";
        txtbox1.Text = "";
        txtbox2.Text = "";
        txtbox3.Text = "";
        txtOutput.Text = "";
        ddlRate.ClearSelection();
        rblfeed1.ClearSelection();
        rblfeed2.ClearSelection();
        rblfeed3.ClearSelection();
        rblfeed4.ClearSelection();
        rblfeed5.ClearSelection();
        rblfeed6.ClearSelection();
        
    }
}
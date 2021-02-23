using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyFood_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String name, phonenum, email, output;

        double Seasoningprice,   marineprice = 0;
        double dishesprice = 0;
        double meatprice = 0;
        double soupprice = 0;
        double totalprice = 0;

        errorMsg.Text = "";
        errorMsg1.Text = "";
        name = txtName.Text;
        phonenum = txtPhoneNum.Text;
        email = txtEmail.Text;

        //Soup Base
        if (cbChciken.Checked)
        {
            soupprice = soupprice + 14.00;
        }

        if (cbLaksa.Checked)
        {
            soupprice = soupprice + 7.00;
        }

        if (cbMushroon.Checked)
        {
            soupprice = soupprice + 7.00;
        }

        if (cbSeafood.Checked)
        {
            soupprice = soupprice + 8.00;
        }

        if (cbSichuan.Checked)
        {
            soupprice = soupprice + 9.00;
        }

        if (cbSichuanSpicy.Checked)
        {
            soupprice = soupprice + 12.00;
        }

        if (cbThreeSoup.Checked)
        {
            soupprice = soupprice + 9.00;
        }

        if (cbTomato.Checked)
        {
            soupprice = soupprice + 10.00;
        }

        //Seasoning
        if (lbSauce.SelectedIndex == 0)
        {
            Seasoningprice = 4.00;
        }
        else if (lbSauce.SelectedIndex == 1)
        {
            Seasoningprice = 4.00;
        }
        else if (lbSauce.SelectedIndex == 2)
        {
            Seasoningprice = 4.00;
        }
        else if (lbSauce.SelectedIndex == 3)
        {
            Seasoningprice = 4.0;
        }
        else if (lbSauce.SelectedIndex == 4)
        {
            Seasoningprice = 4.00;
        }
        else if (lbSauce.SelectedIndex == 5)
        {
            Seasoningprice = 4.00;
        }
        else
        {
            Seasoningprice = 0;
        }

        //Meat
        try
        {
            if (rblMeat.SelectedIndex == 0)
            {
                meatprice = 23.00 * Convert.ToInt32(txtQuantity1.Text);
            }
            else if (rblMeat.SelectedIndex == 1)
            {
                meatprice = 15.00 * Convert.ToInt32(txtQuantity1.Text);
            }
            else if (rblMeat.SelectedIndex == 2)
            {
                meatprice = 15.00 * Convert.ToInt32(txtQuantity1.Text);
            }
            else if (rblMeat.SelectedIndex == 3)
            {
                meatprice = 15.00 * Convert.ToInt32(txtQuantity1.Text);
            }
            else if (rblMeat.SelectedIndex == 4)
            {
                meatprice = 20.00 * Convert.ToInt32(txtQuantity1.Text);
            }
            else if (rblMeat.SelectedIndex == 5)
            {
                meatprice = 9.00 * Convert.ToInt32(txtQuantity1.Text);
            }
        }
        catch(Exception)
        {
            errorMsg.Text = "Please enter a Number";
        }

        //Dishes
        try
        {
            if (rblDishes.SelectedIndex == 0)
            {
                dishesprice = 3.00 * Convert.ToInt32(txtQuantity2.Text); 
            }
            else if (rblDishes.SelectedIndex == 1)
            {
                dishesprice = 6.00 * Convert.ToInt32(txtQuantity2.Text);
            }
            else if (rblDishes.SelectedIndex == 2)
            {
                dishesprice = 4.00 * Convert.ToInt32(txtQuantity2.Text);
            }
            else if (rblDishes.SelectedIndex == 3)
            {
                dishesprice = 5.00 * Convert.ToInt32(txtQuantity2.Text);
            }
            else if (rblDishes.SelectedIndex == 4)
            {
                dishesprice = 4.00 * Convert.ToInt32(txtQuantity2.Text);
            }
            else if (rblDishes.SelectedIndex == 5)
            {
                dishesprice = 8.00 * Convert.ToInt32(txtQuantity2.Text);
            }
        }
        catch (Exception ex)
        {
            errorMsg1.Text = "Please enter a Number";
        }

        //Marine 
        if (ddlMarine.SelectedIndex == 0)
        {
            marineprice = 13.00;
        }
        else if (ddlMarine.SelectedIndex == 1)
        {
            marineprice = 60.00;
        }
        else if (ddlMarine.SelectedIndex == 2)
        {
            marineprice = 23.00;
        }
        else if (ddlMarine.SelectedIndex == 3)
        {
            marineprice = 69.00;
        }
        else if (ddlMarine.SelectedIndex == 4)
        {
            marineprice = 17.00;
        }
        else if (ddlMarine.SelectedIndex == 5)
        {
            marineprice = 29.00;
        }
        else
        {
            marineprice = 0;
        }


        totalprice = soupprice + Seasoningprice + meatprice + dishesprice + marineprice;

        if (Page.IsValid)
        {
            output = "Hi " + name + ", the total price for your order is " + totalprice + ". The confirmation of your order will be sent to your email " + email;
        }
        else
        {
            output = "This is not a valid form";
        }
        lblAnswer.Text = output;
    }

    protected void ddlMarine_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtPhoneNum.Text = "";
        txtEmail.Text = "";
        txtEmailRetype.Text = "";
        txtQuantity1.Text = "";
        txtQuantity2.Text = "";
        lblAnswer.Text = "";
        cbMushroon.Checked = false;
        cbChciken.Checked = false;
        cbLaksa.Checked = false;
        cbSeafood.Checked = false;
        cbSichuan.Checked = false;
        cbSichuanSpicy.Checked = false;
        cbThreeSoup.Checked = false;
        cbTomato.Checked = false;
        lbSauce.ClearSelection();
        rblMeat.ClearSelection();
        rblDishes.ClearSelection();
        ddlMarine.ClearSelection();
        
    }
}
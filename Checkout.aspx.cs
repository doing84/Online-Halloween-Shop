using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ddlStateIntSet();
    }
    private void ddlStateIntSet()
    {
        ddlState.Items.Insert(0, new ListItem("----Select---", "0"));
        ddlState.Items.Insert(1, new ListItem("Alberta", "1"));
        ddlState.Items.Insert(2, new ListItem("British Columbia", "2"));
        ddlState.Items.Insert(3, new ListItem("Manitoba", "3"));
        ddlState.Items.Insert(4, new ListItem("New Brunswick", "4"));
        ddlState.Items.Insert(5, new ListItem("Newfoundland and Labrador", "5"));
        ddlState.Items.Insert(6, new ListItem("Northwest Territories", "6"));
        ddlState.Items.Insert(7, new ListItem("Nova Scotia", "7"));
        ddlState.Items.Insert(8, new ListItem("Nunavut", "8"));
        ddlState.Items.Insert(9, new ListItem("Ontario", "9"));
        ddlState.Items.Insert(10, new ListItem("Saskatchewan", "10"));
        ddlState.Items.Insert(11, new ListItem("Prince Edward Island", "11"));
        ddlState.Items.Insert(12, new ListItem("Quebec", "12"));
        ddlState.Items.Insert(13, new ListItem("Yukon", "13"));

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ddlState.SelectedIndex = 0;
        clearTxtBox(Page.Controls);
        clearCheckBox(Page.Controls);
        clearRadioBtn(Page.Controls);
        
    }
    void clearTxtBox(ControlCollection ctrls) 
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            clearTxtBox(ctrl.Controls);
        }
    }
    void clearRadioBtn(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if(ctrl is RadioButton)
                ((RadioButton)ctrl).Checked = false;
            clearRadioBtn(ctrl.Controls);

        }
    }
    void clearCheckBox(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is CheckBox)
                ((CheckBox)ctrl).Checked = false;
            clearCheckBox(ctrl.Controls);

        }
    }
    protected void btnCheckout_Click(object sender, EventArgs e)
    {
        lblThanks.Text = "Thanks for purchase! We hope to see you again!";
        lblThanks.Visible = true;
    }
}
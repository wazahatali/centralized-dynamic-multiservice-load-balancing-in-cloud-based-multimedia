using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALL;
using BO;
using System.Globalization;

public partial class _Default : System.Web.UI.Page
{

    Boclass obj1 = new Boclass();
    Balclass bal_oj = new Balclass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reg_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Session["name"] = txt_fname.Text;
            obj1.Fname = txt_fname.Text;
            obj1.Lname = txt_lname.Text;
            obj1.Paswd = txt_pd.Text;
            obj1.Cpaswd = txt_cpd.Text;
            obj1.Mail = txt_mail.Text;
            obj1.Dob = txt_dob.Text;
            obj1.Gender = RadioButtonList1.SelectedValue;
            obj1.Mobno = Convert.ToInt64(txt_mob.Text);
            bool i = bal_oj.reg(obj1);
            if (i)
            {
                Response.Redirect("Select_package.aspx");
                            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Registered Successfully...')</script>", false);
            }
        }
        catch (Exception ex)
        {
            string err = ex.Message.ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Error", "<script>alert('" + err + "')</script>", false);
        }
    }
}
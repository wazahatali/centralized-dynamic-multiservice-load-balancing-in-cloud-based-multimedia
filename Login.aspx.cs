using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALL;
using BO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    Boclass obj1 = new Boclass();
    Balclass bal_oj = new Balclass();
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login(object sender, EventArgs e)
    {
        obj1.fname = txt_user.Text;
        obj1.Paswd = txt_pwd.Text;
        cmd = new SqlCommand("select fname,paswd from clouduser where fname=@fname and paswd=@paswd", con);
        cmd.Parameters.AddWithValue("fname", txt_user.Text);
        cmd.Parameters.AddWithValue("paswd", txt_pwd.Text);
        da = new SqlDataAdapter(cmd);
        System.Threading.Thread.Sleep(5000);
        if (txt_user.Text != string.Empty && txt_pwd.Text != string.Empty)
        {
            bool log = bal_oj.login(obj1);
            if (log)
            {
                sess_keys();
                Session["user"] = txt_user.Text;
                bool k = bal_oj.log_downkeys(obj1);
                Response.Redirect("Latest_Updates.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid Password')</script>", false);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>", false);

        }
    }
    public void sess_keys()
    {
        var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        var random = new Random();
        var result = new string(
            Enumerable.Repeat(chars, 5).Select(s => s[random.Next(s.Length)]).ToArray());
        obj1.S_key = result.ToString();
        Session["session_key"] = obj1.S_key;
    }

}

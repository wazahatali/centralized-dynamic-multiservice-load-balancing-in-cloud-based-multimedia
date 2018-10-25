using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BO;
using BALL;
public partial class _Default : System.Web.UI.Page
{
    Boclass bo = new Boclass();
    Balclass bal = new Balclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    public void bind()
    {
        string ss = Session["search_img"].ToString();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = ConfigurationManager
                    .ConnectionStrings["connectionStr"].ConnectionString;
            SqlCommand cmd = new SqlCommand("select fname,img from search_item where sig='" +ss + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Dtlst_img.DataSource = ds;
            Dtlst_img.DataBind();
        }
    }
    public string imgs(object st)
    {
        byte[] ty = (byte[])st;
        string s = Convert.ToBase64String(ty);
        string ss = "data:image/png;base64," + s;
        return ss;
    }
}
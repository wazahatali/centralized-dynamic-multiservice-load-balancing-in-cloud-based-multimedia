using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using BALL;
using BO;

public partial class _Default : System.Web.UI.Page
{
    Boclass bo = new Boclass();
    Balclass bal = new Balclass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            databind_img();
            databind_mus();
            databind_vdo();
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchImage(string prefixText, int count)
    {
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionStr"].ConnectionString;
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select distinct sig from search_item where " +
                "sig like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = con;
                con.Open();
                List<string> file = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        file.Add(sdr["sig"].ToString());
                    }
                }

                if (file.Count == 0)
                {
                    cmd.CommandText = "select distinct cat from search_item where " +
                                "cat like @SearchText1 + '%'";
                    cmd.Parameters.AddWithValue("@SearchText1", prefixText);
                    cmd.Connection = con;
                    List<string> file1 = new List<string>();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            file1.Add(sdr["cat"].ToString());

                        }
                        return file1;
                    }
                }
                else
                {
                    return file;
                    con.Close();

                }
                
            }

        }
    }
    public void databind_mus()
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Cloud Server/Songs"));
        FileInfo[] files = dir.GetFiles();
        ArrayList listItems = new ArrayList();
        foreach (FileInfo info in files)
        {
            listItems.Add(info);

        }
        PagedDataSource pd = new PagedDataSource();
        pd.AllowPaging = true;
        pd.DataSource = listItems;
        pd.PageSize = 3;
        Dtlst_mus.DataSource = pd;
        Dtlst_mus.DataBind();
    }

    public void databind_img()
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Cloud Server/Picture"));
        FileInfo[] files = dir.GetFiles();
        ArrayList listItems = new ArrayList();
        foreach (FileInfo info in files)
        {
            listItems.Add(info);
        }
        PagedDataSource pd = new PagedDataSource();
        pd.AllowPaging = true;
        pd.DataSource = listItems;
        pd.PageSize = 3;
        Dtlst_img.DataSource = pd;
        Dtlst_img.DataBind();
    }
    public void databind_vdo()
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Cloud Server/Video"));
        FileInfo[] files = dir.GetFiles();
        ArrayList listItems = new ArrayList();
        foreach (FileInfo info in files)
        {
            listItems.Add(info);
        }
        PagedDataSource pd = new PagedDataSource();
        pd.AllowPaging = true;
        pd.DataSource = listItems;
        pd.PageSize = 3;
        Dtlst_vdo.DataSource = pd;
        Dtlst_vdo.DataBind();
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {

        bo.Search1 = txt_search.Text;

        Session["search_img"] = bo.Search1;
        Response.Redirect("Results.aspx");
    }
}
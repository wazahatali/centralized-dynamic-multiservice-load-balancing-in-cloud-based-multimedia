using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using System.Data;
using BALL;
using BO;

public partial class _Default : System.Web.UI.Page
{
    Boclass bo_ob = new Boclass();
    Balclass bal_obj = new Balclass();
    protected void Page_Load(object sender, EventArgs e)
    {
    //  HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
    //    HttpContext.Current.Response.Cache.SetNoServerCaching();
    //    HttpContext.Current.Response.Cache.SetNoStore();

    //    try
    //    {
            if (!IsPostBack)
            {
                databind_img();
                databind_mus();
                databind_vdo();
                lbl_sess.Text = Session["user"].ToString();
                lbl_user_sess.Text = Session["user"].ToString();
               
            }
            //
        ////}
        ////catch
        ////{
           // Response.Redirect("Login.aspx");
        ////}
    }

    
    public void databind_mus()
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Cloud Server/Songs/"));
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
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        bool drop =bal_obj.destroy(bo_ob);
        Response.Redirect("Login.aspx");
    }
    public void databind_img()
    {
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Cloud Server/Picture/"));
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
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/Cloud Server/Video/"));
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
    protected void click(object sender, EventArgs e)
    {
        Response.Redirect("Video_Galary.aspx");
    }

    protected void click2(object sender, EventArgs e)
    {
        Response.Redirect("Audio_Galary.aspx");
    }
    protected void click3(object sender, EventArgs e)
    {
        Response.Redirect("Image_Galary.aspx");
    }
}
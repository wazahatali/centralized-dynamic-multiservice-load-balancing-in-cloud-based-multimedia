using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.IO;
using BO;
using BALL;

public partial class _Default : System.Web.UI.Page
{
    Boclass bo_obj = new Boclass();
    Balclass bal_obj = new Balclass();
    static int CurrentPage;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            databind();
            lbl_user_sess.Text = Session["user"].ToString();
            Response.Write("<script>alert('" + Session["session_key"] + "')</script>");
        }

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Preview")
            {

                string Name;
                DataList1.SelectedIndex = e.Item.ItemIndex;
                Label lbl = (Label)DataList1.SelectedItem.FindControl("LblName");
                Name = lbl.Text;
                if (Name != string.Empty)
                {
                    Session["vdo_file"] = Name.ToString();
                    Session["user"] = lbl_user_sess.Text;
                    Response.Redirect("File_detail.aspx");
                }

            }
        }

        catch (Exception ex)
        {
            Response.Write("<script>alert('" + ex.Message + "')</script>");
        }
    }
    public void databind()
    {
        DirectoryInfo dir_file = new DirectoryInfo(MapPath("~/Cloud Server/Video"));
        FileInfo[] files = dir_file.GetFiles();
        ArrayList listItems = new ArrayList();
        foreach (FileInfo info in files)
        {
            listItems.Add(info);
        }
        PagedDataSource pd = new PagedDataSource();
        pd.AllowPaging = true;
        pd.DataSource = listItems;
        pd.PageSize = 9;
        pd.CurrentPageIndex = CurrentPage;
        btn_previous.Enabled = !pd.IsFirstPage;
        btn_next.Enabled = !pd.IsLastPage;
        DataList1.DataSource = pd;
        DataList1.DataBind();
    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        bool drop = bal_obj.destroy(bo_obj);
        Response.Redirect("Login.aspx");
    }
    protected void btn_previous_Click(object sender, EventArgs e)
    {
        try
        {
            CurrentPage -= 1;
            databind();
        }
        catch (Exception)
        {
        }
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        try
        {

            CurrentPage += 1;
            databind();
        }
        catch (Exception)
        {
        }
    }
}
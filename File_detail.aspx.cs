using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using BO;
using BALL;
using System.Net;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    Balclass ba_obj = new Balclass();
    Boclass bo = new Boclass();
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {

            databind_file();
            lbl_sess.Text = Session["user"].ToString();
            name = lbl_sess.Text;

        }

    }
    int set_count;
    protected void btn_downfile(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(11000);
        bo.S_key = txt_key.Text;
        //bool ck = ba_obj.verify_count(bo);
        if (set_count < 3)
        {
            bool c = ba_obj.verify_key(bo);
            if (c)
            {
                if (Session["img_file"] != null)
                {
                    string uname = Session["user"].ToString();
                    string key = Session["session_key"].ToString();
                    string Name = Session["img_file"].ToString();
                    string dow = Server.MapPath("~/Cloud Server/Picture/" + Name);
                    FileInfo fil = new FileInfo(dow);
                    //
                    set_count = set_count + 1;
                    Int64 f = fil.Length;
                    bo.Name = lbl_sess.Text;
                    bo.Ftotalsize = f;
                    bool i = ba_obj.update_info(bo);
                    DataTable dt = ba_obj.check(bo);
                    Int64 t1, t2;
                    t1 = Convert.ToInt64(dt.Rows[0][0]);
                    t2 = Convert.ToInt64(dt.Rows[0][1]);
                    if (t1 >= t2)
                    {
                        Response.Clear();
                        Response.AppendHeader("Content-Disposition", "attachment;filename=" + Name);
                        Response.TransmitFile(dow);
                        bo.Fname = uname;
                        bo.S_key = key;
                        bo.Flname = Name;
                        bo.Ftype = "Image";
                        bool b = ba_obj.down_userdet(bo);
                        bool str = ba_obj.store_count(bo);
                        Response.Flush();
                        Response.End();
                        Session["img_file"] = null;
                        txt_key.Text = "";
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Insufficient data')</script>", false);
                    }
                }
                else if (Session["mus_file"] != null)
                {
                    string uname = Session["user"].ToString();
                    string key = Session["session_key"].ToString();
                    string Name = Session["mus_file"].ToString();
                    string dow = Server.MapPath("~/Cloud Server/Songs/" + Name);
                    FileInfo fil = new FileInfo(dow);
                    set_count = set_count + 1;
                    Int64 f = fil.Length;
                    bo.Name = lbl_sess.Text;
                    bo.Ftotalsize = f;
                    bool i = ba_obj.update_info(bo);
                    DataTable dt = ba_obj.check(bo);
                    Int64 t1, t2;
                    t1 = Convert.ToInt64(dt.Rows[0][0]);
                    t2 = Convert.ToInt64(dt.Rows[0][1]);
                    if (t1 >= t2)
                    {
                        Response.Clear();
                        Response.AppendHeader("Content-Disposition", "attachment;filename=" + Name);
                        bo.Fname = uname;
                        bo.S_key = key;
                        bo.Flname = Name;
                        bo.Ftype = "Audio";
                        bool b = ba_obj.down_userdet(bo);
                        bool str = ba_obj.store_count(bo);
                        Response.TransmitFile(dow);
                        Response.Flush();
                        Response.End();
                        Session["mus_file"] = null;
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Insufficient data')</script>", false);
                    }
                }
                else if (Session["vdo_file"] != null)
                {
                    string uname = Session["user"].ToString();
                    string key = Session["session_key"].ToString();
                    string Name = Session["vdo_file"].ToString();
                    string dow = Server.MapPath("~/Cloud Server/Video/" + Name);
                    FileInfo fil = new FileInfo(dow);
                    set_count = set_count + 1;
                    Int64 f = fil.Length;
                    bo.Name = lbl_sess.Text;
                    bo.Ftotalsize = f;
                    bool i = ba_obj.update_info(bo);
                    DataTable dt = ba_obj.check(bo);
                    Int64 t1, t2;
                    t1 = Convert.ToInt64(dt.Rows[0][0]);
                    t2 = Convert.ToInt64(dt.Rows[0][1]);
                    if (t1 >= t2)
                    {
                        Response.Clear();
                        Response.AppendHeader("Content-Disposition", "attachment;filename=" + Name);
                        bo.Fname = uname;
                        bo.S_key = key;
                        bo.Flname = Name;
                        bo.Ftype = "Video";
                        bool b = ba_obj.down_userdet(bo);
                        bool str = ba_obj.store_count(bo);
                        Response.TransmitFile(dow);
                        Response.Flush();
                        Response.End();
                        Session["vdo_file"] = null;
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Insufficient data')</script>", false);
                    }
                }
                else
                {
                    Session.Clear();
                    Session.Abandon();
                    Response.Redirect("Login.aspx");
                }

            }


            else
            {
                Response.Write("<script>alert('Download failed')</script>");
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Please logout and try again')</script>", false);
        }
    }
    public void databind_file()
    {
        if (Session["img_file"] != null)
        {
            string Name = Session["img_file"].ToString();
            string dow = Server.MapPath("~/Cloud Server/Picture/" + Name);
            FileInfo fil = new FileInfo(dow);
            img_bind.ImageUrl = "~/Cloud Server/Picture/" + Name;
            lbl_name.Text = Name;
            lbl_size.Text = fil.Length.ToString() + " KB";

        }
        else if (Session["mus_file"] != null)
        {
            string Name = Session["mus_file"].ToString();
            string dow = Server.MapPath("~/Cloud Server/Songs/" + Name);
            FileInfo fil = new FileInfo(dow);
            img_bind.ImageUrl = "~/images/mus.png";
            lbl_name.Text = Name;
            lbl_size.Text = fil.Length.ToString() + "KB";
        }
        else if (Session["vdo_file"] != null)
        {
            string Name = Session["vdo_file"].ToString();
            string dow = Server.MapPath("~/Cloud Server/Video/" + Name);
            FileInfo fil = new FileInfo(dow);
            img_bind.ImageUrl = "~/images/Movie__icon.png";
            lbl_name.Text = Name;
            lbl_size.Text = fil.Length.ToString() + " KB";
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        bool drop = ba_obj.destroy(bo);
        Response.Redirect("Login.aspx");
    }


    protected void btn_prev(object sender, EventArgs e)
    {
        Session["img_file"] = null;
        Session["mus_file"] = null;
        Session["vdo_file"] = null;
        Session["user"] = lbl_sess.Text;
        Response.Redirect("Latest_Updates.aspx");
    }

}

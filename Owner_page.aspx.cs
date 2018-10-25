using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using BALL;
using BO;
using System.IO;
using System.Collections;
using System.Threading;
public partial class cloud_ower1 : System.Web.UI.Page
{
    Boclass ob1 = new Boclass();
    Balclass bj1 = new Balclass();
    string path = "";
    string cat = "";
    ArrayList al = new ArrayList();
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoServerCaching();
        HttpContext.Current.Response.Cache.SetNoStore();
        lbl_ses.Text = Session["cloud_owner"].ToString();


        if (IsPostBack)
        {

        }

    }
    public void databind()
    {
        lbl_img.Visible = true;
        lbl_vdo.Visible = true;
        lbl_ado.Visible = true;
        grdv_img.DataSource = bj1.preview();
        grdv_img.DataBind();
        grdv_mus.DataSource = bj1.musview();
        grdv_mus.DataBind();
        Grdv_vdo.DataSource = bj1.vdoview();
        Grdv_vdo.DataBind();
    }



    protected void btn_Upload_Click(object sender, EventArgs e)
    {
        string NAME = Path.GetFileName(fileupload_all.PostedFile.FileName);
        if (NAME != "")
        {
            if (drop1.SelectedValue == "jpg")
            {
                string ctype = "";
                NAME = Path.GetFileName(fileupload_all.PostedFile.FileName);
                ob1.Flname = NAME;
                string fext = Path.GetExtension(fileupload_all.PostedFile.FileName);
                ctype = fileupload_all.PostedFile.ContentType;
                ArrayList al = choosepath(fext);
                path = al[0].ToString();
                cat = al[1].ToString();
                if (path != "" && cat != "")
                {
                    string location = path + NAME.ToString();
                    int length = fileupload_all.PostedFile.ContentLength;
                    byte[] img1 = new byte[length];
                    HttpPostedFile image = fileupload_all.PostedFile;
                    image.InputStream.Read(img1, 0, length);
                    int imgsize = fileupload_all.PostedFile.ContentLength;
                    ob1.Flenght = imgsize;
                    ob1.Dir = location;
                    ob1.Ftype = fext;
                    bool ret = bj1.insert_ownimg(ob1);
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }

                    fileupload_all.SaveAs(location);
                    if (ret)
                    {

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Image Uploaded Successfully')</script>", false);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Try Again')</script>", false);
                    }


                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid Media file!!!')</script>", false);
                }
            }
            else if (drop1.SelectedValue == "Mp3")
            {
                string ctype = "";
                NAME = Path.GetFileName(fileupload_all.PostedFile.FileName);
                ob1.Flname = NAME;
                string fext = Path.GetExtension(fileupload_all.PostedFile.FileName);
                ctype = fileupload_all.PostedFile.ContentType;
                ArrayList al = choosepath(fext);
                path = al[0].ToString();
                cat = al[1].ToString();
                if (path != "" && cat != "")
                {
                    string location = path + NAME.ToString();
                    int length = fileupload_all.PostedFile.ContentLength;
                    byte[] img1 = new byte[length];
                    HttpPostedFile image = fileupload_all.PostedFile;
                    image.InputStream.Read(img1, 0, length);
                    int imgsize = fileupload_all.PostedFile.ContentLength;
                    ob1.Flenght = imgsize;
                    ob1.Dir = location;
                    ob1.Ftype = fext;
                    bool ret = bj1.mus_insert(ob1);
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }

                    fileupload_all.SaveAs(location);
                    if (ret)
                    {

                        ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Audio file Uploaded successfully')</script>", false);
                    }
                    else
                    {
                        Response.Write("<script>alert('Try again')</script>");
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid File')</script>", false);
                }
            }
            else if (drop1.SelectedValue == "Mp4")
            {
                string ctype = "";
                NAME = Path.GetFileName(fileupload_all.PostedFile.FileName);
                ob1.Flname = NAME;
                string fext = Path.GetExtension(fileupload_all.PostedFile.FileName);
                ctype = fileupload_all.PostedFile.ContentType;
                ArrayList al = choosepath(fext);
                path = al[0].ToString();
                cat = al[1].ToString();
                if (path != "" && cat != "")
                {
                string location = path + NAME.ToString();
                int length = fileupload_all.PostedFile.ContentLength;
                byte[] img1 = new byte[length];
                HttpPostedFile image = fileupload_all.PostedFile;
                image.InputStream.Read(img1, 0, length);
                int imgsize = fileupload_all.PostedFile.ContentLength;
                ob1.Flenght = imgsize;
                ob1.Dir = location;
                ob1.Ftype = fext;
                bool ret = bj1.vdo_insert(ob1);
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                fileupload_all.SaveAs(location);
                if (ret)
                {

                    Response.Write("<script>alert('video File Inserted successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Try again')</script>");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid Media file!!!')</script>", false);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid file!!!')</script>", false);
        }
    }}

    ArrayList choosepath(string fext)
    {
        if (fext == ".jpeg" || fext == ".png" || fext == ".gif" || fext == ".jpg")
        {
            path = Server.MapPath("~//Cloud Server//Picture//");
            cat = "Image";

        }
        else if (fext == ".mp3")
        {
            path = Server.MapPath("~//Cloud Server//Songs//");
            cat = "Audio";

        }
        else if (fext == ".mp4" || fext == ".3gp" || fext == ".wmv")
        {
            path = Server.MapPath("~//Cloud Server//Video//");
            cat = "Video";

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "validation", "<script language='javascript'>alert('Invalid file!!!')</script>", false);
        }
        al.Add(path);
        al.Add(cat);
        return al;
    }

    protected void btn_prv_click(object sender, EventArgs e)
    {

        //fileupload_all.Visible = false;
        //lbl_fname.Visible = false;
        //btn_Upload.Visible = false;
        //btn_prv.Visible = false;
        //drop1.Visible = false;
        //lbl_btn.Visible = false;
        //lbl_up.Visible = false;
        //lbl_view.Visible = false;
        //btn_det.Visible = false;
        //Button1.Visible = true;
        //grdv_img.Visible = true;
        //grdv_mus.Visible = true;
        //Grdv_vdo.Visible = true;

    }
    protected void grdv_image_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdv_img.Visible = true;


    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Owner_login.aspx");
    }
    protected void btn_det_Click(object sender, EventArgs e)
    {
        grdv_img.Visible = false;
        grdv_mus.Visible = false;
        Grdv_vdo.Visible = false;
        Grid_down_detail.Visible = true;
        Grid_down_detail.DataSource = bj1.view_userdet();
        Grid_down_detail.DataBind();
        Button1.Visible = true;
    }
    protected void reload(object sender, EventArgs e)
    {
        //fileupload_all.Visible = true;
        //lbl_fname.Visible = true;
        //btn_Upload.Visible = true;
        //btn_prv.Visible = true;
        //drop1.Visible = true;
        //lbl_btn.Visible = true;
        //lbl_up.Visible = true;
        //lbl_view.Visible = true;

        //Button1.Visible = false;
        //grdv_img.Visible = false;
        //grdv_mus.Visible = false;
        //Grdv_vdo.Visible = false;
        //Grid_down_detail.Visible = false;
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        view.ActiveViewIndex = 0;
    }
    protected void btn_view_Click(object sender, EventArgs e)
    {
        view.ActiveViewIndex = 1;
        databind();
    }
    protected void btn_user_det_Click(object sender, EventArgs e)
    {
        view.ActiveViewIndex = 2;
        Grid_down_detail.DataSource = bj1.view_userdet();
        Grid_down_detail.DataBind();
    }
}
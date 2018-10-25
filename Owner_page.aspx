<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true"
    CodeFile="Owner_page.aspx.cs" Inherits="cloud_ower1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h1 style="font-size: x-large; font-family: Vani;">
            Multimedia Service Zone!!</h1>
        <table>
            <tr>
                <td>
                    <asp:Button ID="btn_save" runat="server" CssClass="button" Text="File Upload" OnClick="btn_save_Click" />
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                    <asp:Button ID="btn_view" runat="server" CssClass="button" Text="View Files" OnClick="btn_view_Click" />
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                    <asp:Button ID="btn_user_det" runat="server" CssClass="button" Text="User Details"
                        OnClick="btn_user_det_Click" />
                </td>
            </tr>
        </table></center>
        <asp:MultiView ID="view" runat="server">
            <asp:View ID="View1" runat="server">
               <center>
               <br />
              
                    <table style="font-family: Vani; font-size: medium; font-family: Cambria;"
                        width="500px" cellpadding="2" cellspacing="10">
                        <tr>
                            <td>
                                <asp:Label ID="lbl_fname" runat="server" Text="Choose File :"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="drop1" runat="server">
                                    <asp:ListItem Selected="true">jpg</asp:ListItem>
                                    <asp:ListItem>Mp3</asp:ListItem>
                                    <asp:ListItem>Mp4</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:FileUpload ID="fileupload_all" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_up" runat="server" Text=" Upload the File"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="btn_Upload" runat="server" Text="Upload" OnClick="btn_Upload_Click" />
                            </td>
                        </tr>
                        
                    </table>
               </center>
            </asp:View> 
            <asp:View ID="Dview" runat="server">
   
    <br />
    <br />
    
        <h1 style="font-family: Vani; font-size: x-large; font-family: Cambria;">
            <asp:Label ID="lbl_img" runat="server" Text="Image Details"></asp:Label></h1>
        <asp:GridView ID="grdv_img" runat="server" AutoGenerateColumns="false" Width="800px"
            BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black"
            GridLines="Horizontal" OnSelectedIndexChanged="grdv_image_SelectedIndexChanged"
            Height="200px">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            <Columns>
                <asp:TemplateField HeaderText="FILE NAME">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_flname" runat="server" Width="70px" Text='<%# Eval("flname") %>'></asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FILE TYPE">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_Len" runat="server" Text='<%#Eval("fltype")%>'></asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
<%--                <asp:TemplateField HeaderText="FILE LOCATION">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_Len" runat="server" Text='<%#Eval("dir")%>'></asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
--%>                <asp:TemplateField HeaderText="FILE SIZE">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_FileType" runat="server" Text='<%#Eval("flen")%>'>
                            </asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Creation Date & Time">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_DateTime" runat="server" Text='<%#Eval("create_time")%>'>
                            </asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <h1 style="font-family: Vani; font-size: x-large; font-family: Cambria;">
            <asp:Label ID="lbl_ado" runat="server" Text="Audio Details"></asp:Label></h1>
        <asp:GridView ID="grdv_mus" runat="server" AutoGenerateColumns="false" Width="800px"
            BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black"
            GridLines="Horizontal" OnSelectedIndexChanged="grdv_image_SelectedIndexChanged"
            Height="100px">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            <Columns>
                <asp:TemplateField HeaderText="FILE NAME">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_flname" runat="server" Width="70px" Text='<%# Eval("mflname") %>'></asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FILE TYPE">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_fltype" runat="server" Height="70px" Width="70px" Text='<%# Eval("mfltype") %>' /></center>
                    </ItemTemplate>
                </asp:TemplateField>
<%--                <asp:TemplateField HeaderText="FILE LOCATION">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_Len" runat="server" Text='<%#Eval("mdir")%>'></asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
--%>                <asp:TemplateField HeaderText="FILE SIZE">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_FileType" runat="server" Text='<%#Eval("mflen")%>'>
                            </asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Creation Date & Time">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_DateTime" runat="server" Text='<%#Eval("mcreation_time")%>'>
                            </asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <h1 style="font-family: Vani; font-size: x-large; font-family: Cambria;">
            <asp:Label ID="lbl_vdo" runat="server" Text="Video Details"></asp:Label></h1>
        <asp:GridView ID="Grdv_vdo" runat="server" AutoGenerateColumns="false" Width="800px"
            BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black"
            GridLines="Horizontal" OnSelectedIndexChanged="grdv_image_SelectedIndexChanged"
            Height="100px">
            <HeaderStyle BackColor="AliceBlue" Font-Bold="true" />
            <HeaderStyle BackColor="AliceBlue" Font-Bold="true" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
            <Columns>
                <asp:TemplateField HeaderText="FILE NAME">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_flname" runat="server" Width="70px" Text='<%# Eval("vflname") %>'></asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="FILE TYPE">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_fltype" runat="server" Height="70px" Width="70px" Text='<%# Eval("vfltype") %>' /></center>
                    </ItemTemplate>
                </asp:TemplateField>
<%--                <asp:TemplateField HeaderText="FILE LOCATION">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_Len" runat="server" Text='<%#Eval("vdir")%>'></asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
--%>                <asp:TemplateField HeaderText="FILE SIZE">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_FileType" runat="server" Text='<%#Eval("vflen")%>'>
                            </asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Creation Date & Time">
                    <ItemTemplate>
                        <center>
                            <asp:Label ID="lbl_DateTime" runat="server" Text='<%#Eval("vcreation_time")%>'>
                            </asp:Label></center>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </asp:View>
        <asp:View ID="Eview" runat="server">
            <br />
            <h1 style="font-family: Vani; font-size: x-large; font-family: Cambria; float: left;">
                <asp:Label ID="lbl_btn" runat="server" Text="User Downloaded File Details"></asp:Label></h1>
            <br />
            
            <asp:GridView ID="Grid_down_detail" runat="server" AutoGenerateColumns="false" Width="800px"
                BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black"
                GridLines="Horizontal" Height="100px">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                <Columns>
                    <asp:TemplateField HeaderText="USER NAME">
                        <ItemTemplate>
                            <center>
                                <asp:Label ID="lbl_name" runat="server" Width="70px" Text='<%# Eval("us_name") %>'></asp:Label></center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="KEY">
                        <ItemTemplate>
                            <center>
                                <asp:Label ID="lbl_KEY" runat="server" Width="70px" Text='<%# Eval("us_ses_key") %>'></asp:Label></center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FILE NAME">
                        <ItemTemplate>
                            <center>
                                <asp:Label ID="lbl_file" runat="server" Height="70px" Width="70px" Text='<%# Eval("file_name") %>' /></center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="FILE TYPE">
                        <ItemTemplate>
                            <center>
                                <asp:Label ID="lbl_type" runat="server" Text='<%#Eval("file_type")%>'></asp:Label></center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DOWNLOADED TIME">
                        <ItemTemplate>
                            <center>
                                <asp:Label ID="lbl_downTime" runat="server" Text='<%#Eval("downtime")%>'>
                                </asp:Label></center>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Reset" OnClick="reload" />
    
    </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <h4 style="float: right">
        Welcome
        <asp:Label ID="lbl_ses" runat="server"></asp:Label>
        !!
        <asp:LinkButton ID="lnk_signout" runat="server" OnClick="btn_logout_Click">Signout</asp:LinkButton>
    </h4>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true"
    CodeFile="File_detail.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h4 style="float: right">
        Hi
        <asp:Label ID="lbl_sess" runat="server"></asp:Label>
        !!
        <asp:LinkButton ID="lnk_signout" runat="server" OnClick="btn_logout_Click">Signout</asp:LinkButton>
    </h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" language="javascript">
        function aler() {
            alert('Your download in Progress, please wait...');
            return (true);
        }
    </script>
    <center>
        <table>
            <tr>
                <td>
                
                    <asp:Image ID="img_bind" runat="server" Width="300px" />
                </td>
            </tr>
            <tr>
                <td style="font-size: medium; font-family: Vani;">
                    File Name:
                    <asp:Label ID="lbl_name" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: medium; font-family: Vani;">
                    File Size:
                    <asp:Label ID="lbl_size" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: medium; font-family: Vani;">
                    Enter the Key
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txt_key" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Download" OnClientClick="return aler();"
                            OnClick="btn_downfile" />
                    </center>
                </td>
            </tr>
        </table>
    </center>
    <asp:Button ID="btn_pre" runat="server" Text="Back" OnClick="btn_prev" />
</asp:Content>

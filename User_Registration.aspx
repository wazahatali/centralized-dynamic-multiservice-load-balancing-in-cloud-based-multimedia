<%@ Page Title="" Language="C#" MasterPageFile="~/Authentication.master" AutoEventWireup="true" CodeFile="User_Registration.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="font-family:Vani;font-size:x-large;font-family:Cambria;">New User Register Here</h1>
    <br />
     
    
        <table style="width:550px; font-family:Vani;font-size:medium;font-family:Cambria;float:left;" 
        cellspacing="15">
        <tr>
            <td>
                <asp:Label ID="lbl_fname" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_lname" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_pwd" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 170px">
                <asp:TextBox ID="txt_pd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_cpwd" runat="server" Text="Confirmation Password"></asp:Label>
            </td>
            <td style="width: 170px">
                <asp:TextBox ID="txt_cpd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:Label ID="lbl_mail" runat="server" Text="Mail_ID"></asp:Label>
            </td>
            <td style="height: 22px; width: 170px;">
                <asp:TextBox ID="txt_mail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_DOB" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td style="width: 170px">
                <cc1:ToolkitScriptManager ID="AjaxToolKitManager" runat="server">
                </cc1:ToolkitScriptManager>
                <asp:TextBox ID="txt_dob" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pic/cal.jpg" Width="30px" />
                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="ImageButton1"
                    TargetControlID="txt_dob">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 170px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="Male" Value="male"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
            >
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_mob" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td style="width: 170px">
                <asp:TextBox ID="txt_mob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 170px">
                <asp:ImageButton ID="btn_reg" runat="server" Text="Register" OnClick="btn_reg_Click"
                    ImageUrl="~/pic/reg.jpg" Width="125px" />
            </td>
        </tr>
        <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Member Login Here</asp:HyperLink>
        </td></tr>
    </table>
    
</asp:Content>


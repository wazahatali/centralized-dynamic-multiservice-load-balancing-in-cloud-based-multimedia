<%@ Page Title="" Language="C#" MasterPageFile="~/Authentication.master" AutoEventWireup="true" CodeFile="Select_package.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h1>Choose/Update the Package</h1>
<div style="border-style: ridge; border-width: thin; background-color: #808080; font-family: Calibri; font-size: medium; width: 400px; height: 100px;">
<table>
<tr>
<td>
    <asp:Label ID="Label1" runat="server" Text="Package"></asp:Label>
</td><td></td><td>
    <asp:DropDownList ID="drp_pkglist" runat="server" 
        onselectedindexchanged="drp_pkglist_SelectedIndexChanged" AutoPostBack="true">
    <asp:ListItem>1MB</asp:ListItem>
    <asp:ListItem>5MB</asp:ListItem>
    <asp:ListItem>10MB</asp:ListItem>
    <asp:ListItem>100MB</asp:ListItem>
    <asp:ListItem>1000MB</asp:ListItem>
    </asp:DropDownList>
</td>
</tr><tr><td></td></tr>
<tr><td>
 <asp:Label ID="Label2" runat="server" Text="Cost"></asp:Label>
</td><td></td><td>
    <asp:TextBox ID="txt_cost" runat="server"></asp:TextBox></td></tr>
</table><br /><asp:Button ID="Button1" runat="server" Text="Pay" 
        onclick="Button1_Click" /></div>

        
</center>
</asp:Content>


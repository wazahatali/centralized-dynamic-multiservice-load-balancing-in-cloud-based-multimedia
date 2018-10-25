<%@ Page Title="" Language="C#" MasterPageFile="~/Authentication.master" AutoEventWireup="true" CodeFile="Owner_register.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h1 style="font-family:Vani;font-size:x-large;font-family:Cambria;">New User Register Here</h1>
  <br />
 <table style="width:550px; font-family:Vani;font-size:medium;font-family:Cambria;float:left;" 
        cellspacing="15">
<tr>
<td style="width: 92px">
    <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label>
</td>
<td class="but" style="width: 139px">
    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td></tr>
<tr>
<td style="width: 92px">
    <asp:Label ID="lbl_pswd" runat="server" Text="Password"></asp:Label>
</td><td class="but" style="width: 139px"><asp:TextBox ID="txt_pswd" runat="server" TextMode="Password"></asp:TextBox></td></tr>
<tr>
<td style="width: 92px">
    <asp:Label ID="lbl_cpswd" runat="server" Text="Confirmation Password"></asp:Label>
    </td><td class="but" style="width: 139px"><asp:TextBox ID="txt_cpswd" runat="server" 
            TextMode="Password"></asp:TextBox></td></tr>
<tr>
<td style="width: 92px">
    <asp:Label ID="lbl_mailid" runat="server" Text="Mail_ID"></asp:Label>
</td>
<td class="but" style="width: 139px"><asp:TextBox ID="txt_mailid" runat="server"></asp:TextBox></td></tr>
    <tr>
    <td style="width: 92px">
    <asp:Label ID="lbl_gender1" runat="server" Text="Gender1"></asp:Label></td>
    <td class="but" style="width: 139px">
        <asp:RadioButtonList ID="rbtn_gen1" runat="server">
        <asp:ListItem Text="Male" Value="male"></asp:ListItem>
        <asp:ListItem Text="Female" Value="female"></asp:ListItem>
        </asp:RadioButtonList>
    </td>>
    </tr>
    <tr>
    <td style="width: 92px">
    <asp:Label ID="lbl_mobno" runat="server" Text="Mobile No"></asp:Label>
    </td>
    <td class="but" style="width: 139px">
    <asp:TextBox ID="txt_mobno" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td style="width: 92px" >
    <asp:Label ID="lbl_store" runat="server" Text="Storage Option"></asp:Label></td>
    <td class="but" style="width: 139px">
      <asp:RadioButtonList ID="rdbtn_store" runat="server">
        <asp:ListItem Text="Free Usage(25GB)" Value="Free Usage"></asp:ListItem>
        <asp:ListItem Text="Premium Usage(Upto 100GB)" Value="Premium"></asp:ListItem> </asp:RadioButtonList>
        </td>
    </tr>
   <tr>
   <td style="width: 92px"></td>
   <td class="but" style="width: 139px"> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="btn_reg" runat="server" ImageUrl="~/pic/reg.jpg" 
        onclick="btn_ownreg_Click" Width="100px" />
       </td></tr></table>
</asp:Content>


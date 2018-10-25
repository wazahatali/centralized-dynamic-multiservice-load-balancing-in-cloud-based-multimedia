<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true"
    CodeFile="Image_Galary.aspx.cs" Inherits="multimedia" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table>
        <tr>
            <td style="border-style: outset">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellPadding="1" Width="905px"
                    Style="text-align: center;" OnItemCommand="DataList1_ItemCommand1" BorderColor="#006600"
                    OnSelectedIndexChanged="DataList1_SelectedIndexChanged" HorizontalAlign="Center">
                    <ItemTemplate>
                        <div class="box_img2">
                            <div class="priview">
                            <h3></h3>
                    <h4></h4>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Bind("Name", "~/Cloud Server/Picture/{0}") %>'
                                    Width="125px" Height="125px" ImageAlign="Middle" />
                                <br />
                                <asp:Label ID="LblName" runat="server" Text='<%# Eval("Name", "{0}") %>'></asp:Label>
                            </div>
                            <br />
                            <asp:Button ID="btn_download" runat="server" CommandName="Preview" Text="Preview" />
                        </div>
                    </ItemTemplate>
                    <ItemStyle BorderColor=" #ffffff" BorderStyle="dotted" BorderWidth="1px" HorizontalAlign="Center"
                        VerticalAlign="Middle" Height="150px" Width="150px" />
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_previous" runat="server" Text="Previous" OnClick="btn_previous_Click" />
                <asp:Button ID="btn_next" runat="server" Text="Next" OnClick="btn_next_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <h4 style="float: right">
        Welcome
        <asp:Label ID="lbl_user_sess" runat="server"></asp:Label>!!
        <asp:LinkButton ID="lnk_signout" runat="server" OnClick="btn_logout_Click">Signout</asp:LinkButton></h4>
</asp:Content>

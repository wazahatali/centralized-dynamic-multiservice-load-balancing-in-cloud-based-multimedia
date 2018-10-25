<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:DataList ID="Dtlst_img" runat="server" RepeatColumns="3" CellPadding="1" Width="905px"
            Style="text-align: center;" BorderColor="#006600" HorizontalAlign="Center">
            <ItemTemplate>
            <asp:Image ID="Image1" runat="server" ImageAlign="Middle" ImageUrl='<%# imgs(Eval("img")) %>' Height="150px" Width="200px" CssClass="box_img2"  />
             <br />
                            <asp:Button ID="btn_download" runat="server" CommandName="Preview" Text="Preview" />
        </ItemTemplate>
            <ItemStyle BorderColor=" #ffffff" BorderStyle="dotted" BorderWidth="1px" HorizontalAlign="Center"
                VerticalAlign="Middle" Height="150px" Width="150px" />
        </asp:DataList>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true"
    CodeFile="Galary.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 style="font-size: x-large; font-family: Vani;">
        Welcome to Cloud Multimedia Galary Page!!<br />
    </h1>
    <br />
    <br />
    <asp:ScriptManager ID="ScriptManager1" EnablePageMethods = "true" runat="server">
    </asp:ScriptManager>
    <center>
        <h3>
            Search Image</h3>
        <br />
        <asp:TextBox ID="txt_search" runat="server" Width="160"></asp:TextBox>
        <cc1:AutoCompleteExtender ServiceMethod="SearchImage" MinimumPrefixLength="2" CompletionInterval="100"
            EnableCaching="false" CompletionSetCount="10" TargetControlID="txt_search" ID="AutoCompleteExtender1"
            runat="server" FirstRowSelected="false">
        </cc1:AutoCompleteExtender>
        <br />
        <br />
        <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click" />
        <br />
        <br />
    </center>
    <div>
        <h1 style="text-align: center">
            Image Zone</h1>
        <br />
        <asp:DataList ID="Dtlst_img" runat="server" RepeatColumns="3" CellPadding="1" Width="905px"
            Style="text-align: center;" BorderColor="#006600" HorizontalAlign="Center">
            <ItemTemplate>
                <div class="box_img2">
                    <div class="priview">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Bind("Name", "~/Cloud Server/Picture/{0}") %>'
                            Width="150px" Height="155px" ImageAlign="Middle" />
                        <br />
                        <asp:Label ID="LblName" runat="server" Text='<%# Eval("Name", "{0}") %>'></asp:Label>
                    </div>
                    <br />
                </div>
            </ItemTemplate>
            <ItemStyle BorderColor=" #ffffff" BorderStyle="dotted" BorderWidth="1px" HorizontalAlign="Center"
                VerticalAlign="Middle" Height="150px" Width="150px" />
        </asp:DataList>
    </div>
    <br />
    <h1>
    </h1>
    <h2 style="text-align: center">
        Audio Zone</h2>
    <br />
    <asp:DataList ID="Dtlst_mus" runat="server" RepeatColumns="3" CellPadding="1" Width="905px"
        Style="text-align: center;" BorderColor="#006600" HorizontalAlign="Center">
        <ItemTemplate>
            <div class="box_img2">
                <div class="priview">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Bind("Name", "~/pic/music1.jpg") %>'
                        Width="150px" Height="155px" ImageAlign="Middle" />
                    <br />
                    <asp:Label ID="LblName" runat="server" Text='<%# Eval("Name", "{0}") %>'></asp:Label>
                </div>
                <br />
            </div>
        </ItemTemplate>
        <ItemStyle BorderColor=" #ffffff" BorderStyle="dotted" BorderWidth="1px" HorizontalAlign="Center"
            VerticalAlign="Middle" Height="150px" Width="150px" />
    </asp:DataList>
    <br />
    <h1>
    </h1>
    <h2 style="text-align: center">
        Video Zone</h2>
    <br />
    <asp:DataList ID="Dtlst_vdo" runat="server" RepeatColumns="3" CellPadding="1" Width="905px"
        Style="text-align: center;" BorderColor="#006600" HorizontalAlign="Center">
        <ItemTemplate>
            <div class="box_img2">
                <div class="priview">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Bind("Name", "~/images/Movie__icon.png") %>'
                        Width="150px" Height="155px" ImageAlign="Middle" />
                    <br />
                    <asp:Label ID="LblName" runat="server" Text='<%# Eval("Name", "{0}") %>'></asp:Label>
                </div>
                <br />
            </div>
        </ItemTemplate>
        <ItemStyle BorderColor=" #ffffff" BorderStyle="dotted" BorderWidth="1px" HorizontalAlign="Center"
            VerticalAlign="Middle" Height="150px" Width="150px" />
    </asp:DataList>
</asp:Content>

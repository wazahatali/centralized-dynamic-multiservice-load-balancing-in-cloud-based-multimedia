<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true"
    CodeFile="Latest_Updates.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h4 style="float: right">
        Hi
        <asp:Label ID="lbl_user_sess" runat="server"></asp:Label>!!
        <asp:LinkButton ID="lnk_signout" runat="server" OnClick="btn_logout_Click">Signout</asp:LinkButton></h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1 style="font-size: x-large; font-family: Vani;">
        Hi&nbsp;&nbsp;<asp:Label ID="lbl_sess" runat="server"></asp:Label>
        !!&nbsp; Welcome to Cloud Multimedia Galary Page!!<br />
    </h1>
    
    <div>
        <h1 style="text-align: center">
            Image Zone</h1>
        <br />
        <asp:DataList ID="Dtlst_img" runat="server" RepeatColumns="3" CellPadding="1" Width="905px"
            Style="text-align: center;" BorderColor="#006600" HorizontalAlign="Center">
            <ItemTemplate>
                <div class="box_img2">
                    <div class="priview">
                     <h3></h3>
                    <h4></h4>
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
        <h3 style="float: right; font-size: small">
            <asp:Button ID="Button2" runat="server" Text="View more" OnClick="click3" /></h3>
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
                 <h3></h3>
                <h4></h4>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#  Bind("Name", "~/images/mus.png") %>'
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
     <h3 style="float: right; font-size: small">
        <asp:Button ID="Button1" runat="server" Text="View more" OnClick="click2" /></h3>
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
                <h3></h3>
                 <h4></h4>
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
    <h3 style="float: right; font-size: small">
        <asp:Button ID="Button3" runat="server" Text="View more" OnClick="click" /></h3>
    <br />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Authentication.master" AutoEventWireup="true" CodeFile="Owner_login.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h1 style="font-family:Vani;font-size:x-large;font-family:Cambria;">Login</h1>
    <br />
     
    
        <table style="width:550px; font-family:Vani;font-size:medium;font-family:Cambria;float:left;" 
        cellspacing="15">
        
            <tr>
                <td class="style8">
                    <asp:Label ID="lbl_user" runat="server" Text="User Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                        ControlToValidate="txt_user" ValidationGroup="l" ></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_pwd" runat="server" Text="Password"  ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="*" ControlToValidate="txt_pwd" ValidationGroup="l"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <center>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ScriptManager ID="ScriptManager2" runat="server" />
                        <script type="text/javascript">
                            var prm = Sys.WebForms.PageRequestManager.getInstance();
                            //Raised before processing of an asynchronous postback starts and the postback request is sent to the server.
                            prm.add_beginRequest(BeginRequestHandler);
                            // Raised after an asynchronous postback is finished and control has been returned to the browser.
                            prm.add_endRequest(EndRequestHandler);
                            function BeginRequestHandler(sender, args) {
                                //Shows the modal popup - the update progress
                                var popup = $find('<%= modalPopup.ClientID %>');
                                if (popup != null) {
                                    popup.show();
                                }
                            }

                            function EndRequestHandler(sender, args) {
                                //Hide the modal popup - the update progress
                                var popup = $find('<%= modalPopup.ClientID %>');
                                if (popup != null) {
                                    popup.hide();
                                }
                            }
                        </script></center></td></tr>
                        <tr><td></td>
                        <td>
                        <center><asp:UpdateProgress ID="UpdateProgress" runat="server">
                            <ProgressTemplate>
                                <asp:Image ID="Image1" ImageUrl="~/Scrnshot/466.GIF" AlternateText="Processing" runat="server" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <cc1:ModalPopupExtender ID="modalPopup" runat="server" TargetControlID="UpdateProgress" PopupControlID="UpdateProgress" BackgroundCssClass="modalPopup">
                        </cc1:ModalPopupExtender>
                        <asp:UpdatePanel ID="pnlData" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:Button ID="btnSubmit" runat="server" Text="Signin" OnClick="btn_signin_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel></center>
   
    New User&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Owner_Register.aspx">Signup here</asp:HyperLink></td></tr>
    </table> 
</asp:Content>


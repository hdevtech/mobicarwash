<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="WebForm18.aspx.cs" Inherits="MobiWebApplication.WebForm18" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 695px;
        }
        .style4
        {
            width: 695px;
            height: 18px;
        }
        .style5
        {
            height: 18px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            width: 100%;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style2">
        <tr>
            <td class="style4">
            </td>
            <td class="style5">
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Panel ID="Panel1" runat="server" CssClass="PanelHomeLogin">
                    <table class="style2">
                        <tr>
                            <td class="style6" colspan="2" style="text-align: center">
                                <b>DAILY SERVED&nbsp; VEHICLES</b><asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Panel ID="Panel2" runat="server" CssClass="PanelLogin">
                                    <table class="style7">
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="GridView1" runat="server" ShowFooter="True">
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataDETAILS" runat="server"></asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

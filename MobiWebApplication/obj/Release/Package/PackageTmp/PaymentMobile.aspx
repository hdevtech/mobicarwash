<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="PaymentMobile.aspx.cs" Inherits="MobiWebApplication.WebForm44" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
            height: 162px;
            margin-left: 0px;
            border-radius:16px;
        }
        .auto-style5
        {
            width: 82px;
        }
        .auto-style7
        {
            width: 7px;
        }
        .auto-style9
        {
            text-align: left;
        }
        .auto-style10
        {
            width: 515px;
            text-align:center;


        }
        .auto-style31
        {
            width: 7px;
            height: 90px;
        }
        .auto-style32
        {
            width: 124px;
            text-align: left;
            height: 90px;
        }
        .auto-style33
        {
            width: 515px;
            text-align: center;
            height: 90px;
        }
        .auto-style34
        {
            height: 90px;
        }
        .auto-style35
        {
            width: 7px;
            height: 92px;
        }
        .auto-style36
        {
            width: 124px;
            text-align: left;
            height: 92px;
        }
        .auto-style37
        {
            width: 515px;
            text-align: center;
            height: 92px;
        }
        .auto-style38
        {
            height: 92px;
        }
        .auto-style39
        {
            width: 7px;
            height: 39px;
        }
        .auto-style40
        {
            width: 124px;
            text-align: left;
            height: 39px;
        }
        .auto-style41
        {
            width: 515px;
            text-align: center;
            height: 39px;
        }
        .auto-style42
        {
            height: 39px;
        }
        .auto-style46
        {
            width: 208px;
        }
        .auto-style48
        {
            width: 613px;
        }
        .auto-style49
        {
            width: 82px;
            height: 728px;
        }
        .auto-style50
        {
            width: 755px;
            height: 728px;
        }
        .auto-style51
        {
            height: 728px;
        }
        .auto-style52
        {
            width: 755px;
        }
        .auto-style53
        {
            width: 7px;
            height: 22px;
        }
        .auto-style54
        {
            width: 124px;
            text-align: left;
            height: 22px;
        }
        .auto-style55
        {
            width: 515px;
            text-align: center;
            height: 22px;
        }
        .auto-style56
        {
            height: 22px;
        }
        .auto-style57
        {
            width: 82px;
            height: 783px;
        }
        .auto-style58
        {
            width: 755px;
            height: 783px;
        }
        .auto-style59
        {
            height: 783px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#006666" CssClass="Panel1Registration" Height="3781px" Width="896px">
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style57"></td>
                <td class="auto-style58">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#33CCCC" CssClass="Panel1Registration" Height="668px" Width="841px">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style39"></td>
                                <td class="auto-style40" style="color:#6600CC"></td>
                                <td class="auto-style41">
                                    <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style42"></td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style32" style="color:#6600CC">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" style="font-size: x-large" Text="Plate No:" Font-Size="X-Large"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="TextBox10" runat="server" align="center" BorderStyle="None" CssClass="input1" ForeColor="Navy" Height="75px"  Width="629px" OnTextChanged="TextBox10_TextChanged" Font-Bold="True" Font-Size="X-Large" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style34"></td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style32" style="color:#6600CC">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" style="font-size: x-large" Text="Service:"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="TextBox15" runat="server" BorderStyle="None" CssClass="input1" Font-Size="X-Large" ForeColor="Navy" Height="75px" Width="629px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style34"></td>
                            </tr>
                            <tr>
                                <td class="auto-style35"></td>
                                <td class="auto-style36" style="color:#6600CC">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" style="font-size: x-large" Text="Price:"></asp:Label>
                                </td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="TextBox16" runat="server" BorderStyle="None" CssClass="input1" Font-Size="X-Large" ForeColor="Navy" Height="75px" Width="629px" ReadOnly="True"></asp:TextBox>
                                </td>
                                <td class="auto-style38"></td>
                            </tr>
                            <tr>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style36" style="color:#6600CC">
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" style="font-size: x-large" Text="Paid:"></asp:Label>
                                </td>
                                <td class="auto-style37">
                                    <asp:TextBox ID="TextBox17" runat="server" BorderStyle="None" CssClass="input1" Font-Size="X-Large" ForeColor="Navy" Height="75px" Width="629px"></asp:TextBox>
                                </td>
                                <td class="auto-style38">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style53"></td>
                                <td class="auto-style54" style="color:#6600CC"></td>
                                <td class="auto-style55"></td>
                                <td class="auto-style56"></td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style9" colspan="3" style="color:#6600CC">
                                    <table bgcolor="#009999" class="auto-style4">
                                        <tr>
                                            <td class="auto-style46">&nbsp;</td>
                                            <td class="auto-style48">&nbsp;</td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                            <td class="auto-style48">
                                                <asp:Panel ID="Panel3" runat="server">
                                                    <table class="auto-style4">
                                                        <tr>
                                                            <td>
                                                                <asp:TextBox ID="TextBox13" runat="server" BorderColor="Lime" BorderStyle="None" CssClass="inputSearch" Height="75px" placeholder="      Search ...  " Width="156px" Font-Size="X-Large"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button12" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="75px" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" style="font-size: x-large" Text="Search" Width="149px" OnClick="Button12_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button14" runat="server" BorderStyle="None" Font-Names="Times New Roman" Height="75px" style="font-size: x-large" Text="Service" Width="169px" OnClick="Button14_Click" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <asp:Button ID="Button13" runat="server" BackColor="Orange" BorderStyle="None" CssClass="buton" Font-Bold="True" Font-Names="Times New Roman" Height="75px" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='#4CAF50'" style="font-size: x-large" Text="Save" Width="540px" OnClick="Button13_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                <asp:TextBox ID="TextBox14" runat="server" Visible="False" Width="101px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style46">&nbsp;</td>
                                            <td class="auto-style48">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style9" style="color:#6600CC">&nbsp;</td>
                                <td class="auto-style10">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="OperationDay" DataValueField="OperationDay" Height="41px" Width="253px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idSales], [OperationDay] FROM [StartDaily] ORDER BY [idSales] DESC"></asp:SqlDataSource>
                    </asp:Panel>
                </td>
                <td class="auto-style59"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">
                    <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">
                    <asp:GridView ID="gvInformation" runat="server" CellPadding="8" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="878px" OnRowDataBound="gvInformation_RowDataBound" ShowFooter="True" style="font-size: medium">
                         <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                       <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                         <Columns>
            <asp:TemplateField>
                 <ItemTemplate>
                 <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idRecord")%>' OnClick="lnk_OnClick">Payment</asp:LinkButton> </ItemTemplate>
                 <ControlStyle ForeColor="Orange" />
                 <ItemStyle ForeColor="White" />
            </asp:TemplateField>            
            </Columns>   
                    </asp:GridView>
                </td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">
                    &nbsp;</td>
                <td>
                   
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style50">
                    &nbsp;</td>
                <td class="auto-style51"></td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style50"></td>
                <td class="auto-style51">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">
                   
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


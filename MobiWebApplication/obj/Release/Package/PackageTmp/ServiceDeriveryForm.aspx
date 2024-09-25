<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ServiceDeriveryForm.aspx.cs" Inherits="MobiWebApplication.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 81%;
            height: 344px;
            margin-right: 0px;
        }
        .auto-style5
        {
            height: 57px;
            width: 1px;
        }
        .auto-style10
        {
            height: 57px;
            width: 256px;
        }
        .auto-style11
        {
        }
        .auto-style25
        {
            width: 11px;
            height: 50px;
        }
        .auto-style26
        {
            width: 226px;
            height: 50px;
        }
        .auto-style27
        {
            width: 626px;
            height: 50px;
        }
        .auto-style43
        {
            width: 11px;
            height: 52px;
        }
        .auto-style44
        {
            width: 226px;
            height: 52px;
        }
        .auto-style45
        {
            width: 626px;
            height: 52px;
        }
        .auto-style55
        {
            height: 57px;
            }
        .auto-style60
        {
            width: 11px;
            height: 51px;
        }
        .auto-style61
        {
            width: 226px;
            height: 51px;
        }
        .auto-style62
        {
            width: 626px;
            height: 51px;
        }
        .auto-style68
        {
            width: 11px;
            height: 12px;
        }
        .auto-style69
        {
            width: 226px;
            height: 12px;
        }
        .auto-style70
        {
            width: 626px;
            height: 12px;
        }
        .auto-style75
        {
            width: 100%;
            height: 70px;
        }
        .auto-style81
        {
            width: 14px;
            height: 60px;
        }
        .auto-style82
        {
            width: 617px;
            height: 60px;
        }
        .auto-style83
        {
            height: 106px;
        }
        .auto-style85
        {
            width: 256px;
        }
        .auto-style88
        {
            width: 307px;
        }
        .auto-style89
        {
            width: 103%;
            height: 200px;
        }
        .auto-style90
        {
            width: 5px;
            height: 19px;
        }
        .auto-style91
        {
            width: 433px;
            height: 19px;
        }
        .auto-style95
        {
            width: 5px;
            height: 147px;
        }
        .auto-style96
        {
            width: 433px;
            height: 147px;
        }
        .auto-style98
        {
            height: 54px;
        }
        .auto-style99
        {
            width: 5px;
            height: 14px;
        }
        .auto-style100
        {
            width: 433px;
            height: 14px;
        }
        .auto-style108
        {
            height: 60px;
            width: 9px;
        }
        .auto-style111
        {
            width: 1px;
        }
        .auto-style115
        {
            height: 46px;
        }
        .auto-style124
        {
            width: 100%;
            height: 64px;
        }
        .auto-style125
        {
            width: 213px;
            height: 49px;
        }
        .auto-style129
        {
            width: 14px;
            height: 18px;
        }
        .auto-style130
        {
            width: 617px;
            height: 18px;
        }
        .auto-style131
        {
            width: 9px;
            height: 18px;
        }
        .auto-style132
        {
            height: 49px;
        }
        .auto-style133
        {
            width: 14px;
            height: 5px;
        }
        .auto-style134
        {
            width: 617px;
            height: 5px;
        }
        .auto-style135
        {
            width: 9px;
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="auto-style4">
        <tr>
            <td class="auto-style10" rowspan="2">
                <asp:Panel ID="Panel1" runat="server" BackColor="#33CCCC" Height="344px" Width="415px" CssClass="Panel1Registration">
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style68"></td>
                            <td class="auto-style69" style="color:white">
                            </td>
                            <td class="auto-style70">
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style60"></td>
                            <td class="auto-style61" style="color:#6600CC">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Plate No:"></asp:Label>
                            </td>
                            <td class="auto-style62">
                                <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None" ForeColor="Navy" CssClass="input" Height="41px" placeholder="Display Plate No" ReadOnly="True" Width="319px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25"></td>
                            <td class="auto-style26" style="color:#6600CC">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Type:"></asp:Label>
                            </td>
                            <td class="auto-style27">
                                <asp:TextBox ID="TextBox11" runat="server" BorderStyle="None" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Display Vehicle Type" Width="319px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25"></td>
                            <td class="auto-style26" style="color:#6600CC">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Category:"></asp:Label>
                            </td>
                            <td class="auto-style27">
                                <asp:TextBox ID="TextBox12" runat="server" BorderStyle="None" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Display Vehicle Category" Width="319px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style60"></td>
                            <td class="auto-style61" style="color:#6600CC">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Service"></asp:Label>
                            </td>
                            <td class="auto-style62">
                                <asp:DropDownList ID="DropDownList7" runat="server" Height="41px" ForeColor="Navy" Width="319px" CssClass="combobox" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25"></td>
                            <td class="auto-style26" style="color:#6600CC">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Washman"></asp:Label>
                            </td>
                            <td class="auto-style27">
                                <asp:DropDownList ID="DropDownList8" runat="server" ForeColor="Navy" Height="41px" Width="319px" CssClass="combobox">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style43"></td>
                            <td class="auto-style44" style="color:#6600CC">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Payment"></asp:Label>
                            </td>
                            <td class="auto-style45">
                                <asp:DropDownList ID="DropDownList9" runat="server" Height="41px" ForeColor="Navy" Width="319px" CssClass="combobox" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style98" colspan="2">
                <asp:GridView ID="gvInformation1" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="450px" style="font-size: small">
                    <AlternatingRowStyle BackColor="#99FF66" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#99FF66" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                </asp:GridView>
            </td>
            <td class="auto-style5" rowspan="2"></td>
        </tr>
        <tr>
            <td class="auto-style55" colspan="2">
                <table bgcolor="#33CCCC" class="auto-style89">
                    <tr>
                        <td class="auto-style99"></td>
                        <td class="auto-style100"></td>
                    </tr>
                    <tr>
                        <td class="auto-style95"></td>
                        <td class="auto-style96">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="80px" Width="437px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="idRecord" HeaderText="idRecord" SortExpression="idRecord" />
                                    <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />                                    
                                    <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                    <asp:BoundField DataField="dateRecorded" HeaderText="date" SortExpression="dateRecorded" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top 9  [idRecord], [PlateNumber], [NameService], [dateRecorded] FROM [WebDetailsDataView1] ORDER BY [idRecord] DESC"></asp:SqlDataSource>
                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style90"></td>
                        <td class="auto-style91"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style83" colspan="4">
                <asp:Panel ID="Panel2" runat="server" Height="334px" Width="928px" BackColor="#006666">
                    <table class="auto-style75">
                        <tr>
                            <td class="auto-style115" bgcolor="#006666" colspan="3">
                                <asp:Panel ID="Panel3" runat="server" BackColor="#66FF66" Height="60px">
                                    <table class="auto-style124">
                                        <tr>
                                            <td class="auto-style132">
                                                <asp:TextBox ID="TextBox13" runat="server" BorderColor="Lime" BorderStyle="None" CssClass="inputSearch" Height="41px" placeholder="      Search ...  " Width="151px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style132">
                                                <asp:Button ID="Button11" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="48px" OnClick="Button11_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" Text="Search" Width="119px" />
                                            </td>
                                            <td class="auto-style132">
                                                <asp:Button ID="Button10" runat="server" BackColor="#00CC66" BorderStyle="None" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="48px" OnClick="Button10_Click" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Submit" Width="168px" />
                                            </td>
                                            <td class="auto-style132">
                                                <asp:Button ID="Button17" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="48px" OnClick="Button17_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" Text="Payment" Width="164px" />
                                            </td>
                                            <td class="auto-style125">
                                                <asp:Button ID="Button18" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="48px" OnClick="Button18_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" Text="Registration" Width="173px" />
                                            </td>
                                            <td class="auto-style132">
                                                <asp:Button ID="Button15" runat="server" BackColor="#00CC00" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="48px" OnClick="Button15_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" Text="Invoice" Width="113px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style132">&nbsp;</td>
                                            <td class="auto-style132">&nbsp;</td>
                                            <td class="auto-style132">&nbsp;</td>
                                            <td class="auto-style132">&nbsp;</td>
                                            <td class="auto-style125">&nbsp;</td>
                                            <td class="auto-style132">&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style133"></td>
                            <td class="auto-style134"></td>
                            <td class="auto-style135"></td>
                        </tr>
                        <tr>
                            <td class="auto-style81"></td>
                            <td class="auto-style82">
                                <asp:GridView ID="gvInformation" runat="server" CellPadding="8" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="56px" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged" Width="890px">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idClient")%>' OnClick="lnk_OnClick">Select</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <AlternatingRowStyle BackColor="LightBlue" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="PeachPuff" ForeColor="Navy" />
                                    <SelectedRowStyle BackColor="LightBlue" Font-Bold="True" ForeColor="Navy" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="SqlDataSource1_Selecting1" SelectCommand="SELECT top 9 [PlateNumber], [NameService] FROM [WebDetailsDataView1] ORDER BY [idRecord] DESC"></asp:SqlDataSource>
                            </td>
                            <td class="auto-style108"></td>
                        </tr>
                        <tr>
                            <td class="auto-style129"></td>
                            <td class="auto-style130">
                            </td>
                            <td class="auto-style131"></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="4">
                            <br />
                        </td>
        </tr>
        <tr>
            <td class="auto-style85">
                            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" Height="30px" style="color:#000066" Width="207px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Visible="False">
                            </asp:DropDownList>
                            <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="Button" />
                        </td>
            <td class="auto-style88">
                <asp:TextBox ID="TextBox14" runat="server" OnTextChanged="TextBox14_TextChanged" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style88">
                &nbsp;</td>
            <td class="auto-style111">&nbsp;</td>
        </tr>
        <tr>
            
            <td class="auto-style85">
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style88">
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style88">
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Desktop.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MobiWebApplication.WebForm52" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Desktop.Master" AutoEventWireup="true" CodeBehind="BraceletsDistribution.aspx.cs" Inherits="MobiWebApplication.WebForm2" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="BraceletsRecord.aspx.cs" Inherits="MobiWebApplication.WebForm1" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="CovRegistration.aspx.cs" Inherits="MobiWebApplication.WebForm8" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
        }
        .auto-style52
        {
            width: 100%;
            height: 21px;
        }
        .auto-style128 {
            width: 5px;
        }
        .auto-style138 {
        }
        .auto-style144 {
            width: 325px;
        }
        .auto-style91
        {
            width: 100%;
            height: 54px;
        }
        .auto-style142 {
            width: 336px;
        }
        .auto-style143 {
            height: 20px;
            width: 336px;
        }
        .auto-style89
        {
            width: 12px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> 

    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">         
            <tr>
                <td class="auto-style128" valign="top">
                    <asp:Panel ID="Panel88" runat="server" BackColor="SkyBlue" Height="100%">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <table class="auto-style4">
                                        <tr>
                                            <td align="center">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="AddStaff" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" OnClick="Button38_Click" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="DistriburioBracelet" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" OnClick="Button39_Click" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="ReceivingBrace" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" OnClick="Button41_Click" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="InStock" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" OnClick="Button40_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Depolyed" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" OnClick="Button52_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Izambawe" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" OnClick="Button53_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Todaywear" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" OnClick="Button54_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Removed" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Width="200px" OnClick="Button56_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Supervisor0" runat="server" BackColor="#003C52" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Height="57px" OnClick="Supervisor0_Click" onmouseout="this.style.backgroundColor='#003C52'" onmouseover="this.style.backgroundColor='#244242'" Text="LOG OUT" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="RoleName" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="UserName" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="UserGroupv" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td valign="top">
                    <asp:Panel ID="PanelAll" runat="server" BackColor="White" Width="100%" Height="100%">
                        <table class="auto-style4">
                            <tr valign="top">
                                <td align="center" valign="top">
                                    <asp:Panel ID="StaffRegistration" runat="server" BackColor="White" BorderColor="DarkSlateGray" BorderStyle="None" Width="100%">
                                        <table class="auto-style52">
                                            <tr>
                                                <td align="center" valign="top" colspan="2">
                                                    <table class="auto-style4" style="background-color: #CC9900">
                                                        <tr>
                                                            <td align="center" class="auto-style138" height="40">
                                                                <asp:Label ID="Label56" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" style="font-size: x-large" Text="ADD NEW STAFF"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" valign="top" class="auto-style144">
                                                    <asp:Panel ID="Panel90" runat="server" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" Width="100%">
                                                        <table class="auto-style91">
                                                            <tr>
                                                                <td align="center" class="auto-style142">&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:TextBox ID="TextBox19" runat="server" BackColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="16px" OnTextChanged="TextBox19_TextChanged" placeholder="Izina Ry inka" Width="283px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style143">
                                                                    <asp:TextBox ID="TextBox20" runat="server" BackColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="16px" placeholder="Nomero iyiranga" Width="283px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:TextBox ID="TextBox21" runat="server" BackColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="16px" placeholder="Ibararyayo" Width="283px"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:DropDownList ID="DropDownList22" runat="server" AutoPostBack="True" BackColor="White" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="39px" placeholder="Quantity" Width="301px">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:Panel ID="Panel14" runat="server">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td>&nbsp;</td>
                                                                                <td align="right" class="auto-style91">&nbsp;</td>
                                                                                <td>
                                                                                    <asp:DropDownList ID="DropDownListD3" runat="server" AutoPostBack="True" BackColor="White" CssClass="BUTTOM" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="39px" OnSelectedIndexChanged="DropDownListD6_SelectedIndexChanged" placeholder="Quantity" Width="73px">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td class="auto-style89">
                                                                                    <asp:DropDownList ID="DropDownListM3" runat="server" AutoPostBack="True" BackColor="White" CssClass="BUTTOM" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="39px" placeholder="Quantity" Width="84px">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td align="left">
                                                                                    <asp:DropDownList ID="DropDownListYEAR3" runat="server" AutoPostBack="True" BackColor="White" CssClass="BUTTOM" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="39px" placeholder="Quantity" Width="107px">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td>&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="White" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="301px" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:TextBox ID="TextBox18" runat="server" Visible="False" style="height: 22px"></asp:TextBox>
                                                                    <asp:Image ID="Image1" runat="server" CssClass="SreenShotDesign" Height="51px" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:Button ID="Button42" runat="server" BackColor="SkyBlue" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" Height="39px" OnClick="Button42_Click" OnClientClick="return confirm ('Are you sure you want to SUBMIT?');" onmouseout="this.style.backgroundColor='SkyBlue'" onmouseover="this.style.backgroundColor='Orange'" Text="SUBMIT" Width="100%" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style142">
                                                                    <asp:Label ID="alertLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" class="auto-style143"></td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <br />
                                                </td>
                                                <td align="left" valign="top">
                                                    <b style="text-align: center"><span style="color: #000099">
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>"  SelectCommand="SELECT [IdCow], [CowName], [CowCode], [CowColor], [CowGender], [dateAddedNassance], [dateRecorded] FROM [CowRegistration] ORDER BY [IdCow] DESC"></asp:SqlDataSource>
                                                    </span></b><b style="text-align: center"><span style="color: #000099">
                                                    <asp:SqlDataSource ID="SreenSHOOT" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>"  SelectCommand="SELECT [CowPhoto] FROM [CowRegistration] WHERE ([IdCow] = @IdCow)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="TextBox18" Name="IdCow" PropertyName="Text" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    </span></b>
                                                    <asp:Panel ID="Panel91" runat="server" BackColor="#E3EAEB">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                                <td>
                                                                    <asp:DataList ID="DataList5" runat="server" DataSourceID="SreenSHOOT" Width="100%">
                                                                        <ItemTemplate>
                                                                            <asp:Panel ID="Panel140" runat="server" Width="100%">
                                                                                <table class="auto-style4">
                                                                                    <tr>
                                                                                        <td align="right" valign="top">
                                                                                            <asp:Image ID="Image3" runat="server" CssClass="SreenShotDesignDisplay" ImageUrl='<%# Eval("CowPhoto") %>' Height="400px" Width="100%" />
                                                                                        </td>
                                                                                        <td align="left" valign="top">
                                                                                            &nbsp;</td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                            <br />
                                                                        </ItemTemplate>
                                                                    </asp:DataList>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                                <td>
                                                                    <asp:Label ID="ClosedDate" runat="server" Text="ClosedDate" Visible="False"></asp:Label>
                                                                    <asp:Label ID="BirthDate" runat="server" Text="BirthDate" Visible="False"></asp:Label>
                                                                    <asp:GridView ID="gvInformation0" runat="server" AutoGenerateColumns="False" BorderColor="#F0F0F0" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" CssClass="HomeTable" DataSourceID="SqlDataSource1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" GridLines="Horizontal" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox25" runat="server" AutoPostBack="True" BackColor="#E3EAEB" CssClass="ChkBoxClassok1" Height="22px" OnCheckedChanged="CheckBox25_CheckedChanged1" />
                                                                                </ItemTemplate>
                                                                                <FooterStyle BackColor="White" />
                                                                                <HeaderStyle BackColor="#66FFFF" />
                                                                                <ItemStyle HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="CowName" HeaderText="CowName" SortExpression="CowName">
                                                                            <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" Height="40px" />
                                                                            <ItemStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="CowCode" HeaderText="CowCode" SortExpression="CowCode">
                                                                            <ItemStyle Font-Names="Times New Roman" HorizontalAlign="Left" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="CowColor" HeaderText="CowColor" SortExpression="CowColor">
                                                                            <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
                                                                            <ItemStyle Font-Names="Times New Roman" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="dateAddedNassance" HeaderText="BirthDate" SortExpression="dateAddedNassance">
                                                                            <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" />
                                                                            <ItemStyle Font-Names="Times New Roman" />
                                                                            </asp:BoundField>
                                                                             <asp:BoundField DataField="IdCow" SortExpression="IdCow">
                                                            <HeaderStyle Font-Bold="True" Font-Names="Times New Roman" HorizontalAlign="Center"/>
                                                            <ItemStyle Font-Names="Times New Roman"  Font-Size="Smaller" ForeColor="White" />
                                                            <ItemStyle Font-Names="Times New Roman" HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox24" runat="server" AutoPostBack="True" BackColor="#E3EAEB" CssClass="ChkBoxClassok1" Height="22px" />
                                                                                </ItemTemplate>
                                                                                <FooterStyle BackColor="White" />
                                                                                <HeaderStyle BackColor="#66FFFF" />
                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                                                        <HeaderStyle BackColor="#66FFFF" Font-Bold="True" ForeColor="Navy" />
                                                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                                        <RowStyle ForeColor="#000066" />
                                                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td align="center" style="background-color: #FFFFFF" valign="top">
                                    
                                    &nbsp;</td>
                            </tr>
                            <tr valign="top">
                                <td align="center" style="background-color: #FFFFFF" valign="top">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style128" valign="top">
                    
                    &nbsp;</td>
               
            </tr>
        </table>
    </asp:Panel>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>




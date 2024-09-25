<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="StaffCredit.aspx.cs" Inherits="MobiWebApplication.WebForm6" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 359px;
        }
        .style5
        {
            width: 133px;
        }
        .style6
        {
            width: 141px;
            height: 33px;
        }
        .style7
        {
            width: 133px;
            height: 33px;
        }
        .style8
        {
            width: 359px;
            height: 33px;
        }
        .style9
        {
            height: 33px;
        }
        .style10
        {
            width: 141px;
            height: 26px;
        }
        .style11
        {
            width: 133px;
            height: 26px;
        }
        .style12
        {
            width: 359px;
            height: 26px;
        }
        .style13
        {
            height: 26px;
        }
        .style14
        {
            width: 190px;
        }
        .style15
        {
            width: 118px;
        }
        .style17
        {
            width: 141px;
        }
        .style18
        {
            width: 101px;
        }
        .style19
        {
            width: 158px;
        }
        .style20
        {
            width: 141px;
            height: 72px;
        }
        .style21
        {
            width: 133px;
            height: 72px;
        }
        .style22
        {
            width: 359px;
            height: 72px;
            font-size: x-large;
           font-family:Agency FB;
        }
        .style23
        {
            height: 72px;
        }
        .style24
        {
            height: 148px;
        }
        .style25
        {
            height: 148px;
            width: 65px;
        }
        .style26
        {
            width: 65px;
        }
        .style27
        {
            height: 148px;
            width: 782px;
        }
        .style28
        {
            width: 782px;
        }
        .style29
        {
            width: 141px;
            height: 35px;
        }
        .style30
        {
            width: 133px;
            height: 35px;
        }
        .style31
        {
            width: 359px;
            height: 35px;
        }
        .style32
        {
            height: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style1">
        <tr>
            <td class="style17">
                <asp:Button ID="Button16" runat="server" Text="Registration" 
                     onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BackColor="DodgerBlue" BorderStyle="None" ForeColor="White" Height="35px" 
                    Width="150px" Font-Bold="True" onclick="Button16_Click"/>
            </td>
            <td class="style5">
                <asp:Button ID="Button17" runat="server" Text="Service" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="146px" 
                    Font-Bold="True" onclick="Button17_Click"/>
            </td>
            <td class="style14">
                <asp:Button ID="Button18" runat="server" Text="Payment" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="153px" 
                    Font-Bold="True" onclick="Button18_Click"/>
            </td>
            <td class="style15" colspan="2">
                <asp:Button ID="Button19" runat="server" Text="Client Credit" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BackColor="DodgerBlue" BorderStyle="None" ForeColor="White" Height="35px" 
                    Width="157px" Font-Bold="True" OnClick="Button19_Click"/>
            </td>
            <td class="style17">
                <asp:Button ID="Button20" runat="server" Text="Staff Credit" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BackColor="DodgerBlue" BorderStyle="None" ForeColor="White" Height="35px" 
                    Width="162px" Font-Bold="True" onclick="Button20_Click"/>
            </td>
            <td>
                <asp:Button ID="Button22" runat="server" Text="Reports" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="141px" 
                    Font-Bold="True"/>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <br />
                <br />
                <br />
            </td>
            <td class="style21">
                </td>
            <td class="style22" colspan="4">
            <asp:Label ID="Label2" runat="server" CssClass="style11" 
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="39px" Font-Bold="True"
                style="text-align: center" Text="STAFF CREDIT" Width="319px"></asp:Label>
                </td>
            <td class="style23">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style5" style="color:#000066">
                Staff Name</td>
            <td class="style3" colspan="4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" Width="359px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11" style="color:#000066">
                Amount Given</td>
            <td class="style12" colspan="4">
                <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="359px" 
                    ontextchanged="TextBox7_TextChanged" BorderStyle="Groove" 
                    BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style29">
                </td>
            <td class="style30" style="color:#000066">
                Details</td>
            <td class="style31" colspan="4">
                <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="359px" 
                    ontextchanged="TextBox7_TextChanged" BorderStyle="Groove" 
                    BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style32">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17">
                <asp:TextBox ID="TextBox10" runat="server" Width="61px" BorderStyle="None" 
                    ForeColor="#66FF99" ReadOnly="True" BackColor="PowderBlue" Visible="False"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Refresh" 
                    Width="145px"
                    onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                    Height="40px"  BorderWidth="1px" />
            </td>
            <td class="style18" colspan="2">
                
                     <asp:Button ID="Button3" runat="server" Text="Save" onclick="Button3_Click" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                     onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="40px" 
                         Width="152px"  BorderWidth="1px" />
            </td>
            <td class="style19">
                
                     <asp:Button ID="Button25" runat="server" Height="40px" onclick="Button25_Click" Text="View Report" Width="158px"  
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                     onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                         BorderWidth="1px"/>
            </td>
            <td class="style3">
                
                     <asp:Button ID="Button24" runat="server" 
                          onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                          onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="40px" onclick="Button24_Click" Text="Credit Payment" 
                         Width="158px"  BorderWidth="1px" />
            </td>
            <td>
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style18" colspan="2">
                
                     &nbsp;</td>
            <td class="style19">
                
                     &nbsp;</td>
            <td class="style3">
                
                     &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    <p>
        <table class="style1">
            <tr>
                <td class="style25">
                </td>
                <td class="style27">
        <asp:GridView ID="StaffCreditDisplay" runat="server" Width="821px" 
            CellPadding="8" ForeColor="#333333" GridLines="None">
            <Columns>
           <%-- <asp:TemplateField>
                 <ItemTemplate>
                   <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("IDStaff")%>' OnClick="lnk_OnClick">Select 
                     Staff</asp:LinkButton>
                 </ItemTemplate>
            </asp:TemplateField>     --%>       
            </Columns>   
            <RowStyle  BackColor="PeachPuff" ForeColor="Navy" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="LightBlue" ForeColor="Navy" />
        </asp:GridView>
                </td>
                <td class="style24">
                </td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td class="style28">
                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Height="36px" Width="253px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idSales], [OperationDay] FROM [StartDaily] ORDER BY [idSales] DESC"></asp:SqlDataSource>
                    <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
    </asp:Content>

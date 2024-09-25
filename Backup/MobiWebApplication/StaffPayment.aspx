<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="StaffPayment.aspx.cs" Inherits="MobiWebApplication.WebForm8" Title="Untitled Page" %>
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
        .style4
        {
            width: 126px;
            height: 19px;
        }
        .style5
        {
            width: 129px;
        }
        .style6
        {
            width: 126px;
            height: 33px;
        }
        .style7
        {
            width: 129px;
            height: 33px;
        }
        .style8
        {
            width: 359px;
            height: 33px;
            font-size: x-large;
            font-family:Agency FB;
        }
        .style9
        {
            height: 33px;
        }
        .style10
        {
            width: 126px;
            height: 26px;
        }
        .style11
        {
            width: 129px;
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
            width: 126px;
            height: 31px;
        }
        .style15
        {
            width: 129px;
            height: 31px;
        }
        .style17
        {
            height: 31px;
        }
        .style24
        {
            width: 124px;
            height: 31px;
        }
        .style25
        {
            width: 138px;
            height: 31px;
        }
        .style26
        {
            width: 138px;
        }
        .style27
        {
            width: 126px;
            height: 63px;
        }
        .style28
        {
            width: 129px;
            height: 63px;
        }
        .style29
        {
            width: 359px;
            height: 63px;
            font-size: x-large;
            font-family: Agency FB;
        }
        .style30
        {
            height: 63px;
        }
        .style31
        {
            width: 126px;
            height: 35px;
        }
        .style32
        {
            width: 129px;
            height: 35px;
        }
        .style33
        {
            width: 359px;
            height: 35px;
            font-size: x-large;
            font-family: Agency FB;
        }
        .style34
        {
            height: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style1">
        <tr>
            <td class="style14">
                <asp:Button ID="Button5"  runat="server" Text="Registration"                     
                     BorderStyle="None" Height="35px" Width="145px"  Font-Bold="True"
                    ForeColor="White" onclick="Button5_Click" BackColor="DodgerBlue"/>                                  
               
            </td>
            <td class="style15">
                <asp:Button ID="Button11"  runat="server" Text="Service" 
                    BorderStyle="None" Height="35px" Width="153px"  Font-Bold="True"
                    ForeColor="White" onclick="Button11_Click" BackColor="DodgerBlue"/>                
               
            </td>
            <td class="style15">
                <asp:Button ID="Button6"  runat="server" Text="Payment" 
                    BorderStyle="None" Height="35px" Width="161px"  Font-Bold="True"
                    ForeColor="White" onclick="Button6_Click" BackColor="DodgerBlue"/>                
               
            </td>
            <td class="style25">
                <asp:Button ID="Button12"  runat="server" Text="Client Credit" 
                    BorderStyle="None" Height="35px" Width="147px"  Font-Bold="True"
                    ForeColor="White" BackColor="DodgerBlue" onclick="Button12_Click"/>                
               
            </td>
            <td class="style24">
                <asp:Button ID="Button13"  runat="server" Text="Staff Credit" 
                    BorderStyle="None" Height="35px" Width="149px"  Font-Bold="True"
                    ForeColor="White" onclick="Button13_Click" BackColor="DodgerBlue"/>                
               
            </td>
            <td class="style17">
                <asp:Button ID="Button15"  runat="server" Text="Reports" 
                    BorderStyle="None" Height="35px" Width="151px"  Font-Bold="True"
                    ForeColor="White" BackColor="DodgerBlue"/>                
               
            </td>
        </tr>
        <tr>
            <td class="style27">
                <br />
                <br />
                <br />
            </td>
            <td class="style28">
                </td>
            <td class="style29" colspan="3">
            <asp:Label ID="Label2" runat="server" CssClass="style11" 
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="39px" Font-Bold="True"
                style="text-align: center" Text="STAFF CREDIT PAYMENT" Width="318px"></asp:Label>
                </td>
            <td class="style30">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5" style="color:#000066">
                Staff Name</td>
            <td class="style3" colspan="3">
                <asp:TextBox ID="TextBox11" runat="server" Height="30px" Width="359px" 
                    ReadOnly="True" ontextchanged="TextBox7_TextChanged" BackColor="#CCFFFF" 
                    BorderStyle="Groove" BorderWidth="1px" BorderColor="#000066"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                </td>
            <td class="style32" style="color:#000066">
                Total Credit</td>
            <td class="style33" colspan="3">
                <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="359px" 
                    ReadOnly="True" ontextchanged="TextBox7_TextChanged" BackColor="#CCFFFF" 
                    BorderStyle="Groove" BorderWidth="1px" BorderColor="#000066"></asp:TextBox>
            </td>
            <td class="style34">
                </td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style11" style="color:#000066">
                Amount Payed</td>
            <td class="style12" colspan="3">
                <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="359px" 
                    ontextchanged="TextBox7_TextChanged" BorderStyle="Groove" 
                    BorderWidth="1px" BorderColor="#000066"></asp:TextBox>
            </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7" style="color:#000066">
                Details</td>
            <td class="style8" colspan="3">
                <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="359px" 
                    ontextchanged="TextBox7_TextChanged" BorderStyle="Groove" 
                    BorderWidth="1px" BorderColor="#000066"></asp:TextBox>
            </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                <asp:TextBox ID="TextBox10" runat="server" Width="61px" BorderStyle="None" 
                    ForeColor="PowderBlue" ReadOnly="True" BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Refresh" 
                    Width="152px"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                    Height="40px" BorderWidth="1px" />
            </td>
            <td class="style3">
                
                     <asp:Button ID="Button3" runat="server" Text="Save" onclick="Button3_Click" 
                          Height="40px"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                         onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                         Width="161px" BorderWidth="1px" />
            </td>
            <td class="style26">
                
                     <asp:Button runat="server" Height="40px"  
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                     onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                     Width="148px" onclick="Unnamed1_Click" BorderWidth="1px" />
            </td>
            <td class="style3">
                
                     <asp:Button runat="server" Height="40px" Width="146px"  
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                     onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                         onclick="Unnamed2_Click" BorderWidth="1px" />
            </td>
            <td>
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td class="style4">
                <br />
                <br />
                <br />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" colspan="3">
                
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        <asp:GridView ID="StaffCreditDisplay" runat="server" Width="932px" 
            CellPadding="8" ForeColor="#333333" GridLines="None">
            <Columns>
            <asp:TemplateField>
                 <ItemTemplate>
                   <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("IDStaff")%>' OnClick="lnk_OnClick">Select Staff</asp:LinkButton>
                 </ItemTemplate>
            </asp:TemplateField>            
            </Columns>   
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </p>
    </asp:Content>

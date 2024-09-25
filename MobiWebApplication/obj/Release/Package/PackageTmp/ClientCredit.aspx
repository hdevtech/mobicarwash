<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ClientCredit.aspx.cs" Inherits="MobiWebApplication.WebForm11" Title="Untitled Page" %>
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
            width: 150px;
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
            height: 15px;
        }
        .style19
        {
            width: 158px;
            height: 15px;
        }
        .style20
        {
            width: 150px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        .style21
        {
            width: 150px;
            height: 74px;
        }
        .style22
        {
            width: 133px;
            height: 74px;
        }
        .style23
        {
            width: 359px;
            height: 74px;
            font-size: x-large;
            font-family:Agency FB;
        }
        .style24
        {
            height: 74px;
        }
        .style25
        {
            width: 150px;
            height: 15px;
        }
        .style26
        {
            width: 133px;
            height: 15px;
        }
        .style27
        {
            width: 359px;
            height: 15px;
        }
        .style28
        {
            height: 15px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style1">
        <tr>
            <td class="style20">
                <asp:Button ID="Button16" runat="server" Text="Registration" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BackColor="DodgerBlue"  BorderStyle="None" ForeColor="White" Height="35px" 
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
                    Width="157px" Font-Bold="True" onclick="Button19_Click"/>
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
            <td class="style21">
                <br />
                <br />
                <br />
            </td>
            <td class="style22">
                </td>
            <td class="style23" colspan="4">
            <asp:Label ID="Label2" runat="server" CssClass="style11" 
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="38px" Font-Bold="True"
                style="text-align: center" Text="CLIENTS CREDIT" Width="319px"></asp:Label>
                </td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style5" style="color:Navy">
                Client Name</td>
            <td class="style3" colspan="4" style="color:Navy">
                <asp:TextBox ID="TextBox11" runat="server" Height="30px" Width="359px" 
                    ReadOnly="True" ontextchanged="TextBox7_TextChanged" BackColor="#CCFFFF" 
                    BorderStyle="Groove" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7" style="color:Navy">
                Plate No</td>
            <td class="style8" colspan="4" style="color:Navy">
                <asp:TextBox ID="TextBox8" runat="server" Height="29px" Width="359px" 
                    ontextchanged="TextBox7_TextChanged" BorderStyle="Groove" 
                    BackColor="#CCFFFF" ReadOnly="True" BorderColor="#000066" 
                    BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style20">
                </td>
            <td class="style5" style="color:Navy">
                Total Amount</td>
            <td class="style3" colspan="4" style="color:Navy">
                <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="359px" 
                    ReadOnly="True" ontextchanged="TextBox7_TextChanged" BackColor="#CCFFFF" 
                    BorderStyle="Groove" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7" style="color:Navy">
                Amount Payed</td>
            <td class="style8" colspan="4" style="color:Navy">
                <asp:TextBox ID="TextBox9" runat="server" Height="29px" Width="359px" 
                    ontextchanged="TextBox7_TextChanged" BorderStyle="Groove" 
                    BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" colspan="4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25">
                <asp:TextBox ID="TextBox10" runat="server" Width="61px" BorderStyle="None" 
                    ForeColor="PowderBlue" ReadOnly="True" BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style26">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Refresh" 
                    Width="145px" 
                    onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                    Height="40px" Font-Bold="True" BorderWidth="1px" />
            </td>
            <td class="style18" colspan="2">
                
                     <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" 
                          onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                         onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="40px" 
                         Width="152px" Font-Bold="True" BorderWidth="1px" />
            </td>
            <td class="style19">
                
                     <asp:Button ID="Button1" runat="server"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="40px" Font-Bold="True" 
                         Width="155px" Text="Print" onclick="Unnamed1_Click" BorderWidth="1px" />
            </td>
            <td class="style27">
                
                     <asp:Button runat="server"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" Height="40px" Font-Bold="True" 
                         Width="159px" onclick="Unnamed1_Click" BorderWidth="1px" />
            </td>
            <td class="style28">
                <br />
                <br />
                </td>
        </tr>
        <tr>
            <td class="style20">
                <br />
                <br />
                <br />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" colspan="4">
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        <asp:GridView ID="ClientCreditDisplay" runat="server" Width="932px" 
            CellPadding="8" ForeColor="#333333" GridLines="None" 
            onselectedindexchanged="ClientCreditDisplay_SelectedIndexChanged">
            <Columns>
            <asp:TemplateField>
                 <ItemTemplate>
                   <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idClient")%>' OnClick="lnk_OnClick">Select Client</asp:LinkButton>
                 </ItemTemplate>
            </asp:TemplateField>            
            </Columns>   
            <RowStyle  BackColor="PeachPuff" ForeColor="Navy" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="LightBlue" ForeColor="Navy" />
        </asp:GridView>
    </p>
    </asp:Content>

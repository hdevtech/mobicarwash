<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="NewStaff.aspx.cs" Inherits="MobiWebApplication.WebForm15" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
        .style7
        {
            width: 152px;
            height: 40px;
        }
        .style31
        {
            height: 40px;
        }
        .style42
        {
            height: 36px;
            width: 152px;
            text-align : left;
        }
        .style43
        {
            width: 342px;
            height: 36px;
            font-size: x-large;
            font-family:Agency FB;
        }
        .style44
        {
            width: 113px;
            height: 36px;
        }
        .style45
        {
            height: 36px;
        }
        .style47
        {
            height: 23px;
            width: 152px;
            text-align : left;
        }
        .style48
        {
            width: 342px;
            height: 23px;
        }
        .style49
        {
            width: 113px;
            height: 23px;
            text-align: center;
        }
        .style50
        {
            height: 23px;
        }
        .style57
    {
        width: 152px;
        height: 36px;
    }
    .style59
    {
        height: 38px;
        width: 152px;
        text-align : left;
    }
    .style60
    {
        width: 342px;
        height: 38px;
    }
    .style61
    {
        width: 113px;
        height: 38px;
    }
    .style62
    {
        height: 38px;
    }
    .style63
    {
            height: 36px;
            width: 120px;
            text-align : left;
        }
    .style64
    {
        height: 23px;
        width: 120px;
        text-align : left;
    }
    .style66
    {
        height: 38px;
        width: 120px;
        text-align : left;
    }
    .style67
    {
        width: 120px;
        height: 36px;
    }
    .style69
    {
        width: 120px;
        height: 40px;
    }
        .style70
        {
            height: 26px;
        }
        .style71
        {
            height: 26px;
            width: 110px;
        }
        .style72
        {
            height: 26px;
            width: 123px;
        }
        .style73
        {
            height: 26px;
            width: 121px;
        }
        .style74
        {
            height: 26px;
            width: 122px;
        }
        .style75
        {
            width: 184px;
            height: 40px;
        }
        .style78
        {
            width: 113px;
            height: 40px;
        }
        .style79
        {
            width: 160px;
            height: 40px;
        }
        .style83
        {
            width: 113px;
            height: 21px;
        }
        .style84
        {
            height: 21px;
            width: 120px;
            text-align : left;
        }
        .style85
        {
            height: 21px;
            width: 152px;
            text-align : left;
        }
        .style86
        {
            width: 342px;
            height: 21px;
        }
        .style87
        {
            height: 21px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style1">
        <tr>
             <td class="style73">
                <asp:Button ID="Button3" runat="server" Text="Registration" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BackColor="DodgerBlue" BorderStyle="None" ForeColor="White" Height="35px" 
                    Width="144px" Font-Bold="True" onclick="Button3_Click"/>
               
            </td>
            <td class="style72">
                <asp:Button ID="Button4" runat="server" Text="Service" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="159px" 
                    Font-Bold="True" onclick="Button4_Click"/>
               
            </td>
            <td class="style71">
                <asp:Button ID="Button5" runat="server" Text="Payment" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="160px" 
                    Font-Bold="True" onclick="Button5_Click1"/>
               
            </td>
            <td class="style74">
                <asp:Button ID="Button6" runat="server" Text="Client Credit" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BackColor="DodgerBlue" BorderStyle="None" ForeColor="White" Height="35px" 
                    Width="153px" Font-Bold="True" onclick="Button6_Click1"/>
               
            </td>
            <td class="style73">
                <asp:Button ID="Button7" runat="server" Text="Staff Credit" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="153px" 
                    Font-Bold="True" onclick="Button7_Click"/>
               
            </td>
            <td class="style70">
                <asp:Button ID="Button9" runat="server" Text="Reports" BackColor="DodgerBlue" 
                     onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="141px" Font-Bold="True"/>
               
            </td>
        </tr>
    </table>
    <p>
    </p>
    <table class="style1">
        <tr>
            <td class="style63">
                &nbsp;</td>
            <td class="style42">
                &nbsp;</td>
            <td class="style43" colspan="2">
                
            <asp:Label ID="Label2" runat="server" CssClass="style11" 
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="38px" Font-Bold="True"
                style="text-align: center" Text="ADD NEW STAFF" Width="332px"></asp:Label>
                </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style45">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style84">
                </td>
            <td class="style85">
                </td>
            <td class="style86" colspan="2">
                
                     </td>
            <td class="style83">
                </td>
            <td class="style87">
                </td>
        </tr>
        <tr>
            <td class="style63">
                &nbsp;</td>
            <td class="style42" style="color:#000066">
                Staff Name</td>
            <td class="style43" colspan="2">
                
                     <asp:TextBox ID="TextBox8" runat="server" 
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style45">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style64">
                &nbsp;</td>
            <td class="style47" style="color:#000066">
                Contact No</td>
            <td class="style48" colspan="2">
                
                     <asp:TextBox ID="TextBox7" runat="server" 
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
            </td>
            <td class="style49">
            </td>
            <td class="style50">
                </td>
        </tr>
        <tr>
            <td class="style66">
                &nbsp;</td>
            <td class="style59" style="color:#000066">
                NID</td>
            <td class="style60" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove" ForeColor="Navy" 
                    Height="30px" Width="359px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style61">
            </td>
            <td class="style62">
                </td>
        </tr>
        <tr>
            <td class="style67">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" ForeColor="PowderBlue" 
                    Width="50px" BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style57">
                </td>
            <td class="style43" colspan="2">
                </td>
            <td class="style44">
                </td>
            <td class="style45">
                </td>
        </tr>
        <tr>
            <td class="style69">
                <asp:TextBox ID="TextBox9" runat="server" Height="37px"></asp:TextBox>
                </td>
            <td class="style7">
                <asp:Button ID="Button2" runat="server" 
                    ForeColor="Navy" Height="39px" onclick="Button2_Click" Text="Search" 
                    Width="151px" Font-Bold="True" BackColor="LightBlue" BorderWidth="1px" />
            </td>
            <td class="style75">
                <asp:Button ID="Button1" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="39px" onclick="Button1_Click" style="margin-left: 0px" 
                    Text="Save" Width="191px" Font-Bold="True" BorderWidth="1px" />
            </td>
            <td class="style79">
                <asp:Button ID="Button10" runat="server" Height="39px" Text="Update" 
                    Width="168px"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Font-Bold="True" 
                    onclick="Button10_Click1" BorderWidth="1px" />
            </td>
            <td class="style78">
                <asp:Button runat="server" Height="39px" Width="132px" Text="Delete" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Font-Bold="True" onclick="Unnamed1_Click" 
                    BorderWidth="1px"/>
            </td>
            <td class="style31">
                </td>
        </tr>
</table>
    <p>
    </p>
    <br />
    <asp:GridView ID="NewStaff" runat="server" Height="19px" Width="932px" 
        CellPadding="8" ForeColor="#333333" GridLines="None" 
        style="text-align: justify">
        
         <Columns>
                     <asp:TemplateField>
                     <ItemTemplate>
                      <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("IDStaff")%>' OnClick="lnk_OnClick">Select Staff</asp:LinkButton>
                       </ItemTemplate>
            </asp:TemplateField>    
            </Columns>  
        <RowStyle BackColor="PeachPuff" ForeColor="Navy" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="LightBlue" ForeColor="Navy" />
    </asp:GridView>

            </asp:Content>


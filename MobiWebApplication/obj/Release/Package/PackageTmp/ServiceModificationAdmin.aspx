<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ServiceModificationAdmin.aspx.cs" Inherits="MobiWebApplication.WebForm13" Title="Untitled Page" %>
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
        .style8
        {
            width: 110px;
            height: 40px;
        }
        .style22
        {
            width: 152px;
            height: 18px;
        }
        .style23
        {
            width: 342px;
            height: 18px;
        }
        .style30
        {
            height: 18px;
        }
        .style31
        {
            height: 40px;
        }
        .style43
        {
            width: 342px;
            height: 38px;
           font-size:x-large;
           font-family:Agency FB;
           
           
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
            width: 148px;
            height: 23px;
        }
        .style50
        {
            height: 23px;
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
        width: 148px;
        height: 38px;
    }
    .style62
    {
        height: 38px;
    }
    .style64
    {
        height: 23px;
        width: 117px;
        text-align : left;
    }
    .style66
    {
        height: 38px;
        width: 117px;
        text-align : left;
    }
    .style68
    {
        width: 117px;
        height: 18px;
    }
    .style69
    {
        width: 117px;
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
        .style77
        {
            width: 148px;
            height: 18px;
            
        }
        .style78
        {
            width: 148px;
            height: 40px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        .style79
        {
            height: 15px;
            width: 117px;
            text-align : left;
        }
        .style80
        {
            height: 15px;
            width: 152px;
            text-align : left;
        }
        .style81
        {
            width: 342px;
            height: 15px;
            font-size: x-large;
        }
        .style82
        {
            width: 148px;
            height: 15px;
        }
        .style83
        {
            height: 15px;
        }
        .style84
        {
            width: 342px;
            height: 35px;
            font-size: x-large;
            font-family:Agency FB;
            
            
        }
        .style85
        {
            height: 35px;
            width: 117px;
            text-align : left;
        }
        .style86
        {
            height: 35px;
            width: 152px;
            text-align : left;
        }
        .style87
        {
            width: 148px;
            height: 35px;
        }
        .style88
        {
            height: 35px;
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
                    BorderStyle="None" ForeColor="White" Height="35px" Width="141px" 
                    Font-Bold="True" onclick="Button9_Click"/>
               
            </td>
        </tr>
    </table>
    <p>
    </p>
    <table class="style1">
        <tr>
            <td class="style85">
                </td>
            <td class="style86">
                </td>
            <td class="style84" colspan="2">
                
            <asp:Label ID="Label2" runat="server" CssClass="style11" Font-Bold="True"
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="31px" 
                style="text-align: center" Text="DELETE SERVICE" Width="341px"></asp:Label>
                             </td>
            <td class="style87">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            <td class="style88">
                </td>
        </tr>
        <tr>
            <td class="style79">
                </td>
            <td class="style80">
                </td>
            <td class="style81" colspan="2">
                
                             </td>
            <td class="style82">
                </td>
            <td class="style83">
                </td>
        </tr>
        <tr>
            <td class="style66">
                </td>
            <td class="style59" style="color:#000066">
                Plate No</td>
            <td class="style43" colspan="2">
                
                     <asp:TextBox ID="TextBox8" runat="server" BackColor="#CCFFFF" ForeColor="Navy"
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" ReadOnly="True" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
            </td>
            <td class="style61">
                </td>
            <td class="style62">
                </td>
        </tr>
        <tr>
            <td class="style64">
                &nbsp;</td>
            <td class="style47" style="color:#000066">
                Vehicle Type</td>
            <td class="style48" colspan="2">
                
                     <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCFFFF" ForeColor="Navy"
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" ReadOnly="True" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
            </td>
            <td class="style49">
            </td>
            <td class="style50">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style66">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" ForeColor="PowderBlue" 
                    Width="50px" BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style59" style="color:#000066">
                Category</td>
            <td class="style60" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove" ForeColor="Navy" 
                    Height="30px" ReadOnly="True" Width="359px" BackColor="#CCFFFF" 
                    BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style61">
            </td>
            <td class="style62">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style68">
                </td>
            <td class="style22">
                </td>
            <td class="style23" colspan="2">
                </td>
            <td class="style77">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="17px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="149px" Visible="False">
                </asp:DropDownList>
                </td>
            <td class="style30">
                </td>
        </tr>
        <tr>
            <td class="style69">
                </td>
            <td class="style7">
                <asp:Button ID="Button2" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="39px" onclick="Button2_Click" Text="Refresh" 
                    Width="150px" BorderWidth="1px" />
            </td>
            <td class="style75">
                <asp:Button ID="Button1" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  
                    Height="39px" onclick="Button1_Click" style="margin-left: 0px" 
                    Text="Delete" Width="190px" BorderWidth="1px" />
            </td>
            <td class="style8">
                <asp:Button ID="Button10" runat="server" Height="39px" Text="Modify" 
                    Width="163px"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  onclick="Button10_Click" 
                    BorderWidth="1px" />
            </td>
            <td class="style78">
                <asp:Button ID="Button11" runat="server" Height="39px" 
                    onclick="Button11_Click1" Text="View Reports" Width="148px" 
                    onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  BorderWidth="1px"/>
            </td>
            <td class="style31">
                </td>
        </tr>
</table>
    <p>
    </p>
    <br />
    <asp:GridView ID="gvServed" runat="server" Height="19px" Width="932px" 
        CellPadding="8" ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="PaleGoldenrod" ForeColor="Navy"/>
        
         <Columns>
                     <asp:TemplateField>
                     <ItemTemplate>
                      <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idRecord")%>' OnClick="lnk_OnClick">Delete</asp:LinkButton>
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

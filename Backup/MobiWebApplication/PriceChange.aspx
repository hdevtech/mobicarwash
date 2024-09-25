<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="PriceChange.aspx.cs" Inherits="MobiWebApplication.WebForm14" Title="Untitled Page" %>
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
            width: 136px;
            height: 40px;
        }
        .style13
        {
            width: 342px;
            height: 36px;
        }
        .style22
        {
            width: 136px;
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
        .style42
        {
            height: 36px;
            width: 136px;
            text-align : left;
        }
        .style43
        {
            width: 342px;
            height: 36px;
            font-size: x-large;
            
        }
        .style44
        {
            width: 181px;
            height: 36px;
        }
        .style45
        {
            height: 36px;
        }
        .style47
        {
            height: 23px;
            width: 136px;
            text-align : left;
        }
        .style48
        {
            width: 342px;
            height: 23px;
        }
        .style49
        {
            width: 181px;
            height: 23px;
        }
        .style50
        {
            height: 23px;
        }
        .style57
    {
        width: 136px;
        height: 36px;
    }
    .style59
    {
        height: 38px;
        width: 136px;
        text-align : left;
    }
    .style60
    {
        width: 342px;
        height: 38px;
    }
    .style61
    {
        width: 181px;
        height: 38px;
    }
    .style62
    {
        height: 38px;
    }
    .style63
    {
            height: 36px;
            width: 98px;
            text-align : left;
        }
    .style64
    {
        height: 23px;
        width: 98px;
        text-align : left;
    }
    .style66
    {
        height: 38px;
        width: 98px;
        text-align : left;
    }
    .style67
    {
        width: 98px;
        height: 36px;
    }
    .style68
    {
        width: 98px;
        height: 18px;
    }
    .style69
    {
        width: 98px;
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
            width: 197px;
            height: 40px;
        }
        .style77
        {
            width: 181px;
            height: 18px;
        }
        .style78
        {
            width: 181px;
            height: 40px;
        }
        .style79
        {
            width: 179px;
            height: 40px;
        }
        .style11
        {
            width: 197px;
            height: 45px;
        }
        .style80
        {
            height: 78px;
            width: 98px;
            text-align : left;
        }
        .style81
        {
            height: 78px;
            width: 136px;
            text-align : left;
        }
        .style82
        {
            width: 342px;
            height: 78px;
            font-size: xx-large;
            font-family:Agency FB;
        }
        .style83
        {
            width: 181px;
            height: 78px;
        }
        .style84
        {
            height: 78px;
        }
        .style85
        {
            height: 178px;
        }
        .style86
        {
            height: 178px;
            width: 792px;
        }
        .style88
        {
            height: 178px;
            width: 67px;
        }
        .style89
        {
            height: 3px;
            width: 67px;
        }
        .style90
        {
            height: 3px;
            width: 792px;
        }
        .style91
        {
            height: 3px;
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
            <td class="style80">
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td class="style81">
                </td>
            <td class="style82" colspan="2">
                
            <asp:Label ID="Label2" runat="server" CssClass="style11" Font-Bold="True"
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="32px" 
                style="text-align: center" Text="CHANGE SERVICE PRICE" Width="355px"></asp:Label>
                             </td>
            <td class="style83">
                </td>
            <td class="style84">
                </td>
        </tr>
        <tr>
            <td class="style63">
                &nbsp;</td>
            <td class="style42" style="color:#000066">
                Category</td>
            <td class="style43" colspan="2">
                
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="380px">
                     </asp:DropDownList>
                    
            </td>
            <td class="style44">
                <asp:Button ID="Button10" runat="server" Height="36px" 
                    onclick="Button10_Click1" Text="&gt;&gt;&gt;&gt;" Width="117px" 
                    Font-Bold="True"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  BorderWidth="1px" />
                             </td>
            <td class="style45">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style64">
                &nbsp;</td>
            <td class="style47" style="color:#000066">
                Service </td>
            <td class="style48" colspan="2">
                
                     <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCFFFF" 
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="378px" ReadOnly="True" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
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
                Old Price</td>
            <td class="style60" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove" ForeColor="Navy" 
                    Height="30px" ReadOnly="True" Width="378px" BackColor="#CCFFFF" 
                    BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
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
            <td class="style57" style="color:#000066">
                New Price</td>
            <td class="style13" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Groove" ForeColor="Navy" 
                    Height="30px" ontextchanged="TextBox3_TextChanged" Width="378px" 
                    BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style44">
                </td>
            <td class="style45">
                </td>
        </tr>
        <tr>
            <td class="style68">
                </td>
            <td class="style22">
                </td>
            <td class="style23" colspan="2">
                </td>
            <td class="style77">
                &nbsp;</td>
            <td class="style30">
                </td>
        </tr>
        <tr>
            <td class="style69">
                </td>
            <td class="style7">
                &nbsp;</td>
            <td class="style75">
                <asp:Button ID="Button1" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" Height="39px" onclick="Button1_Click" style="margin-left: 0px" 
                    Text="Save" Width="191px" Font-Bold="True" BorderWidth="1px"/>
            </td>
            <td class="style79">
                <asp:Button ID="Button2" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="39px" onclick="Button2_Click" Text="Refresh" 
                    Width="175px" Font-Bold="True" BorderWidth="1px"/>
            </td>
            <td class="style78">
                &nbsp;</td>
            <td class="style31">
                </td>
        </tr>
</table>
    <p>
    </p>
    <br />
    <table class="style1">
        <tr>
            <td class="style88">
            </td>
            <td class="style86">
    <asp:GridView ID="gvPrice" runat="server" Height="19px" Width="791px" 
        CellPadding="8" ForeColor="#333333" GridLines="None">
        
         <Columns>
                     <asp:TemplateField>
                     <ItemTemplate>
                      <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("IdService")%>' OnClick="lnk_OnClick">Change Price</asp:LinkButton>
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

            </td>
            <td class="style85">
            </td>
        </tr>
        <tr>
            <td class="style89">
            </td>
            <td class="style90">
            </td>
            <td class="style91">
            </td>
        </tr>
    </table>

            </asp:Content>

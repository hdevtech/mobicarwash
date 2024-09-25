<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="PriceChange.aspx.cs" Inherits="MobiWebApplication.WebForm14" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 99%;
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
        .auto-style6
        {
            width: 342px;
            height: 13px;
            font-size: x-large;
        }
        .auto-style7
        {
            height: 13px;
            width: 98px;
            text-align : left;
        }
        .auto-style9
        {
            width: 181px;
            height: 13px;
        }
        .auto-style10
        {
            height: 13px;
        }
        .auto-style21
        {
            width: 67px;
        }
        .auto-style22
        {
            width: 792px;
        }
        .auto-style23
        {
            height: 13px;
            width: 86px;
            text-align : left;
        }
        .auto-style24
        {
            height: 23px;
            width: 86px;
            text-align : left;
        }
        .auto-style25
        {
            height: 38px;
            width: 86px;
            text-align : left;
        }
        .auto-style26
        {
            width: 86px;
            height: 36px;
        }
        .auto-style27
        {
            width: 86px;
            height: 18px;
        }
        .auto-style28
        {
            width: 86px;
            height: 40px;
        }
        .auto-style29
        {
            width: 100%;
        }
        .auto-style32
        {
            width: 388px;
            text-align: center;
        }
        .auto-style34
        {
            width: 388px;
            height: 26px;
        }
        .auto-style35
        {
            width: 110px;
            height: 20px;
        }
        .auto-style36
        {
            width: 388px;
            text-align: left;
            height: 20px;
        }
        .auto-style37
        {
            height: 20px;
        }
        .auto-style38
        {
            width: 110px;
            height: 38px;
        }
        .auto-style39
        {
            width: 388px;
            text-align: center;
            height: 38px;
        }
        .auto-style40
        {
            width: 110px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <p>
    </p>
    <table class="style1">
        <tr>
            <td class="auto-style7">
                </td>
            <td class="auto-style23" style="color:#000066">
                Category</td>
            <td class="auto-style6" colspan="2">
                
                     <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="380px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                     </asp:DropDownList>
                    
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button10" runat="server" Height="36px" 
                    onclick="Button10_Click1" Text="&gt;&gt;&gt;&gt;" Width="117px" 
                    Font-Bold="True"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  BorderWidth="1px" />
                             </td>
            <td class="auto-style10">
                </td>
        </tr>
        <tr>
            <td class="style64">
                &nbsp;</td>
            <td class="auto-style24" style="color:#000066">
                Service </td>
            <td class="style48" colspan="2">
                
                     <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCFFFF" 
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="378px" ReadOnly="True" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
            </td>
            <td class="style49">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style50">
                </td>
        </tr>
        <tr>
            <td class="style66">
                &nbsp;</td>
            <td class="auto-style25" style="color:#000066">
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
            <td class="auto-style26" style="color:#000066; text-align: left;">
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
            <td class="auto-style27">
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
            <td class="auto-style28">
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
            <td class="auto-style21">
            </td>
            <td class="auto-style22">
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
            <td>
            </td>
        </tr>
        <tr>
            <td class="style89">
                &nbsp;</td>
            <td class="style90">
            </td>
            <td class="style91">
            </td>
        </tr>
        <tr>
            <td class="style89">
                &nbsp;</td>
            <td class="style90">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style29">
                        <tr>
                            <td class="style71">Category</td>
                            <td class="auto-style34">
                                <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" Width="380px">
                                </asp:DropDownList>
                            </td>
                            <td class="style70"></td>
                        </tr>
                        <tr>
                            <td class="auto-style38">ID Service</td>
                            <td class="auto-style39">
                                <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Groove" BorderWidth="1px" Height="30px" style="margin-bottom: 0px" Width="378px"></asp:TextBox>
                            </td>
                            <td class="style62"></td>
                        </tr>
                        <tr>
                            <td class="auto-style35">Service</td>
                            <td class="auto-style36">
                                <asp:TextBox ID="TextBox9" runat="server" BorderStyle="Groove" BorderWidth="1px" Height="30px" Width="378px"></asp:TextBox>
                            </td>
                            <td class="auto-style37"></td>
                        </tr>
                        <tr>
                            <td class="auto-style40">&nbsp;</td>
                            <td class="auto-style32">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style38"></td>
                            <td class="auto-style39">
                                <asp:Button ID="Button11" runat="server" Height="34px" OnClick="Button11_Click2" style="text-align: center" Text="Save" Width="140px" />
                            </td>
                            <td class="style62">
                                <asp:Button ID="Button13" runat="server" Height="35px" OnClick="Button13_Click1" Text="Button" Width="109px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style40">&nbsp;</td>
                            <td class="auto-style32">
                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="392px">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style91">
                &nbsp;</td>
        </tr>
    </table>

            </asp:Content>

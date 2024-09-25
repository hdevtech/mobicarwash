<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ProductSort.aspx.cs" Inherits="MobiWebApplication.WebForm38" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 99%;
    }
        .style21
        {
            height: 38px;
            width: 153px;
            text-align:left;
            
        }
        .style22
        {
            height: 31px;
            width: 153px;
            text-align:left;
            
        }
        .style24
        {
            height: 30px;
            width: 153px;
            text-align:left;
            
        }
        .style30
        {
            height: 38px;
            width: 396px;
        }
        .style31
        {
            height: 31px;
            width: 396px;
        }
        .style33
        {
            height: 30px;
            width: 396px;
        }
        .style62
        {
            height: 32px;
            width: 153px;
            text-align: left;
        }
        .style68
        {
            height: 32px;
            width: 16%;
        }
        .style83
        {
            height: 28px;
            width: 153px;
            text-align: left;
        }
        .style84
        {
            height: 28px;
            width: 396px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        .style87
        {
            height: 32px;
            width: 127px;
        }
        .style89
        {
            height: 28px;
            width: 127px;
        }
        .style90
        {
            height: 38px;
            width: 127px;
        }
        .style91
        {
            height: 31px;
            width: 127px;
        }
        .style92
        {
            height: 30px;
            width: 127px;
        }
        .style106
        {
            height: 74px;
            width: 127px;
        }
        .style107
        {
            height: 74px;
            width: 153px;
            text-align: left;
        }
        .style108
        {
            height: 74px;
            width: 396px;
           
           
        }
        .style110
        {
            height: 32px;
            width: 298px;
        }
        .style115
        {
            height: 8px;
            width: 127px;
        }
        .style116
        {
            height: 8px;
            width: 153px;
            text-align: left;
        }
        .style117
        {
            height: 8px;
            width: 396px;
        }
        .style118
        {
            width: 103%;
        height: 208px;
    }
        .style122
        {
            width: 910px;
        }
        .style123
        {
            height: 4px;
            width: 127px;
        }
        .style124
        {
            height: 4px;
            width: 153px;
            text-align: left;
        }
        .style125
        {
            height: 4px;
            width: 396px;
        }
        .style127
        {
            height: 20px;
            width: 153px;
        }
        .style128
        {
            height: 20px;
        }
        .style129
        {
            height: 20px;
            width: 127px;
        }
        .style130
        {
            height: 20px;
            width: 16%;
        }
        .style131
        {
            height: 20px;
            width: 298px;
        }
        .style132
        {
            height: 13px;
            width: 127px;
        }
        .style133
        {
            height: 13px;
            width: 153px;
        }
        .style134
        {
            height: 13px;
        }
        .style135
        {
            height: 13px;
            width: 16%;
        }
        .style136
        {
            height: 13px;
            width: 298px;
        }
        .style137
        {
            height: 32px;
            width: 140px;
        }
        .auto-style15
    {
        height: 214px;
        width: 12px;
    }
    .auto-style16
    {
        height: 214px;
        width: 396px;
    }
        .auto-style4
        {
            width: 98%;
            height: 187px;
        }
        .auto-style48
        {
            width: 268px;
            height: 27px;
        }
        .auto-style49
        {
            width: 197px;
            height: 27px;
        }
        .auto-style98
        {
            height: 41px;
            width: 226px;
        }
        .auto-style114
        {
            width: 46px;
            cursor: pointer;
            height: 41px;
        }
        .auto-style120
        {
            cursor: pointer;
            height: 41px;
        }
        .auto-style121
        {
            height: 89px;
        }
        .auto-style122
        {
            width: 100%;
        }
        .auto-style129
        {
            height: 99px;
        }
        .auto-style164
        {
            height: 41px;
            width: 210px;
        }
        .auto-style172
        {
            width: 39px;
            cursor: pointer;
            height: 41px;
        }
        .auto-style181
        {
            height: 214px;
            width: 145px;
        }
        .auto-style182
        {
            width: 210px;
            height: 52px;
        }
        .auto-style183
        {
            width: 268px;
            height: 52px;
            text-align: center;
        }
        .auto-style184
        {
            width: 197px;
            height: 52px;
        }
        .auto-style185
        {
            width: 210px;
            height: 27px;
        }
        .auto-style189
        {
            width: 6px;
        }
        .auto-style190
        {
            width: 6px;
            height: 99px;
        }
        .auto-style191
        {
            width: 856px;
        }
        .auto-style192
        {
            height: 99px;
            width: 856px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <table class="style1">
        <tr>
            <td class="auto-style15">
                </td>
            <td class="auto-style181">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
               
                </td>
            <td class="auto-style16">
            <asp:Panel ID="Panel4" runat="server" Height="246px" Width="457px" BackColor="#33CCCC" CssClass="Panel1Registration">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style182">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="auto-style183" colspan="4">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="White" style="text-align: center; font-size: medium" Text="STOCK DISTRIBUTION"></asp:Label>
                        </td>
                        <td class="auto-style184">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style185">
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Staff"></asp:Label>
                        </td>
                        <td class="auto-style48" colspan="4">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="combobox" ForeColor="Navy" Height="41px" Width="246px">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style49">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style185">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Product"></asp:Label>
                        </td>
                        <td class="auto-style48" colspan="4">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="combobox" ForeColor="Navy" Height="41px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="246px">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style49">
                            <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style185">
                            &nbsp;</td>
                        <td class="auto-style48" colspan="2">
                            <asp:TextBox ID="TextBox11" runat="server" BorderColor="#003366" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Quantity" Width="122px"></asp:TextBox>
                        </td>
                        <td class="auto-style48" colspan="2">
                            <asp:TextBox ID="TextBox13" runat="server" BorderColor="#003366" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Price" Width="115px"></asp:TextBox>
                        </td>
                        <td class="auto-style49">
                            <asp:TextBox ID="TextBox12" runat="server" Visible="False" Width="63px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style164">
                            <asp:Button ID="Button8" runat="server" Height="40px" onmouseout="this.style.backgroundColor='#3399FF'" onmouseover="this.style.backgroundColor='DodgerBlue'" OnClick="Button8_Click" Text="Stock Entry" Width="99px" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                        </td>
                        <td class="auto-style120">
                            <asp:Button ID="Button5" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button5_Click" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Save" Width="127px" />
                        </td>
                        <td class="auto-style114" colspan="2">
                            &nbsp;</td>
                        <td class="auto-style172">
                            <asp:Button ID="Button7" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button4_Click1" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Delete" Width="110px" />
                        </td>
                        <td class="auto-style98">
                            <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="auto-style121" colspan="3">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style189">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style191">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style190"></td>
                            <td class="auto-style129">&nbsp;</td>
                            <td class="auto-style192">
                                <asp:GridView ID="gvInformation0" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Height="56px" style="margin-left: 0px" Width="854px" OnSelectedIndexChanged="gvInformation0_SelectedIndexChanged">
                                    <RowStyle BackColor="PeachPuff" ForeColor="Navy" />
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="LightBlue" ForeColor="Navy" />
                                      <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkView0" ForeColor="White"  runat="server" CommandArgument='<%# Eval("IdRoad")%>' OnClick="lnk_OnClick">Delete</asp:LinkButton>
                                            </ItemTemplate>
                                             <ControlStyle BackColor="#339966" />
                                                    <ItemStyle BackColor="#339966" />
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                            <td class="auto-style129">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style189">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style191">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ProductEntry.aspx.cs" Inherits="MobiWebApplication.WebForm36" %>
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
        height: 237px;
        width: 12px;
    }
    .auto-style16
    {
        height: 237px;
        width: 396px;
    }
        .auto-style4
        {
            width: 99%;
            height: 155px;
        }
        .auto-style48
        {
            width: 268px;
            height: 27px;
            text-align:left;
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
        .auto-style127
        {
            width: 10px;
            height: 99px;
        }
        .auto-style128
        {
            width: 263px;
            height: 99px;
        }
        .auto-style129
        {
            height: 99px;
        }
        .auto-style160
        {
            width: 190px;
            height: 27px;
        }
        .auto-style163
        {
            width: 81px;
            cursor: pointer;
            height: 41px;
        }
        .auto-style164
        {
            height: 41px;
            width: 190px;
        }
        .auto-style172
        {
            width: 22px;
            cursor: pointer;
            height: 41px;
        }
        .auto-style176
        {
            width: 9px;
        }
        .auto-style177
        {
            width: 9px;
            height: 99px;
        }
        .auto-style178
        {
            width: 10px;
        }
        .auto-style180
        {
            width: 288px;
        }
        .auto-style181
        {
            width: 268px;
            height: 27px;
            text-align: center;
        }
        .auto-style182
        {
            width: 190px;
            height: 27px;
            text-align: center;
        }
        .auto-style183
        {
            width: 190px;
            height: 14px;
        }
        .auto-style184
        {
            width: 268px;
            height: 14px;
            text-align: left;
        }
        .auto-style185
        {
            width: 197px;
            height: 14px;
        }
        .auto-style186
        {
            width: 197px;
            height: 27px;
            text-align: center;
        }
        .auto-style187
        {
            width: 190px;
            height: 5px;
        }
        .auto-style188
        {
            width: 268px;
            height: 5px;
            text-align: left;
        }
        .auto-style189
        {
            width: 197px;
            height: 5px;
        }
        .auto-style190
        {
            width: 263px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <table class="style1">
        <tr>
            <td class="auto-style15">
                &nbsp;</td>
            <td class="auto-style15">
            <asp:Panel ID="Panel2" runat="server" Height="178px" Width="385px" BackColor="#33CCCC" CssClass="Panel1Registration">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style182"></td>
                        <td class="auto-style181" colspan="3">
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="White" style="text-align: center; font-size: medium" Text="NEW PRODUCT"></asp:Label>
                        </td>
                        <td class="auto-style49"></td>
                    </tr>
                    <tr>
                        <td class="auto-style183"></td>
                        <td class="auto-style184" colspan="3"></td>
                        <td class="auto-style185"></td>
                    </tr>
                    <tr>
                        <td class="auto-style160">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Product"></asp:Label>
                        </td>
                        <td class="auto-style48" colspan="3">
                            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#003366" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Product Names" Width="238px"></asp:TextBox>
                        </td>
                        <td class="auto-style49"></td>
                    </tr>
                    <tr>
                        <td class="auto-style164"></td>
                        <td class="auto-style120">
                            <asp:Button ID="Button1" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button1_Click" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Save" Width="153px" />
                        </td>
                        <td class="auto-style114">
                            <asp:Button ID="Button3" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button3_Click" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Update" Width="86px" />
                        </td>
                        <td class="auto-style163">
                            &nbsp;</td>
                        <td class="auto-style98"></td>
                    </tr>
                    <tr>
                        <td class="auto-style164">&nbsp;</td>
                        <td class="auto-style120" colspan="2">
                            <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="63px"></asp:TextBox>
                            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style163">
                            <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style98">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
               
                </td>
            <td class="auto-style16">
            <asp:Panel ID="Panel4" runat="server" Height="177px" Width="383px" BackColor="#33CCCC" CssClass="Panel1Registration">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style182">
                            <br />
                        </td>
                        <td class="auto-style181" colspan="4">
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="White" style="text-align: center; font-size: medium" Text="STOCK ENTRY"></asp:Label>
                        </td>
                        <td class="auto-style186">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style187"></td>
                        <td class="auto-style188" colspan="4"></td>
                        <td class="auto-style189"></td>
                    </tr>
                    <tr>
                        <td class="auto-style160">
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#6600CC" Text="Product"></asp:Label>
                        </td>
                        <td class="auto-style48" colspan="4">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="combobox" ForeColor="Navy" Height="41px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="246px">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style49"></td>
                    </tr>
                    <tr>
                        <td class="auto-style160">
                            &nbsp;</td>
                        <td class="auto-style48" colspan="2">
                            <asp:TextBox ID="TextBox11" runat="server" BorderColor="#003366" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Quantity" Width="122px"></asp:TextBox>
                        </td>
                        <td class="auto-style48" colspan="2">
                            <asp:TextBox ID="TextBox13" runat="server" BorderColor="#003366" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Price" Width="115px"></asp:TextBox>
                        </td>
                        <td class="auto-style49">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style164">&nbsp;</td>
                        <td class="auto-style120">
                            <asp:Button ID="Button5" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button5_Click" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Save" Width="127px" />
                        </td>
                        <td class="auto-style114" colspan="2">
                            &nbsp;</td>
                        <td class="auto-style172">
                            <asp:Button ID="Button7" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button4_Click1" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Delete" Width="110px" />
                        </td>
                        <td class="auto-style98"></td>
                    </tr>
                    <tr>
                        <td class="auto-style164">&nbsp;</td>
                        <td class="auto-style120" colspan="3">
                            <asp:TextBox ID="TextBox12" runat="server" Width="63px" Visible="False"></asp:TextBox>
                        </td>
                        <td class="auto-style172">
                            &nbsp;</td>
                        <td class="auto-style98">
                            &nbsp;</td>
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
                            <td class="auto-style178">&nbsp;</td>
                            <td class="auto-style190">&nbsp;</td>
                            <td class="auto-style176">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style127"></td>
                            <td class="auto-style128">
                                <asp:GridView ID="gvInformation" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Height="56px" Width="245px" style="margin-left: 0px" CssClass="DridViewDesign">
                                    <RowStyle BackColor="PeachPuff" ForeColor="Navy" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkView" runat="server" ForeColor="White"  CommandArgument='<%# Eval("idProduct")%>' OnClick="lnkS_OnClick">Modify</asp:LinkButton>
                                            </ItemTemplate>
                                             <ControlStyle BackColor="#339966" />
                                                    <ItemStyle BackColor="#339966" />
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="LightBlue" ForeColor="Navy" />
                                </asp:GridView>
                            </td>
                            <td class="auto-style177">&nbsp;</td>
                            <td class="auto-style129">
                                <asp:GridView ID="gvInformation0" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Height="56px" style="margin-left: 0px" Width="610px" OnSelectedIndexChanged="gvInformation0_SelectedIndexChanged">
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
                                                <asp:LinkButton ID="lnkView0" ForeColor="White" runat="server" CommandArgument='<%# Eval("IdRoad")%>' OnClick="lnk_OnClick">Delete</asp:LinkButton>
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
                            <td class="auto-style178">&nbsp;</td>
                            <td class="auto-style190">&nbsp;</td>
                            <td class="auto-style176">&nbsp;</td>
                            <td>&nbsp;</td>
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



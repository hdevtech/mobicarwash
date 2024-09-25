<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MobiWebApplication.WebForm1" Title="Untitled Page" %>
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
        width: 62px;
    }
    .auto-style16
    {
        height: 237px;
        width: 396px;
    }
    .auto-style19
    {
        height: 35px;
    }
    .auto-style21
    {
        height: 34px;
    }
    .auto-style23
    {
        height: 33px;
    }
    .auto-style29
    {
        height: 36px;
        width: 226px;
    }
    .auto-style31
    {
        height: 20px;
        width: 226px;
    }
        .auto-style4
        {
            width: 99%;
            height: 361px;
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
        .auto-style62
    {
        height: 36px;
        width: 137px;
    }
    .auto-style73
    {
        width: 268px;
        cursor: pointer;
        height: 20px;
    }
        .auto-style83
        {
            height: 26px;
        }
        .auto-style87
        {
            width: 268px;
            cursor: pointer;
            height: 23px;
        }
        .auto-style88
        {
            height: 23px;
            width: 137px;
        }
        .auto-style89
        {
            height: 23px;
            width: 226px;
        }
        .auto-style98
        {
            height: 41px;
            width: 226px;
        }
        .auto-style102
        {
            width: 268px;
            cursor: pointer;
            height: 14px;
        }
        .auto-style103
        {
            height: 14px;
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
            width: 30px;
            height: 99px;
        }
        .auto-style128
        {
            width: 767px;
            height: 99px;
        }
        .auto-style129
        {
            height: 99px;
        }
        .auto-style143
        {
            width: 268px;
            cursor: pointer;
            height: 36px;
        }
        .auto-style144
        {
            width: 30px;
        }
        .auto-style145
        {
            width: 767px;
        }
        .auto-style155
        {
            width: 226px;
            height: 43px;
        }
        .auto-style156
        {
            width: 137px;
            height: 43px;
        }
        .auto-style158
        {
            height: 41px;
            width: 137px;
        }
        .auto-style160
        {
            width: 137px;
            height: 27px;
        }
        .auto-style161
        {
            height: 20px;
            width: 137px;
        }
        .auto-style162
        {
            height: 14px;
            width: 137px;
        }
        .auto-style163
        {
            width: 81px;
            cursor: pointer;
            height: 41px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <table class="style1">
        <tr>
            <td class="auto-style15">
                <asp:Panel ID="Panel1" runat="server" BackColor="#00FF99" Height="368px" Width="218px" CssClass="Panel1Registration">
                    <table class="style118">
                        <tr>
                            <td class="auto-style83"></td>
                            <td class="auto-style83">
                                <asp:Button ID="Button11" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" onclick="Button11_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#5D7B9D'" Text="Service" Width="184px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19"></td>
                            <td class="auto-style19">
                                <asp:Button ID="Button17" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" OnClick="Button17_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#5D7B9D'" Text="Staff Credit" Width="184px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19"></td>
                            <td class="auto-style19">
                                <asp:Button ID="Button5" runat="server" BackColor="#3399FF" BorderStyle="None" Font="Agency FB" Font-Bold="True" ForeColor="White" Height="35px" onclick="Button5_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#5D7B9D'" Text="Stock Out" Width="184px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21"></td>
                            <td class="auto-style21">
                                <asp:Button ID="Button18" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" OnClick="Button18_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#5D7B9D'" Text="Expenses" Width="184px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23"></td>
                            <td class="auto-style23">
                                <asp:Button ID="Button12" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" onclick="Button12_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#5D7B9D'" Text="Client Credit" Width="184px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button16" runat="server" BackColor="#3399FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" onclick="Button13_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#5D7B9D'" Text="Start a Day" Width="184px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button6" runat="server" BackColor="#006699" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="35px" onclick="Button6_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#5D7B9D'" Text="Service Mobile" Width="184px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style128"></td>
                            <td class="style128"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
               
                </td>
            <td class="auto-style16">
            <asp:Panel ID="Panel2" runat="server" Height="365px" Width="629px" BackColor="#33CCCC" CssClass="Panel1Registration">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style160">
                            <asp:Label ID="Label4" runat="server" ForeColor="#6600CC" Font-Bold="True" Text="Client Name:"></asp:Label>
                        </td>
                        <td class="auto-style48" colspan="3">
                            <asp:TextBox ID="TextBox1" placeholder="Enter Client Name" runat="server" ForeColor="Navy" BorderStyle="Solid" Height="41px" Width="385px" CssClass="input" BorderColor="#003366" OnTextChanged="TextBox1_TextChanged1"></asp:TextBox>
                        </td>
                        <td class="auto-style49">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style156">
                            <asp:Label ID="Label5" runat="server" ForeColor="#6600CC" Font-Bold="True" Text="Contact No:"></asp:Label>
                        </td>
                        <td class="auto-style155" colspan="3">
                            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Enter Client Contact" Width="385px" BorderColor="#003366" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style155"></td>
                    </tr>
                    <tr>
                        <td class="auto-style88">
                            <asp:Label ID="Label6" runat="server" ForeColor="#6600CC" Font-Bold="True" Text="Vehicle Type:"></asp:Label>
                        </td>
                        <td class="auto-style87" colspan="3">
                            <asp:TextBox ID="TextBox7" runat="server" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Enter Vehicle Type" Width="385px" BorderColor="#003366"></asp:TextBox>
                        </td>
                        <td class="auto-style89"></td>
                    </tr>
                    <tr>
                        <td class="auto-style62">
                            <asp:Label ID="Label7" runat="server" ForeColor="#6600CC" Font-Bold="True" Text="Plate No:"></asp:Label>
                        </td>
                        <td class="auto-style143" colspan="3">
                            <asp:TextBox ID="TextBox8" runat="server" BorderStyle="Solid" CssClass="input" ForeColor="Navy" Height="41px" placeholder="Enter Plate No" Width="385px" BorderColor="#003366"></asp:TextBox>
                        </td>
                        <td class="auto-style29">
                            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style161">
                            <asp:Label ID="Label8" runat="server" ForeColor="#6600CC" Font-Bold="True" Text="Category:"></asp:Label>
                        </td>
                        <td class="auto-style73" colspan="3">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="41px" ForeColor="Navy" onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="385px" CssClass="combobox">
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style31">
                            <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style162"></td>
                        <td class="auto-style102" colspan="3"></td>
                        <td class="auto-style103"></td>
                    </tr>
                    <tr>
                        <td class="auto-style158"></td>
                        <td class="auto-style120">
                            <asp:Button ID="Button1" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button1_Click" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Save" Width="139px" />
                        </td>
                        <td class="auto-style114">
                            <asp:Button ID="Button3" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button3_Click" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Update" Width="121px" />
                        </td>
                        <td class="auto-style163">
                            <asp:Button ID="Button4" runat="server" BackColor="#00CC66" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="40px" onclick="Button4_Click1" onmouseout="this.style.backgroundColor='#00CC66'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Delete" Width="127px" />
                        </td>
                        <td class="auto-style98"></td>
                    </tr>
                    <tr>
                        <td class="auto-style158">&nbsp;</td>
                        <td class="auto-style120" colspan="2">
                            <asp:TextBox ID="TextBox9" runat="server" BorderColor="#99FF33" BorderStyle="None" CssClass="inputSearch" Height="41px" placeholder="      Search ...  " Width="256px"></asp:TextBox>
                        </td>
                        <td class="auto-style163">
                            <asp:Button ID="Button2" runat="server" BackColor="#3399FF" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="46px" onclick="Button2_Click1" onmouseout="this.style.backgroundColor='#4CAF50'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Search" Width="121px" />
                        </td>
                        <td class="auto-style98">
                            <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="63px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="auto-style121" colspan="2">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style144">&nbsp;</td>
                            <td class="auto-style145">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style127"></td>
                            <td class="auto-style128">
                                <asp:GridView ID="gvInformation" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Height="56px" Width="857px" style="margin-left: 0px">
                                    <RowStyle BackColor="PeachPuff" ForeColor="Navy" />
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idClient")%>' OnClick="lnk_OnClick">Modify</asp:LinkButton>
                                            </ItemTemplate>
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
                            <td class="auto-style129"></td>
                        </tr>
                        <tr>
                            <td class="auto-style144">&nbsp;</td>
                            <td class="auto-style145">&nbsp;</td>
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

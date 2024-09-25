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
            text-align: center;
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
        .auto-style4
        {
            height: 38px;
            width: 152px;
            text-align: right;
        }
        .auto-style5
        {
            height: 23px;
            width: 152px;
            text-align: right;
        }
        .auto-style6
        {
            height: 36px;
            width: 152px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <p>
    </p>
    <table class="style1">
        <tr>
            <td class="style84">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            <td class="style85">
                </td>
            <td class="style86" colspan="2">
                
                                                                                                <br />
                
                                                                                                <asp:Label runat="server" Font-Size="X-Large"  Font-Bold="True" ForeColor="Orange" ID="Label4">ADD STAFF INFORMATION</asp:Label>
                                                                                                <br />
                                                                                            <br />
                
                     </td>
            <td class="style83">
                </td>
            <td class="style87">
                </td>
        </tr>
        <tr>
            <td class="style63">
                &nbsp;</td>
            <td class="auto-style6" style="color:#000066">
                                                                                                <asp:Label runat="server" Font-Bold="True" ForeColor="White">Full Names</asp:Label>
                                                                                            </td>
            <td class="style43" colspan="2">
                
                     <asp:TextBox ID="TextBox8" runat="server" CssClass="BUTTOM" Height="16px" BackColor="White"
                         BorderStyle="Groove"  ontextchanged="TextBox6_TextChanged" 
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
            <td class="auto-style5" style="color:#000066">
                                                                                                <asp:Label ID="AlertLabel8" runat="server" Font-Bold="True" ForeColor="White">Contact No</asp:Label>
                                                                                            </td>
            <td class="style48" colspan="2">
                
                     <asp:TextBox ID="TextBox7" runat="server" CssClass="BUTTOM" Height="16px" BackColor="White"
                         BorderStyle="Groove"  ontextchanged="TextBox6_TextChanged" 
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
            <td class="auto-style4" style="color:#000066">
                                                                                                <asp:Label ID="AlertLabel9" runat="server" Font-Bold="True" ForeColor="White">NID</asp:Label>
                                                                                            </td>
            <td class="style60" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove" ForeColor="Navy" CssClass="BUTTOM" BackColor="White"
                    Height="16px" Width="359px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
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


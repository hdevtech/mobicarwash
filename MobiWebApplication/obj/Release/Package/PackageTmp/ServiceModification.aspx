<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ServiceModification.aspx.cs" Inherits="MobiWebApplication.WebForm12" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 97%;
    }
        .style7
        {
            width: 136px;
            }
        .style8
        {
            width: 110px;
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
        .style68
    {
        width: 117px;
        height: 18px;
    }
    .style69
    {
        width: 117px;
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
            }
        .style77
        {
            width: 148px;
            height: 18px;
        }
        .style78
        {
            width: 148px;
            }
        .style81
        {
            height: 5px;
            width: 117px;
            text-align : left;
        }
        .style82
        {
            height: 5px;
            width: 136px;
            text-align : left;
        }
        .style83
        {
            width: 342px;
            height: 5px;
        }
        .style84
        {
            width: 148px;
            height: 5px;
        }
        .style85
        {
            height: 5px;
        }
        .style86
        {
            height: 35px;
            width: 117px;
            text-align : left;
        }
        .style87
        {
            height: 35px;
            width: 136px;
            text-align : left;
        }
        .style111
        {
            width: 117px;
            height: 39px;
        }
        .style112
        {
            width: 136px;
            height: 39px;
        }
        .style113
        {
            width: 342px;
            height: 39px;
        }
        .style114
        {
            width: 148px;
            height: 39px;
        }
        .style115
        {
            height: 39px;
        }
        .style116
        {
            width: 117px;
            height: 25px;
        }
        .style117
        {
            width: 136px;
            height: 25px;
        }
        .style129
        {
            height: 32px;
            width: 117px;
            text-align : left;
        }
        .style130
        {
            height: 32px;
            width: 136px;
            text-align : left;
        }
        .style131
        {
            width: 342px;
            height: 32px;
        }
        .style132
        {
            width: 148px;
            height: 32px;
        }
        .style133
        {
            height: 32px;
        }
        .style134
        {
            width: 342px;
            height: 35px;
        }
        .style135
        {
            width: 148px;
            height: 35px;
        }
        .style136
        {
            height: 35px;
        }
        .style142
        {
            width: 117px;
            height: 17px;
        }
        .style143
        {
            width: 136px;
            height: 17px;
        }
        .style144
        {
            width: 342px;
            height: 17px;
        }
        .style145
        {
            width: 148px;
            height: 17px;
        }
        .style146
        {
            height: 17px;
        }
        .style147
        {
            width: 117px;
            height: 15px;
        }
        .style148
        {
            width: 136px;
            height: 15px;
        }
        .style149
        {
            width: 342px;
            height: 15px;
        }
        .style150
        {
            width: 148px;
            height: 15px;
        }
        .style151
        {
            height: 15px;
        }
        .style152
        {
            width: 342px;
            height: 25px;
        }
        .style153
        {
            width: 148px;
            height: 25px;
        }
        .style154
        {
            height: 25px;
        }
        .style155
        {
            height: 19px;
            width: 117px;
            text-align : left;
        }
        .style156
        {
            height: 19px;
            width: 136px;
            text-align : left;
        }
        .style157
        {
            width: 342px;
            height: 19px;
        }
        .style158
        {
            width: 148px;
            height: 19px;
        }
        .style159
        {
            height: 19px;
        }
        .auto-style6
        {
            width: 184px;
            height: 3px;
        }
        .auto-style9
        {
            height: 3px;
            width: 69px;
        }
        .auto-style10
        {
            width: 117px;
            height: 3px;
        }
        .auto-style11
        {
            width: 136px;
            height: 3px;
        }
        .auto-style12
        {
            width: 148px;
            height: 3px;
        }
        .auto-style13
        {
            height: 3px;
        }
        .auto-style14
        {
            width: 117px;
            text-align : left;
        }
        .auto-style15
        {
            width: 136px;
            text-align : left;
        }
        .auto-style16
        {
            width: 342px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <p>
    </p>
    <table class="style1">
        <tr>
            <td class="auto-style14">
                </td>
            <td class="auto-style15">
                </td>
            <td class="auto-style16" colspan="2">
                
                     </td>
            <td class="style78">
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style129">
                </td>
            <td class="style130" style="color:Navy">
                Plate No</td>
            <td class="style131" colspan="2">
                
                     <asp:TextBox ID="TextBox8" runat="server" BackColor="#CCFFFF" ForeColor="Navy" 
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" ReadOnly="True"></asp:TextBox>
                    
            </td>
            <td class="style132">
            </td>
            <td class="style133">
                </td>
        </tr>
        <tr>
            <td class="style86">
                </td>
            <td class="style87" style="color:Navy">
                Vehicle Type</td>
            <td class="style134" colspan="2">
                
                     <asp:TextBox ID="TextBox7" runat="server" BackColor="#CCFFFF" ForeColor="Navy" 
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" ReadOnly="True"></asp:TextBox>
                    
            </td>
            <td class="style135">
            </td>
            <td class="style136">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style147">
                <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None" ForeColor="PowderBlue" 
                    Width="79px" ReadOnly="True" BackColor="PowderBlue" Visible="False"></asp:TextBox>
                </td>
            <td class="style148" style="color:Navy">
                Service</td>
            <td class="style149" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="360px"  ForeColor="Navy" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style150">
                </td>
            <td class="style151">
                </td>
        </tr>
        <tr>
            <td class="style111">
                <asp:TextBox ID="TextBox11" runat="server" Width="47px" BorderStyle="None" 
                    ForeColor="PowderBlue" ReadOnly="True" BackColor="PowderBlue" Visible="False"></asp:TextBox>
                </td>
            <td class="style112" style="color:Navy">
                Washman</td>
            <td class="style113" colspan="2">
                <asp:DropDownList ID="DropDownList4" runat="server" Height="30px" ForeColor="Navy" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged" Width="360px">
                </asp:DropDownList>
            </td>
            <td class="style114">
                </td>
            <td class="style115">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="16px" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style10">
               
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="38px" onclick="Button1_Click" style="margin-left: 0px" 
                    Text="Update" Width="280px" BorderWidth="1px" />                    
                 
            </td>
            <td class="auto-style9">
                <asp:Button ID="Button2" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="38px"  style="margin-left: 0px" 
                    Text="Refresh" Width="83px" BorderWidth="1px" OnClick="Button2_Click1" />                    
                 
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style13">
                </td>
        </tr>
</table>
    <p>
    </p>
    <asp:GridView ID="gvServedModi" runat="server" Width="920px">
         <Columns>
                     <asp:TemplateField>
                     <ItemTemplate>
                      <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idRecord")%>' OnClick="lnk_OnClick">Update</asp:LinkButton>
                       </ItemTemplate>
            </asp:TemplateField>    
            </Columns>  
    </asp:GridView>
    <br />
    
            </asp:Content>


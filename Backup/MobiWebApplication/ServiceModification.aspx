<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ServiceModification.aspx.cs" Inherits="MobiWebApplication.WebForm12" Title="Untitled Page" %>
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
            <td class="style81">
                </td>
            <td class="style82">
                </td>
            <td class="style83" colspan="2">
                
                     </td>
            <td class="style84">
                </td>
            <td class="style85">
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
                </td>
        </tr>
        <tr>
            <td class="style155">
                <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None" ForeColor="PowderBlue" 
                    Width="79px" ReadOnly="True" BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style156" style="color:Navy">
                Category</td>
            <td class="style157" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove" ForeColor="Navy" 
                    Height="30px" ReadOnly="True" Width="359px" BackColor="#CCFFFF"></asp:TextBox>
            </td>
            <td class="style158">
            </td>
            <td class="style159">
                </td>
        </tr>
        <tr>
            <td class="style142">
                <asp:TextBox ID="TextBox11" runat="server" Width="47px" BorderStyle="None" 
                    ForeColor="PowderBlue" ReadOnly="True" BackColor="PowderBlue"></asp:TextBox>
                </td>
            <td class="style143">
                &nbsp;</td>
            <td class="style144" colspan="2">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="30px" Width="360px" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                    AutoPostBack="True" Visible="False">
                </asp:DropDownList>
            </td>
            <td class="style145">
                </td>
            <td class="style146">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style147">
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
                </td>
        </tr>
        <tr>
            <td class="style116">
                </td>
            <td class="style117" style="color:Navy">
                Payment</td>
            <td class="style152" colspan="2">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="30px" Width="360px" ForeColor="Navy" > 
                </asp:DropDownList>
            </td>
            <td class="style153">
                </td>
            <td class="style154">
                </td>
        </tr>
        <tr>
            <td class="style68">
                </td>
            <td class="style22">
                &nbsp;</td>
            <td class="style23" colspan="2">
                </td>
            <td class="style77">
                </td>
            <td class="style30">
                </td>
        </tr>
        <tr>
            <td class="style69">
               
                <asp:TextBox ID="TextBox9" runat="server" AutoPostBack="True" 
                    BorderStyle="Groove" Height="36px" ontextchanged="TextBox9_TextChanged"></asp:TextBox>
               
                </td>
            <td class="style7">
                <asp:Button ID="Button12" runat="server" Height="38px" 
                    onclick="Button12_Click1" Text="Search" Width="149px" 
                    onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                    BorderWidth="1px" />
            </td>
            <td class="style75">
                <asp:Button ID="Button1" runat="server" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Height="38px" onclick="Button1_Click" style="margin-left: 0px" 
                    Text="Update" Width="192px" BorderWidth="1px" />                    
                 
            </td>
            <td class="style8">
                <asp:Button runat="server" Height="39px"    
                              
                    Width="163px" onclick="Button10_Click"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                    BorderWidth="1px" />
            </td>
            <td class="style78">
                <asp:Button runat="server" Height="39px" 
                 onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" Font-Bold="True"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                    Width="150px" BorderWidth="1px" />
            </td>
            <td>
                </td>
        </tr>
</table>
    <p>
    </p>
    <br />
    <asp:GridView ID="gvServedModi" runat="server" Height="61px" Width="932px" 
        CellPadding="8" ForeColor="#333333" GridLines="None">
        
         <Columns>
                     <asp:TemplateField>
                     <ItemTemplate>
                      <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idRecord")%>' OnClick="lnk_OnClick">Modify</asp:LinkButton>
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


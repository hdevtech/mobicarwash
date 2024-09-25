<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ConfirmService.aspx.cs" Inherits="MobiWebApplication.WebForm3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 47px;
        }
        .style2
        {
            width: 357px;
        }
        .style25
        {
            width: 115px;
            height: 33px;
        }
        .style26
        {
            width: 106px;
            height: 33px;
            text-align: left;
        }
        .style27
        {
            width: 357px;
            height: 33px;
        }
        .style28
        {
            height: 33px;
        }
        .style29
        {
            width: 115px;
            height: 24px;
        }
        .style30
        {
            width: 106px;
            height: 24px;
            text-align: left;
        }
        .style31
        {
            width: 357px;
            height: 24px;
        }
        .style32
        {
            height: 24px;
        }
        .style33
        {
            width: 115px;
            height: 28px;
        }
        .style34
        {
            width: 106px;
            height: 28px;
            text-align: left;
        }
        .style35
        {
            width: 357px;
            height: 28px;
        }
        .style36
        {
            height: 28px;
        }
        .style37
        {
            width: 115px;
            height: 27px;
        }
        .style38
        {
            width: 106px;
            height: 27px;
            text-align: left;
        }
        .style39
        {
            width: 357px;
            height: 27px;
        }
        .style40
        {
            height: 27px;
        }
        .style41
        {
            width: 115px;
            height: 21px;
        }
        .style42
        {
            width: 106px;
            height: 21px;
            text-align: left;
        }
        .style43
        {
            width: 357px;
            height: 21px;
        }
        .style44
        {
            height: 21px;
        }
        .style45
        {
            width: 106px;
            text-align: left;
        }
        .style47
        {
            height: 21px;
            width: 120px;
        }
        .style48
        {
            height: 27px;
            width: 120px;
        }
        .style49
        {
            height: 33px;
            width: 120px;
        }
        .style50
        {
            width: 120px;
        }
        .style51
        {
            height: 24px;
            width: 120px;
        }
        .style52
        {
            height: 28px;
            width: 120px;
        }
        .style54
        {
            width: 115px;
        }
        .style56
        {
            width: 97px;
            height: 34px;
        }
        .style57
        {
            width: 36px;
            height: 34px;
        }
        .style72
        {
            height: 18px;
        }
        .style87
        {
            height: 12px;
            width: 4px;
        }
        .style88
        {
            width: 66px;
            height: 12px;
        }
        .style89
        {
            height: 12px;
            width: 177px;
        }
        .style97
        {
            height: 12px;
        }
        .style98
        {
            width: 115px;
            height: 8px;
        }
        .style100
        {
            width: 357px;
            height: 8px;
        }
        .style101
        {
            height: 8px;
            width: 120px;
        }
        .style102
        {
            height: 8px;
        }
        .style103
        {
            width: 110px;
            height: 34px;
        }
        .style104
        {
            width: 115px;
            height: 34px;
        }
        .style105
        {
            width: 120px;
            height: 34px;
        }
        .style106
        {
            height: 34px;
        }
        .style110
        {
            width: 115px;
            height: 13px;
        }
        .style111
        {
            width: 106px;
            height: 13px;
            text-align: left;
        }
        .style112
        {
            width: 357px;
            height: 13px;
        }
        .style113
        {
            height: 13px;
            width: 120px;
        }
        .style114
        {
            height: 13px;
        }
        .style118
        {
            height: 12px;
            width: 7px;
        }
        .style119
        {
            height: 12px;
            width: 161px;
        }
        .style127
        {
            width: 115px;
            height: 82px;
        }
        .style128
        {
            width: 357px;
            height: 82px;
        }
        .style129
        {
            height: 82px;
            width: 120px;
        }
        .style130
        {
            height: 82px;
        }
        .style131
        {
            width: 106px;
            height: 82px;
        }
        .style132
        {
            width: 106px;
            height: 8px;
        }
        .style133
        {
            width: 106px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
 
    <table class="style1">
        <tr>
            <td class="style118">
            </td>
            <td class="style119">
                <asp:Button ID="Button3" runat="server" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" Text="Registration" Width="166px" Font-Bold="True"
                    ForeColor="White" onclick="Button3_Click"/>
            </td>
            <td class="style87">
                <asp:Button ID="Button4" runat="server" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"  
                    BorderStyle="None" Height="35px" Text="Service Payment" Width="197px" Font-Bold="True"
                    ForeColor="White" onclick="Button4_Click"/>
            </td>
            <td class="style88">
                <asp:Button ID="Button5" runat="server" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" Text="Client Credit" Width="179px" Font-Bold="True"
                    ForeColor="White" onclick="Button5_Click"/>
            </td>
            <td class="style89">
                <asp:Button ID="Button6" runat="server" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" Text="Staff Credit" Width="194px" Font-Bold="True"
                    ForeColor="White" onclick="Button6_Click"/>
            </td>
            <td class="style97">
                <asp:Button ID="Button7" runat="server" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Text="Setting" 
                    Width="163px" Font-Bold="True" onclick="Button7_Click"/>
            </td>
        </tr>
        </table>
   
   
        <br />
 
   
    <table class="style1">
        <tr>
            <td class="style127">
                </td>
            <td class="style131">
                </td>
            <td class="style128" colspan="3">
 
                <asp:GridView ID="gvInformation1" runat="server" Width="355px" CellPadding="8" 
                    ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="gvInformation1_SelectedIndexChanged">
                    <RowStyle BackColor="PeachPuff" ForeColor="#333333" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"/>
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
   
   
            </td>
            <td class="style129">
                </td>
            <td class="style130">
                </td>
        </tr>
        <tr>
            <td class="style41">
                </td>
            <td class="style42" style="color:Navy">
                Client Name</td>
            <td class="style43" colspan="3">
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="355px" style="color:#000066"
                    ontextchanged="TextBox1_TextChanged" ReadOnly="True" BackColor="#CCFFFF" 
                    BorderStyle="Groove" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style47">
                </td>
            <td class="style44">
                </td>
        </tr>
        <tr>
            <td class="style37">
                </td>
            <td class="style38" style="color:Navy">
                Contact No</td>
            <td class="style39" colspan="3">
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="355px" style="color:#000066"
                    ReadOnly="True" BackColor="#CCFFFF" BorderStyle="Groove" 
                    BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style48">
                </td>
            <td class="style40">
                </td>
        </tr>
        <tr>
            <td class="style25">
                </td>
            <td class="style26" style="color:Navy">
                Vehicle Type</td>
            <td class="style27" colspan="3">
                <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="355px" style="color:#000066"
                    ontextchanged="TextBox3_TextChanged" ReadOnly="True" BackColor="#CCFFFF" 
                    BorderStyle="Groove" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style49">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style54">
                &nbsp;</td>
            <td class="style45" style="color:Navy">
                Category</td>
            <td class="style2" colspan="3">
                <asp:TextBox ID="TextBox4" runat="server" Height="29px" Width="355px"  style="color:#000066"
                    ReadOnly="True" BackColor="#CCFFFF" BorderStyle="Groove" 
                    ontextchanged="TextBox4_TextChanged" BorderColor="#000066" 
                    BorderWidth="1px"></asp:TextBox>
            </td>
            <td class="style50">
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;</td>
            <td class="style30" style="color:Navy">
                &nbsp;</td>
            <td class="style31" colspan="3">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True"  style="color:#000066"
                    Height="23px" onselectedindexchanged="DropDownList5_SelectedIndexChanged2" 
                    Width="356px" Visible="False">
                </asp:DropDownList>
            </td>
            <td class="style51">
                </td>
            <td class="style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
                &nbsp;</td>
            <td class="style34" style="color:Navy">
                Service</td>
            <td class="style35" colspan="3">
                <asp:DropDownList ID="DropDownList6" runat="server" Height="29px" style="color:#000066"
                    onselectedindexchanged="DropDownList5_TextChanged" Width="359px">
                </asp:DropDownList>
            </td>
            <td class="style52">
                <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None" Width="79px" style="color:#000066"
                    ForeColor="White" ontextchanged="TextBox6_TextChanged" Visible="False"></asp:TextBox>
                </td>
            <td class="style36">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style110">
                <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" Width="45px" style="color:#000066"
                    ForeColor="PowderBlue" Visible="False" Height="18px" 
                    BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style111" style="color:Navy">
                Washman</td>
            <td class="style112" colspan="3">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="359px" Height="29px" style="color:#000066"
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style113">
                </td>
            <td class="style114">
                </td>
        </tr>
        <tr>
            <td class="style54">
                &nbsp;</td>
            <td class="style45" style="color:Navy">
                Payment</td>
            <td class="style2" colspan="3">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="359px" Height="29px" style="color:#000066"
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td class="style50">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style98">
                <asp:TextBox ID="TextBox6" runat="server" BorderStyle="None" Width="79px" style="color:#000066"
                    ForeColor="PowderBlue" ontextchanged="TextBox6_TextChanged" 
                    Visible="False" BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style132">
                </td>
            <td class="style100" colspan="3">
                </td>
            <td class="style101">
                </td>
            <td class="style102">
                </td>
        </tr>
        <tr>
            <td class="style104">
                <asp:TextBox ID="TextBox9" runat="server" Height="35px" Width="113px" 
                    BorderStyle="Groove" AutoPostBack="True" 
                    ontextchanged="TextBox9_TextChanged"></asp:TextBox>
                </td>
            <td class="style133">
                <asp:Button ID="Button2" runat="server" Height="38px" Text="Search" 
                    Width="113px"  onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66"  Font-Bold="True" onclick="Button2_Click" 
                    BorderWidth="1px"/>
                </td>
            <td class="style57">
                </td>
            <td class="style56">
                <asp:Button ID="Button1" runat="server" Height="38px" onclick="Button1_Click" 
                    Text="Submit" Width="276px" 
                    onmouseover="this.style.backgroundColor='DodgerBlue'" ForeColor="White" 
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" Font-Bold="True" style="margin-top: 0px" 
                    BorderWidth="1px" UseSubmitBehavior="False" />
            </td>
            <td class="style103">
                </td>
            <td class="style105">
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            <td class="style106">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style72" colspan="7">
                </td>
        </tr>
        <tr>
            <td class="style72" colspan="7">
 
    <asp:GridView ID="gvInformation" runat="server" CellPadding="8" 
        ForeColor="#333333" GridLines="None" Width="931px" Height="16px" 
            onselectedindexchanged="gvSales_SelectedIndexChanged">
            <RowStyle BackColor="PeachPuff" ForeColor="#333333" />
            <Columns>
                     <asp:TemplateField>
                     <ItemTemplate>
                      <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idClient")%>' OnClick="lnk_OnClick">Select 
                         Vehicle</asp:LinkButton>
                       </ItemTemplate>
            </asp:TemplateField>    
            </Columns>  
           
           
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
           
           
    </asp:GridView> 
   
   
            </td>
        </tr>
        </table>
</asp:Content>

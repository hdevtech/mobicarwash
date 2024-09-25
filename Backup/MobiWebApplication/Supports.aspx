<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Supports.aspx.cs" Inherits="MobiWebApplication.WebForm17" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style9
        {
            width: 180px;
            height: 76px;
            font-size:xx-large;            
            font-family:Agency FB;
            
        }
        .style10
        {
            height: 22px;
        }
        .style11
        {
            width: 197px;
            height: 45px;
        }
        .style13
        {
            height: 63px;
        }
        .style15
        {
            width: 180px;
            height: 63px;
            font-family:Agency FB;
            cursor:Hand;
        }
        .style17
        {
            height: 63px;
            width: 138px;
        }
        .style18
        {
            width: 138px;
        }
        .style20
        {
            height: 22px;
            width: 138px;
        }
        .style22
        {
            width: 190px;
            height: 63px;
        }
        .style23
        {
            width: 190px;
        }
        .style28
        {
            width: 180px;
        }
        .style30
        {
            width: 180px;
            height: 22px;
        }
        .style31
        {
            width: 190px;
            height: 22px;
        }
        .style36
        {
            width: 138px;
            height: 41px;
        }
        .style37
        {
            width: 180px;
            height: 41px;
        }
        .style38
        {
            width: 190px;
            height: 41px;
        }
        .style39
        {
            height: 41px;
        }
        .style40
        {
            width: 138px;
            height: 50px;
        }
        .style41
        {
            width: 180px;
            height: 50px;
        }
        .style42
        {
            width: 190px;
            height: 50px;
        }
        .style43
        {
            height: 50px;
        }
        .style44
        {
            height: 59px;
            width: 138px;
        }
        .style45
        {
            width: 180px;
            height: 59px;
        }
        .style46
        {
            width: 190px;
            height: 59px;
        }
        .style47
        {
            height: 59px;
        }
        .style48
        {
            height: 76px;
            width: 138px;
        }
        .style50
        {
            width: 190px;
            height: 76px;
        }
        .style51
        {
            height: 76px;
        }
        .style52
        {
            width: 138px;
            height: 35px;
        }
        .style54
        {
            width: 178px;
            height: 76px;
        }
        .style55
        {
            width: 178px;
            height: 63px;
        }
        .style56
        {
            width: 178px;
            height: 59px;
        }
        .style57
        {
            width: 178px;
            height: 41px;
        }
        .style58
        {
            width: 178px;
            height: 50px;
        }
        .style59
        {
            width: 178px;
            height: 22px;
        }
        .style60
        {
            width: 178px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style1">
        <tr>
            <td class="style48">
            </td>
            <td class="style54">
                </td>
            <td class="style9" style="color:#000066"">
                
               <asp:Label ID="Label2" runat="server" CssClass="style11" 
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="38px" Font-Bold="True"
                style="text-align: center" Text="MENU" Width="182px"></asp:Label>
                             </td>
            <td class="style50">
                </td>
            <td class="style51">
            </td>
            <td class="style51">
            </td>
        </tr>
        <tr>
            <td class="style17">
                </td>
            <td class="style55">
                <asp:Button ID="Button5" runat="server" Height="68px" onclick="Button5_Click"
                    onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'" 
                    Text="Change ServicePrice" Width="196px" BackColor="DodgerBlue" 
                    ForeColor="White" Font-Bold="True" BorderStyle="None" />
                </td>
            <td class="style15">
                <asp:Button ID="Button3" runat="server" Height="68px" Text="Add System User" 
                    onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    Width="196px" BackColor="DodgerBlue" ForeColor="White" Font-Bold="True" 
                    BorderStyle="None" onclick="Button3_Click1" />
            </td>
            <td class="style22">
                <asp:Button ID="Button4" runat="server" Height="68px" onclick="Button4_Click" 
                    onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    Text="Registration" Width="196px" BackColor="DodgerBlue" ForeColor="White" 
                    Font-Bold="True" BorderStyle="None" />
                </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style44">
                </td>
            <td class="style56">
                <asp:Button ID="Button2" runat="server" Height="68px" onclick="Button2_Click"
                    onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'" 
                    Text="Add New Staff" Width="196px" BackColor="DodgerBlue" 
                    ForeColor="White" Font-Bold="True" BorderStyle="None" />
                </td>
            <td class="style45">
                <asp:Button ID="Button6" runat="server" Text="Derivery Service" BackColor="DodgerBlue"
                   onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"  Font-Bold="True"
                    BorderStyle="None" ForeColor="White" Height="68px" Width="196px" 
                    onclick="Button6_Click" />
              
            </td>
            <td class="style46">
                <asp:Button ID="Button7" runat="server" Text="Payment" BackColor="DodgerBlue"
                    onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"  Font-Bold="True"
                    BorderStyle="None" ForeColor="White" Height="68px" Width="196px" 
                    onclick="Button7_Click" />
            </td>
            <td class="style47">
                </td>
            <td class="style47">
                </td>
        </tr>
        <tr>
            <td class="style36">
                </td>
            <td class="style57">
                <asp:Button ID="Button8" runat="server" Text="Served Vehicle" Width="196px" 
                   onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'" Font-Bold="True"
                    BackColor="DodgerBlue" BorderStyle="None" ForeColor="White" Height="68px" 
                    onclick="Button8_Click" />
            </td>
            <td class="style37">
                <asp:Button ID="Button9" runat="server" Text="Client Credit" BackColor="DodgerBlue"
                   onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"  Font-Bold="True"
                    BorderStyle="None" ForeColor="White" Height="68px" Width="196px" 
                    onclick="Button9_Click" />
            </td>
            <td class="style38">
                <asp:Button ID="Button10" runat="server" Text="Staff Credit" BackColor="DodgerBlue" 
                  onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'" Font-Bold="True"
                    BorderStyle="None" ForeColor="White" Height="68px" Width="196px" 
                    onclick="Button10_Click" />
            </td>
            <td class="style39">
                </td>
            <td class="style39">
                </td>
        </tr>
        <tr>
            <td class="style40">
            </td>
            <td class="style58">
                <asp:Button ID="Button11" runat="server" Text="Delete Service" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'" Font-Bold="True"
                    BorderStyle="None" ForeColor="White" Height="68px" Width="196px" 
                    onclick="Button11_Click" />
            </td>
            <td class="style41">
                <asp:Button ID="Button12" runat="server" Text="Expenses" BackColor="DodgerBlue" 
                   onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'" Font-Bold="True"
                    BorderStyle="None" ForeColor="White" Height="68px" Width="196px" 
                    onclick="Button12_Click" />
            </td>
            <td class="style42">
                <asp:Button ID="Button13" runat="server" Text="Reports" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#4CAF50'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'" Font-Bold="True"
                    BorderStyle="None" ForeColor="White" Height="68px" Width="196px" 
                    onclick="Button13_Click" />
            </td>
            <td class="style43">
            </td>
            <td class="style43">
            </td>
        </tr>
        <tr>
            <td class="style20">
            </td>
            <td class="style59">
            </td>
            <td class="style30">
            </td>
            <td class="style31">
            </td>
            <td class="style10">
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style52">
                </td>
            
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
            <td class="style60">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


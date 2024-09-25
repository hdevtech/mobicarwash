<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MobiWebApplication.WebForm9" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 100%;
        height: 479px;
    }
    .style7
    {
        width: 342px;
    }
    .style9
    {
            width: 93px;
            height: 25px;
        }
    .style10
    {
        width: 342px;
        height: 25px;
    }

 
    .style11
    {
        height: 23px;
        font-size:larger
    }
    .style16
    {
            width: 172px;
        }
    .style17
    {
        width: 172px;
        height: 25px;
    }
    .style36
    {
        width: 172px;
        height: 56px;
    }
    .style38
    {
            width: 93px;
            height: 56px;
        }
    .style39
    {
        width: 342px;
        height: 56px;
        font-size:x-large;
        font-family:Agency FB;
        
     
        
    }
    .style41
    {
        height: 56px;
    }
    .style42
    {
        width: 172px;
        height: 44px;
    }
    .style44
    {
            width: 93px;
            height: 44px;
        }
    .style47
    {
        height: 44px;
    }
    .style48
    {
            width: 93px;
        }
    .style60
    {
        width: 172px;
        height: 38px;
    }
    .style62
    {
        width: 93px;
        height: 38px;
    }
    .style63
    {
        width: 342px;
        height: 38px;
    }
    .style65
    {
        height: 38px;
    }
        .style66
        {
            width: 172px;
            height: 27px;
        }
        .style67
        {
            width: 93px;
            height: 27px;
        }
        .style68
        {
            width: 342px;
            height: 27px;
        }
        .style70
        {
            height: 27px;
        }
        .style71
        {
            width: 172px;
            height: 32px;
        }
        .style72
        {
            width: 93px;
            height: 32px;
        }
        .style73
        {
            width: 342px;
            height: 32px;
        }
        .style75
        {
            height: 32px;
        }
        .style80
        {
            height: 25px;
            font-size: larger;
        }
        .style88
        {
            width: 37px;
            height: 44px;
        }
        .style89
        {
            width: 28px;
            height: 44px;
        }
        .style90
        {
            width: 109px;
            height: 44px;
           
          
        }       
        .style91
        {
            width: 28px;
            height: 14px;
        }
        .style92
        {
            width: 109px;
            height: 14px;
        }
        .style93
        {
            width: 37px;
            height: 14px;
        }
        .style96
        {
            height: 14px;
        }
        .style97
        {
            width: 172px;
            height: 14px;
        }
        .style98
        {
            width: 93px;
            height: 14px;
        }
        .auto-style4
        {
            width: 100%;
            height: 328px;
        }
        .auto-style9
        {
            width: 374px;
            height: 55px;
        }
        .auto-style10
        {
            width: 184px;
            height: 55px;
        }
        .auto-style12
        {
            height: 55px;
        }
        .auto-style13
        {
            width: 184px;
            height: 407px;
        }
        .auto-style14
        {
            width: 374px;
            height: 407px;
        }
        .auto-style15
        {
            height: 407px;
        }
        .auto-style23
        {
            width: 231px;
        }
        .auto-style29
        {
            width: 197px;
        }
        .auto-style31
        {
            width: 268px;
            height: 40px;
        }
        .auto-style32
        {
            width: 197px;
            height: 40px;
        }
        .auto-style40
        {
            width: 374px;
            height: 35px;
            font-size: x-large;
            font-family: Agency FB;
        }
        .auto-style43
        {
            width: 374px;
        }
        .LoginButton
        {}
        .auto-style45
        {
            width: 268px;
            height: 13px;
        }
        .auto-style46
        {
            width: 197px;
            height: 13px;
        }
        .auto-style48
        {
            width: 268px;
            height: 6px;
        }
        .auto-style49
        {
            width: 197px;
            height: 6px;
        }
        .auto-style50
        {
            width: 184px;
            height: 35px;
        }
        .auto-style51
        {
            height: 35px;
        }
        .auto-style53
        {
            width: 184px;
        }
        .auto-style54
        {
            width: 268px;
            cursor: pointer;
            text-align: center;
            font-family:Tahoma;
            font-size:x-large;
        }
        .auto-style55
        {
            width: 231px;
            height: 26px;
        }
        .auto-style56
        {
            width: 268px;
            cursor: pointer;
            height: 26px;
        }
        .auto-style57
        {
            width: 197px;
            height: 26px;
        }
        .auto-style59
        {
            width: 268px;
            cursor: pointer;
            height: 10px;
        }
        .auto-style60
        {
            width: 231px;
            height: 10px;
        }
        .auto-style61
        {
            width: 197px;
            height: 10px;
        }
        .auto-style62
        {
            width: 231px;
            height: 87px;
        }
        .auto-style63
        {
            width: 268px;
            cursor: pointer;
            height: 87px;
            font-family:Tahoma;
            font-size:x-large;
        }
        .auto-style64
        {
            width: 197px;
            height: 87px;
        }
        .auto-style65
        {
            width: 231px;
            height: 6px;
        }
        .auto-style66
        {
            width: 231px;
            height: 13px;
        }
        .auto-style67
        {
            width: 231px;
            height: 40px;
        }
        .auto-style122
        {
            width: 99%;
        }
        .auto-style123
        {
            font-size: xx-large;
        }
        .auto-style124
        {
            height: 33px;
        }
        .auto-style125
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style1">
    <tr>
        <td class="auto-style53">
            &nbsp;</td>
        <td class="auto-style43">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style50">
            </td>

        <td class="auto-style40">
        </td>
        <td class="auto-style51">
            </td>
    </tr>
    <tr>
        <td class="auto-style13">
            </td>
        <td class="auto-style14">
            <asp:Panel ID="Panel1" runat="server" Height="376px" Width="518px" BackColor="#006666" CssClass="pannel1Login">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style54" style="color:white" Font-Bold="True">
                            <table class="auto-style122" align="center">
                                <tr>
                                    <td class="auto-style124"></td>
                                    <td class="auto-style123" rowspan="2" style="text-align: center;font-family:'Times New Roman'; color:orange; font-weight: 700;">LOGIN </td>
                                    <td class="auto-style124"></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td class="auto-style29">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style60"></td>
                        <td class="auto-style59" style="color:white">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="User Name:"></asp:Label>
                        </td>
                        <td class="auto-style61"></td>
                    </tr>
                    <tr>
                        <td class="auto-style65"></td>
                        <td class="auto-style48">
                            <asp:TextBox ID="TextBox1" placeholder="Username" runat="server" BorderStyle="None" Height="40px" Width="338px" CssClass="input"></asp:TextBox>
                        </td>
                        <td class="auto-style49">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style66"></td>
                        <td class="auto-style45" style="color:white">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
                        </td>
                        <td class="auto-style46"></td>
                    </tr>
                    <tr>
                        <td class="auto-style67"></td>
                        <td class="auto-style31">
                            <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" CssClass="input" Height="40px" placeholder="Password" Width="338px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style32"></td>
                    </tr>
                    <tr>
                        <td class="auto-style55"></td>
                        <td class="auto-style56"></td>
                        <td class="auto-style57"></td>
                    </tr>
                    <tr>
                        <td class="auto-style55">&nbsp;</td>
                        <td class="auto-style56">
                            <asp:Panel ID="Panel2" runat="server" Width="346px">
                                <table class="auto-style125">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" BackColor="Orange" BorderColor="#45a049" BorderWidth="1px" Font-Bold="True" ForeColor="white" Height="48px" onclick="Button1_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="LOGIN" Width="329px" Font-Names="Times New Roman" style="font-size: x-large" />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td class="auto-style57">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style62"></td>
                        <td class="auto-style63">
                            &nbsp;</td>
                        <td class="auto-style64"></td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td class="auto-style15">
            </td>
    </tr>
    <tr>
        <td class="auto-style10">
            </td>
        <td class="auto-style9">
            &nbsp;</td>
        <td class="auto-style12">
            </td>
    </tr>
    </table>
</asp:Content>

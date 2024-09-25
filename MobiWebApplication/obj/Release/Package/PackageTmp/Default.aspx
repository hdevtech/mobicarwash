<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MobiWebApplication._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 607px;
        }
        .style4
        {
            width: 607px;
        }
        .auto-style4
        {
            height: 23px;
            width: 503px;
        }
        .btnlogin
        {
            font-size: large;
        }
        .auto-style6
        {
            width: 100%;
        }
        .auto-style7
        {
            height: 17px;
        }
        .auto-style23
        {
            width: 231px;
        }
        .auto-style54
        {
            width: 268px;
            cursor: pointer;
            text-align: center;
            font-family:Tahoma;
            font-size:x-large;
        }
        .auto-style122
        {
            width: 109%;
        }
        .auto-style124
        {
            height: 33px;
        }
        .auto-style123
        {
            font-size: xx-large;
        }
        .auto-style29
        {
            width: 197px;
        }
        .auto-style60
        {
            width: 231px;
            height: 10px;
        }
        .auto-style59
        {
            width: 268px;
            cursor: pointer;
            height: 10px;
        }
        .auto-style61
        {
            width: 197px;
            height: 10px;
        }
        .auto-style65
        {
            width: 231px;
            height: 6px;
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
        .auto-style66
        {
            width: 231px;
            height: 13px;
        }
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
        .auto-style67
        {
            width: 231px;
            height: 40px;
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
        .auto-style125
        {
            width: 100%;
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
        .auto-style126
        {
            height: 17px;
            width: 237px;
        }
        .auto-style128
        {
            width: 237px;
            height: 491px;
        }
        .auto-style129
        {
            height: 491px;
        }
        .auto-style131
        {
            width: 237px;
        }
        .auto-style132
        {
            width: 237px;
            height: 23px;
        }
        .input
        {}
        .auto-style133
        {
            width: 321px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1" bgcolor="Gray">
        <tr>
            <td bgcolor="Gray">
                <br />
                <br />
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server" BackColor="Gray">
                    <table class="auto-style6">
                        <tr>
                            <td class="auto-style126"></td>
                            <td class="auto-style7"></td>
                            <td class="auto-style7"></td>
                        </tr>
                        <tr>
                            <td class="auto-style132"></td>
                            <td class="style2"></td>
                            <td class="style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style132"></td>
                            <td class="style2"></td>
                            <td class="style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style128"></td>
                            <td class="auto-style129">
                                <asp:Panel ID="Panel3" runat="server" BackColor="#006666" CssClass="pannel1Login" Height="376px" Width="518px">
                                    <table class="auto-style4">
                                        <tr>
                                            <td class="auto-style23">&nbsp;</td>
                                            <td class="auto-style54" font-bold="True" style="color: white">
                                                <table align="center" class="auto-style122">
                                                    <tr>
                                                        <td class="auto-style124"></td>
                                                        <td class="auto-style123" rowspan="2" style="text-align: center; font-family: 'Times New Roman'; color: orange; font-weight: 700;">LOGIN PAGE</td>
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
                                            <td class="auto-style59" style="color: white">
                                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="User Name:"></asp:Label>
                                            </td>
                                            <td class="auto-style61"></td>
                                        </tr>
                                        <tr>
                                            <td ></td>
                                            <td >
                                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="BUTTOM" Height="35px" placeholder="Username" Width="288px" BackColor="White" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large"></asp:TextBox>
                                            </td>
                                            <td class="auto-style49"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style66"></td>
                                            <td class="auto-style45" style="color: white">
                                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Password:"></asp:Label>
                                            </td>
                                            <td class="auto-style46"></td>
                                        </tr>
                                        <tr>
                                            <td ></td>
                                            <td >
                                                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" CssClass="BUTTOM" Height="35px" placeholder="Password" TextMode="Password" Width="288px" BackColor="White" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large"></asp:TextBox>
                                            </td>
                                            <td class="auto-style32"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style55"></td>
                                            <td class="auto-style56" align="center">
                                                <asp:Panel ID="Panel2" runat="server">
                                                    <table class="auto-style125">
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td class="auto-style133">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td class="auto-style133">
                                                                <asp:Button ID="Button1" runat="server" BackColor="Orange" BorderColor="#45a049" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="white" Height="60px" onclick="Button1_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" style="font-size: x-large" Text="LOGIN" Width="262px" />
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td class="auto-style133">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            <td class="auto-style57"></td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style55">&nbsp;</td>
                                            <td class="auto-style56">
                                                &nbsp;</td>
                                            <td class="auto-style57">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style62"></td>
                                            <td class="auto-style63">&nbsp;</td>
                                            <td class="auto-style64"></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="auto-style129"></td>
                        </tr>
                        <tr>
                            <td class="auto-style131">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style131">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style131">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        </table>
    </form>
</body>
</html>

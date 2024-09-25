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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="style1">
    <tr>
        <td class="style16">
            &nbsp;</td>
        <td class="style48">
            &nbsp;</td>
        <td class="style7" colspan="3">
            &nbsp;</td>
        <td class="style48">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style36">
            </td>

        <td class="style38">
            <br />
            <br />
            <br />
            <br />
        </td>
        <td class="style39" colspan="3">
            <asp:Label ID="Label1" runat="server" CssClass="style11" Font-Bold="True"
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="31px" 
                style="text-align: center" Text="LOGIN" Width="341px"></asp:Label>
        </td>
        <td class="style38">
            </td>
        <td class="style41">
            </td>
    </tr>
    <tr>
        <td class="style66">
            </td>
        <td class="style67">
            </td>
        <td class="style68" style="color:#000066" colspan="3">
            User Name</td>
        <td class="style67">
            </td>
        <td class="style70">
            </td>
    </tr>
    <tr>
        <td class="style60">
            </td>
        <td class="style62">
            </td>
        <td class="style63" colspan="3">
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Groove" Height="35px" 
                Width="342px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
        </td>
        <td class="style62">
            </td>
        <td class="style65">
            </td>
    </tr>
    <tr>
        <td class="style71">
            </td>
        <td class="style72">
            </td>
        <td class="style73" style="color:Navy" style="font-size:115%" colspan="3">
            Password</td>             
        <td class="style72">
            </td>
        <td class="style75">
            </td>
    </tr>
    <tr>
        <td class="style66">
            </td>
        <td class="style67">
            </td>
        <td class="style68" colspan="3">
            <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                BorderStyle="Groove" Height="35px" Width="342px" BorderColor="#000066" 
                BorderWidth="1px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style67">
            <br />
        </td>
        <td class="style70">
            </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td class="style9">
            </td>
        <td class="style10" colspan="3">
        </td>
        <td class="style9">
        </td>
        <td class="style80">
        </td>
    </tr>
    <tr>
        <td class="style42">
            </td>
        <td class="style44">
            </td>
        <td class="style89">
        </td>
        <td class="style90">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                onmouseover="this.style.backgroundColor='#5D7B9D'"
                onmouseout="this.style.backgroundColor='#4CAF50'" 
                BackColor="#4CAF50" ForeColor="white" Height="48px" Font-Bold="True"
                Width="270px" BorderColor="#003399" BorderWidth="1px" />
        </td>
        <td class="style88">
        </td>
        <td class="style44">
        </td>
        <td class="style47">
        </td>
    </tr>
    <tr>
        <td class="style97">
            </td>
        <td class="style98">
            </td>
        <td class="style91">
        </td>
        <td class="style92">
        </td>
        <td class="style93">
        </td>
        <td class="style98">
        </td>
 
        <td class="style96">
        </td>
    </tr>
    <tr>
        <td class="style16">
            </td>
        <td class="style48">
            &nbsp;</td>
        <td class="style7" colspan="3">
        </td>
        <td class="style48">
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

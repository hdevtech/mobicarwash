<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="MobiWebApplication.WebForm2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Service
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
        {
            width: 359px;
            height: 37px;
            font-size: x-large;
            font-family:Agency FB;
        }
        .style9
        {
            width: 130px;
            height: 24px;
        }
        .style32
        {
            width: 144px;
            height: 34px;
        }
        .style34
        {
            width: 359px;
            height: 34px;
        }
        .style35
        {
            height: 34px;
            width: 223px;
        }
        .style40
        {
            height: 34px;
            width: 130px;
            text-align : left;
        }
        .style42
        {
            width: 144px;
            height: 29px;
        }
        .style43
        {
            height: 29px;
            width: 130px;
            text-align : left;
        }
        .style44
        {
            width: 359px;
            height: 29px;
        }
        .style45
        {
            height: 29px;
            width: 223px;
        }
        .style46
        {
            width: 144px;
            height: 28px;
        }
        .style47
        {
            height: 28px;
            width: 130px;
            text-align : left;
        }
        .style48
        {
            width: 359px;
            height: 28px;
        }
        .style49
        {
            height: 28px;
            width: 223px;
        }
        .style60
        {
            width: 144px;
            height: 24px;
        }
        .style61
        {
            width: 359px;
            }
        .style62
        {
            height: 24px;
            width: 223px;
        }
        .style64
        {
            height: 40px;
            width: 125px;
        }
        .style65
        {
            height: 40px;
            width: 123px;
        }
        .style66
        {
            height: 40px;
            width: 122px;
        }
        .style67
        {
            height: 40px;
            width: 127px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        .style70
        {
            width: 144px;
            height: 37px;
        }
        .style71
        {
            width: 130px;
            height: 37px;
        }
        .style72
        {
            height: 37px;
            width: 223px;
        }
        .style75
        {
            width: 359px;
            height: 24px;
            font-size: x-large;
        }
        .style76
        {
            width: 144px;
        }
        .style77
        {
            width: 130px;
        }
        .style78
        {
            width: 223px;
        }
        .style80
        {
            height: 40px;
        }
        .style81
        {
            width: 144px;
            height: 40px;
        }
        .style82
        {
            width: 130px;
            height: 40px;
        }
        .style83
        {
            height: 40px;
            width: 223px;
        }
        .style85
        {
            width: 43px;
            height: 40px;
        }
        .style86
        {
            height: 40px;
            width: 204px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentBody">    
    &nbsp;<table class="style1">
        <tr>        
            <td class="style65">
                <asp:Button ID="Button2" runat="server" Text="Registration" BackColor="DodgerBlue" 
                     onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="156px" 
                    Font-Bold="True" onclick="Button2_Click2"/>
               
            </td>
            <td class="style64">
                 <asp:Button ID="Button3" runat="server" Text="Service" BackColor="DodgerBlue" 
                     onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="173px" 
                     Font-Bold="True" onclick="Button3_Click"/>
               
            </td>
            <td class="style64">
                 <asp:Button ID="Button4" runat="server" Text="Payment" BackColor="DodgerBlue" 
                     onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="161px" Font-Bold="True"/>
               
            </td>
            <td class="style64">
                 <asp:Button ID="Button5" runat="server" Text="Client Credit" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="151px" 
                     Font-Bold="True" onclick="Button5_Click"/>
               
            </td>
            <td class="style66">
                 <asp:Button ID="Button6" runat="server" Text="Staff Credit" BackColor="DodgerBlue" 
                    BorderStyle="None" ForeColor="White" Height="35px" Width="137px" 
                     Font-Bold="True" onclick="Button6_Click"/>
               
            </td>
            <td class="style67">
               <asp:Button ID="Button8" runat="server" Text="Expenses" BackColor="DodgerBlue" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" ForeColor="White" Height="35px" Width="127px" 
                    Font-Bold="True" />
               
            </td>
          
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table class="style1">
        <tr>
            <td class="style70">
                </td>
            <td class="style71">
                </td>
            <td class="style5" colspan="3">
            <asp:Label ID="Label2" runat="server" CssClass="style11" Font-Bold="True"
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="31px" 
                style="text-align: center" Text="EXPENSES" Width="341px"></asp:Label>
            </td>
            <td class="style72">
                </td>
        </tr>
        <tr>
            <td class="style60">
                &nbsp;</td>
            <td class="style9">
                </td>
            <td class="style75" colspan="3">
                &nbsp;</td>
            <td class="style62">
                </td>
        </tr>
        <tr>
            <td class="style42">
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None" Width="28px" 
                    ForeColor="PowderBlue" BackColor="PowderBlue"></asp:TextBox>
            </td>
            <td class="style43" style="color:#000066">
                Amount</td>
            <td class="style44" colspan="3">
                
                     <asp:TextBox ID="TextBox6" runat="server" style="color:#000066"
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
                      </td>
            <td class="style45">
               
                      &nbsp;</td>
        </tr>
        <tr>
            <td class="style46">
            </td>
            <td class="style47" style="color:#000066" >
                Details</td>
            <td class="style48" colspan="3">
                
                     <asp:TextBox ID="TextBox7" runat="server" style="color:#000066"
                         BorderStyle="Groove" Height="30px" ontextchanged="TextBox6_TextChanged" 
                         Width="359px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
                    
                      </td>
            <td class="style49">
               
                      </td>
        </tr>
        <tr>
            <td class="style32">
            </td>
            <td class="style40" style="color:#000066">
                &nbsp;</td>
            <td class="style34" colspan="3">
                
                     &nbsp;</td>
            <td class="style35">
               
                      </td>
        </tr>
        <tr>
            <td class="style81">
            </td>
            <td class="style82">
               
                </td>
            <td class="style85">
                
                     </td>
            <td class="style86">
                
                     <asp:Button ID="Button1" runat="server" 
                    Height="40px" onclick="Button1_Click" 
                    Text="Save" Width="264px" 
                         style="margin-top: 0px; margin-left: 0px;" Font-Bold="True" 
                         BorderWidth="1px" />
               
                      </td>
            <td class="style80">
                
                     </td>
            <td class="style83">
               
                      <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
               
                      </td>
        </tr>
        <tr>
            <td class="style76">
            </td>
            <td class="style77">
               
            </td>
            <td class="style61" colspan="3">
                
                      </td>
            <td class="style78">
               
                      </td>
        </tr>
        </table>
    
    
    <asp:GridView ID="gvInformation" runat="server" Width="932px"     
        CellPadding="8" ForeColor="#333333" GridLines="None" Height="125px">
        
          <Columns>
            <asp:TemplateField>
                 <ItemTemplate>
                   <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idExpenses")%>' OnClick="lnk_OnClick">Delete</asp:LinkButton>
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


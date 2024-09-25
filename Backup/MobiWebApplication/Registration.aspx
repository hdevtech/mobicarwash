<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MobiWebApplication.WebForm1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 98%;
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
            font-size: x-large;
            font-family:Agency FB;
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
            width: 100%;
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
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <table class="style1">
        <tr>
            <td class="style87">
                <asp:Button ID="Button5"  runat="server" Text="Registration" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" BackColor="DodgerBlue" Width="152px" Font-Bold="True"
                    ForeColor="White" Font="Agency FB" onclick="Button5_Click"/>                
               
            </td>
            <td class="style62">
                <asp:Button ID="Button11"  runat="server" Text="Service" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" BackColor="DodgerBlue" Width="152px"  Font-Bold="True"
                    ForeColor="White" onclick="Button11_Click" />                
               
            </td>
            <td class="style68">
                <asp:Button ID="Button6"  runat="server" Text="Payment" 
                     onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" BackColor="DodgerBlue" Width="155px"  Font-Bold="True"
                    ForeColor="White" onclick="Button6_Click" />                
               
            </td>
            <td class="style68">
                <asp:Button ID="Button12"  runat="server" Text="Client Credit" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" BackColor="DodgerBlue" Width="152px"  Font-Bold="True"
                    ForeColor="White" onclick="Button12_Click"/>                
               
            </td>
            <td class="style137">
                <asp:Button ID="Button13"  runat="server" Text="Staff Credit" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"
                    BorderStyle="None" Height="35px" BackColor="DodgerBlue" Width="138px"  Font-Bold="True"
                    ForeColor="White" onclick="Button13_Click"/>                
               
            </td>
            <td class="style110">
                 <asp:Button ID="Button7"  runat="server" Text="Reports" 
                    onmouseover="this.style.backgroundColor='#5D7B9D'"
                    onmouseout="this.style.backgroundColor='DodgerBlue'"  
                    BorderStyle="None" Height="35px" BackColor="DodgerBlue" Width="157px"  Font-Bold="True"
                    ForeColor="White" onclick="Button13_Click"/>
               
            </td>
        </tr>
        <tr>
            <td class="style106">
                </td>
            <td class="style107">
                </td>
            <td class="style108" colspan="4">
            <asp:Label ID="Label2" runat="server" CssClass="style11" 
                EnableViewState="False" ForeColor="DarkGoldenrod" Height="38px" Font-Bold="True"
                style="text-align: center" Text="REGISTRATION" Width="332px"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style89">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="style83" style="color:#000066">
                Client Name</td>
            <td class="style84" colspan="4">
                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Groove" Height="28px" 
                    ontextchanged="TextBox1_TextChanged" Width="365px" BorderColor="#000066" 
                    BorderWidth="1px"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td class="style90">
                <asp:TextBox ID="TextBox5" runat="server" Width="35px" BorderStyle="None" 
                    ForeColor="PowderBlue" BackColor="PowderBlue"></asp:TextBox>
                </td>
            <td class="style21" style="color:#000066">
                Contact No</td>
            <td class="style30" colspan="4">
                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove" Height="28px" 
                    Width="365px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style91">
                &nbsp;</td>
            <td class="style22" style="color:#000066">
                Vehicle Type</td>
            <td class="style31" colspan="4">
                <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Groove" Height="28px" 
                    Width="365px" BorderColor="#000066" BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style92">
            </td>
            <td class="style24" style="color:#000066">
                Plate No</td>
            <td class="style33" colspan="4">
                <asp:TextBox ID="TextBox4" runat="server" BorderStyle="Groove" Height="28px" 
                    Width="365px" ontextchanged="TextBox4_TextChanged" BorderColor="#000066" 
                    BorderWidth="1px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style115">
            </td>
            <td class="style116" style="color:#000066">
                Category</td>
            <td class="style117" colspan="4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="366px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style123">
            </td>
            <td class="style124">
            </td>
            <td class="style125" colspan="4">
                </td>
        </tr>
        <tr>
            <td class="style129">
                <asp:TextBox ID="TextBox6" runat="server" BorderStyle="Groove" Height="28px" 
                    Width="148px"></asp:TextBox>
            </td>
            <td class="style127">
                
                     <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Search" 
                    Width="153px" Height="40px" 
                    onmouseover="this.style.backgroundColor='DodgerBlue'"
                    onmouseout="this.style.backgroundColor='#4CAF50'" BackColor="#00CC66" 
                    ForeColor="White" Font-Bold="True" BorderWidth="1px"  />                  
                    
                      </td>
                
             <td class="style128">                  
                
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Save" 
                    Width="155px" ForeColor="White" 
                     onmouseover="this.style.backgroundColor='DodgerBlue'"
                    onmouseout="this.style.backgroundColor='#00CC66'"
                         Height="40px" Font-Bold="True" BorderWidth="1px" BackColor="#00CC66" />
                   
                    
                      </td>
           
           
             <td class="style130">                  
                
                    
                     <asp:Button ID="Button3" runat="server" ForeColor="White" Height="40px" onclick="Button3_Click" 
                      Text="Update" Width="152px" Font-Bold="True" BorderWidth="1px" 
                      onmouseover="this.style.backgroundColor='DodgerBlue'"
                      onmouseout="this.style.backgroundColor='#00CC66'"
                         BackColor="#00CC66" />
                    
                      </td>
           
           
              <td class="style131" colspan="2">
                
                     <asp:Button ID="Button4" runat="server" 
                         ForeColor="White" Height="40px" Text="Delete" Width="152px" 
                         Font-Bold="True" onclick="Button4_Click1" BorderWidth="1px" 
                         onmouseover="this.style.backgroundColor='DodgerBlue'"
                         onmouseout="this.style.backgroundColor='#00CC66'"
                         BackColor="#00CC66" />
                    
                    
                      </td>
        </tr>
        <tr>
            <td class="style132">
            </td>
            <td class="style133">
                
                      </td>
                
             <td class="style134">                  
                
                    
                      </td>
           
           
             <td class="style135">                  
                
                    
                      </td>
           
           
              <td class="style136" colspan="2">
                
                    
                      </td>
        </tr>
        </table>
   
    <div>
 
        <table class="style118">
            <tr>
                
                <td class="style122">
 
    <asp:GridView ID="gvInformation" runat="server" CellPadding="8" 
        ForeColor="#333333" GridLines="None" Width="932px" Height="56px">
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
                
            </tr>
            <tr>
                <td class="style122">
                </td>
                
            </tr>
        </table>
    
    
    </div>
        
    
    </asp:Content>

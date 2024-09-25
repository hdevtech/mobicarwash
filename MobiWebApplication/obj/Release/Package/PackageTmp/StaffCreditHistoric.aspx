<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="StaffCreditHistoric.aspx.cs" Inherits="MobiWebApplication.WebForm7" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 99%;
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
            width: 103%;
        height: 208px;
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
        .auto-style26
    {
        height: 14px;
        }
        .auto-style104
        {
            height: 14px;
            width: 277px;
        }
        .auto-style105
        {
            height: 14px;
            width: 144px;
        }
        .auto-style138
        {
            height: 14px;
            width: 242px;
        }
        .auto-style146
        {
            height: 65px;
            width: 396px;
        }
        .auto-style147
        {
            height: 65px;
        }
        .btnlogin
        {}
        .auto-style4
        {
            width: 97%;
        }
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style272
        {
            width: 105px;
        }
        .auto-style275
        {
            width: 176px;
            text-align: left;
        }
        .auto-style276
        {
            height: 14px;
            width: 279px;
        }
        .auto-style277
        {
            height: 65px;
            width: 279px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <script>
         function doPrintdailyRPT() {
             var prtContent = document.getElementById('<%= PanelSTAFFDAILYCREDIT0.ClientID %>');
             prtContent.border = 0; //set no border here
             WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
             WinPrint.document.write(prtContent.outerHTML);
             WinPrint.document.close();
             WinPrint.focus();
             WinPrint.print();
             //WinPrint.close();
         }
         </script>
    <table class="style1">
        <tr>
            <td >
               
            </td>
            <td >
               
                                                                                                            <asp:Panel ID="Panel4" runat="server" BackColor="SandyBrown" CssClass="BUTTOM0">
                                                                                                                <table >
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <asp:TextBox ID="TextBox28" runat="server" BackColor="White" BorderStyle="None" ForeColor="Navy" Height="26px" placeholder="Staff Name ...." Width="182px"></asp:TextBox>
                                                                                                                        </td>
                                                                                                                        <td>
                                                                                                                            <asp:Button ID="Button38" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" OnClick="Button38_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Search" Width="69px" />
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </asp:Panel>
               
            </td>
            <td>
                                                                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" ShowHeader="False">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="check">
                                                                            <HeaderTemplate>
                                                                                <asp:Button ID="Button43" runat="server" BackColor="#99FF99" BorderStyle="None" Font-Bold="True" ForeColor="Red" Height="31px" Text="Check" Width="69px" />
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox12_CheckedChanged" />
                                                                            </ItemTemplate>
                                                                            <FooterStyle BackColor="White" />
                                                                            <HeaderStyle BackColor="#99FF99" />
                                                                            <ItemStyle BackColor="#F0F0F0" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="StaffName" HeaderText="Staff" SortExpression="StaffName">
                                                                        <ControlStyle BackColor="White" />
                                                                        <FooterStyle BackColor="White" />
                                                                        <HeaderStyle BackColor="#99FF99" ForeColor="Navy" />
                                                                        <ItemStyle BackColor="#F0F0F0" Height="30px" HorizontalAlign="Left" />
                                                                        </asp:BoundField>
                                                                    </Columns>
                                                                </asp:GridView>
            </td>
            <td class="auto-style146">
                <asp:Button ID="Button1" runat="server" CssClass="BUTTOM0" Height="50px" Text="Download" Width="185px" OnClick="Button1_Click1" OnClientClick="doPrintdailyRPT()" />
            </td>
            <td class="auto-style146">
                
                    
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                
                    
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                
                            <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="#006666" DataSourceID="SqlDataSource1" DataTextField="StaffName" DataValueField="StaffName" ForeColor="#006666" Height="1px" style="margin-bottom: 0px" Width="1px">
                                                                                                                    </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IDStaff], [StaffName] FROM [StaffOperator]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style277">
               
                                                                                                            &nbsp;</td>
            <td class="auto-style147">
               
                                                                                                            &nbsp;</td>
            <td class="auto-style147">
                                                                &nbsp;</td>
            <td class="auto-style146">
                &nbsp;</td>
            <td class="auto-style146">
                
                    
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26" colspan="5">
                    
                                                            <asp:Panel ID="PanelSTAFFDAILYCREDIT0" runat="server" BackColor="Gray" CssClass="PanelHomeLogin" Visible="False">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="STAFF CREDITS HISTORIC"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel37" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <asp:GridView ID="gvInformation" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource2" EnableModelValidation="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Height="56px" OnRowDataBound="gvInformation_RowDataBound" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged" style="margin-left: 0px" Width="883px">
                                                                                                            <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                            <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                            <Columns>
                                                                                                                <asp:TemplateField HeaderText="Sno">
                                                                                                                    <ItemTemplate>
                                                                                                                        <%# Container.DataItemIndex + 1 %>
                                                                                                                    </ItemTemplate>
                                                                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                                                                </asp:TemplateField>
                                                                                                                <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                                                                                                <asp:BoundField DataField="phone" HeaderText="Contact No" SortExpression="phone" />
                                                                                                                <asp:BoundField DataField="oldCredit" HeaderText="Old Credit" SortExpression="oldCredit" />
                                                                                                                <asp:BoundField DataField="amount" HeaderText="Amount Taken" SortExpression="amount" />
                                                                                                                <asp:BoundField DataField="Payment" HeaderText="Amount Paid" SortExpression="Payment" />
                                                                                                                <asp:BoundField DataField="newBalance" HeaderText="new Balance" SortExpression="newBalance" />
                                                                                                                <asp:BoundField DataField="dateClose" DataFormatString="{0:d/MM/yyyy}" HeaderText="date" SortExpression="dateClose" />
                                                                                                                <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                                                                                            </Columns>
                                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                                            <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                        </asp:GridView>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style272">&nbsp;</td>
                                                                                                                <td class="auto-style275">
                                                                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName], [phone],(newBalance-amount+Payment) as oldCredit, [amount], [Payment], [newBalance], [dateClose], [userAdded] FROM [StaffCreditReports1] WHERE ([StaffName] = @StaffName) AND (amount+Payment) &gt;0">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="DropDownList1" Name="StaffName" PropertyName="SelectedValue" Type="String" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                </td>
                                                                                                                <td class="auto-style275">
                                                                                                                    &nbsp;</td>
                                                                                                                <td style="text-align: left">
                                                                                                                    &nbsp;</td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>

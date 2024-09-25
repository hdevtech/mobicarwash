<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="MobiWebApplication.WebForm42" %>
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
        .auto-style15
    {
        height: 51px;
        width: 62px;
    }
    .auto-style26
    {
        height: 14px;
        width: 62px;
    }
        .auto-style104
        {
            height: 14px;
            width: 378px;
        }
        .auto-style105
        {
            height: 14px;
            width: 144px;
        }
        .auto-style121
        {
            height: 89px;
        }
        .auto-style122
        {
            width: 100%;
        }
        .auto-style127
        {
            width: 193px;
            height: 112px;
        }
        .auto-style128
        {
            width: 689px;
            height: 112px;
        }
        .auto-style129
        {
            height: 112px;
        }
        .auto-style138
        {
            height: 14px;
            width: 242px;
        }
        .auto-style146
        {
            height: 51px;
            width: 396px;
        }
        .auto-style147
        {
            height: 51px;
        }
        .auto-style156
        {
            width: 689px;
        }
        .auto-style157
        {
            width: 47px;
            font-family:TeamViewer14;
            font-size:x-large;
        }
        .auto-style161
        {
        }
        .style25
        {
            width: 100%;
        }
        .style2
        {
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <script>
         function doPrintdailyRPT() {
             var prtContent = document.getElementById('<%= Panel3.ClientID %>');
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
            <td class="auto-style15">
               
                </td>
            <td class="auto-style147" colspan="2">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="24px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="215px" DataSourceID="SqlDataSource1" DataTextField="OperationDay" DataValueField="OperationDay">
                </asp:DropDownList>
                </td>
            <td class="auto-style146">
                <asp:Button ID="Button1" runat="server" CssClass="btnlogin" Height="41px" OnClick="Button1_Click" OnClientClick="doPrintdailyRPT()" Text="Download" Width="213px" />
                </td>
            <td class="auto-style146">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top 30 [idSales], [OperationDay] FROM [StartDaily] ORDER BY [idSales] DESC" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </td>
        </tr>
        <tr>
            <td class="auto-style26">
                    
                &nbsp;</td>
            <td class="auto-style104">
                
                            <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="63px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
            <td class="auto-style138" colspan="2">
                
                    
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                
            </td>
            <td class="auto-style105">
                    
                    
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style121" colspan="5">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style161" colspan="3">
                                <table class="style25">
                                    <tr>
                                        <b style="text-align: center"><span style="color: #000099">
                                        <td>&nbsp;</td>
                                        </span></b>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style161">&nbsp;</td>
                            <td class="auto-style156">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style161">&nbsp;</td>
                            <td class="auto-style156">
                                <table class="auto-style122">
                                    <tr>
                                        <td class="auto-style157" rowspan="2">
                                            <asp:Button ID="Button2" runat="server" BackColor="Orange" BorderStyle="None" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="48px" OnClick="Button2_Click" onmouseout="this.style.backgroundColor='#3399FF'" onmouseover="this.style.backgroundColor='4CAF50'" Text="Refresh" Width="99px" />
                                        </td>
                                        <td f="" rowspan="2" style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">DAILY SHORT SUMMARY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style127"></td>
                            <td class="auto-style128">
                                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" Height="387px" Width="584px" style="text-align: left; margin-right: 0px">
                                    <EditItemTemplate>
                                        Served Vehicle:
                                        <asp:TextBox ID="servedVehTextBox" runat="server" Text='<%# Bind("servedVeh") %>' />
                                        <br />
                                        Daily Services Value:
                                        <asp:TextBox ID="Service_AmountTextBox" runat="server" Text='<%# Bind("Service_Amount") %>' />
                                        <br />
                                        Daily Served Vehicle by Credit:
                                        <asp:TextBox ID="Credit_AmountTextBox" runat="server" Text='<%# Bind("Credit_Amount") %>' />
                                        <br />
                                        Served Vehicle by Momo:
                                        <asp:TextBox ID="momoTextBox" runat="server" Text='<%# Bind("momo") %>' />
                                        <br />
                                        Paid Amount for Served Vehicle:
                                        <asp:TextBox ID="Payed_AmountTextBox" runat="server" Text='<%# Bind("Payed_Amount") %>' />
                                        <br />
                                        Daily Staff Credit:
                                        <asp:TextBox ID="Staff_CreditTextBox" runat="server" Text='<%# Bind("Staff_Credit") %>' />
                                        <br />
                                        Amount Paid by Client on Credit:
                                        <asp:Label ID="ClientPaymentTextBox" runat="server" Text='<%# Bind("ClientPayment") %>' />
                                        <br />
                                        Amount Paid by Staff on Credit:
                                        <asp:TextBox ID="AmountPayeddTextBox" runat="server" Text='<%# Bind("AmountPayedd") %>' />
                                        <br />
                                        Daily Expenses:
                                        <asp:TextBox ID="Daily_ExpensesTextBox" runat="server" Text='<%# Bind("Daily_Expenses") %>' />
                                        <br />
                                        Balance:
                                        <asp:TextBox ID="BalannceTextBox" runat="server" Text='<%# Bind("Balannce") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        Served Vehicle:
                                        <asp:TextBox ID="servedVehTextBox" runat="server" Text='<%# Bind("servedVeh") %>' />
                                        <br />
                                        Daily Services Value:
                                        <asp:TextBox ID="Service_AmountTextBox" runat="server" Text='<%# Bind("Service_Amount") %>' />
                                        <br />
                                        Daily Served Vehicle by Credit:
                                        <asp:TextBox ID="Credit_AmountTextBox" runat="server" Text='<%# Bind("Credit_Amount") %>' />
                                        <br />
                                        Served Vehicle by Momo:
                                        <asp:TextBox ID="momoTextBox" runat="server" Text='<%# Bind("momo") %>' />
                                        <br />
                                        Paid Amount for Served Vehicle:
                                        <asp:TextBox ID="Payed_AmountTextBox" runat="server" Text='<%# Bind("Payed_Amount") %>' />
                                        <br />
                                        Daily Staff Credit:
                                        <asp:TextBox ID="Staff_CreditTextBox" runat="server" Text='<%# Bind("Staff_Credit") %>' />
                                        <br />
                                        Amount Paid by Client on Credit:
                                        <asp:Label ID="ClientPaymentTextBox" runat="server" Text='<%# Bind("ClientPayment") %>' />
                                        <br />
                                        Amount Paid by Staff on Credit:
                                        <asp:TextBox ID="AmountPayeddTextBox" runat="server" Text='<%# Bind("AmountPayedd") %>' />
                                        <br />
                                        Daily Expenses:
                                        <asp:TextBox ID="Daily_ExpensesTextBox" runat="server" Text='<%# Bind("Daily_Expenses") %>' />
                                        <br />
                                        Balance:
                                        <asp:TextBox ID="BalannceTextBox" runat="server" Text='<%# Bind("Balannce") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        Served Vehicle:
                                        <asp:Label ID="servedVehLabel" runat="server" Text='<%# Bind("servedVeh") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                        Daily Services Value:
                                        <asp:Label ID="Service_AmountLabel" runat="server" Text='<%# Bind("Service_Amount") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                         Daily Served Vehicle by Credit:
                                        <asp:Label ID="Credit_AmountLabel" runat="server" Text='<%# Bind("Credit_Amount") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                        Served Vehicle by Momo:
                                        <asp:Label ID="momoLabel" runat="server" Text='<%# Bind("momo") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                        Paid Amount for Served Vehicle:
                                        <asp:Label ID="Payed_AmountLabel" runat="server" Text='<%# Bind("Payed_Amount") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                        Daily Staff Credit::
                                        <asp:Label ID="Staff_CreditLabel" runat="server" Text='<%# Bind("Staff_Credit") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                        Amount Paid by Client on Credit:
                                        <asp:Label ID="ClientPaymentLabel" runat="server" Text='<%# Bind("ClientPayment") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                        Amount Paid by Staff on Credit:
                                        <asp:Label ID="AmountPayeddLabel" runat="server" Text='<%# Bind("AmountPayedd") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                        Daily Expenses:
                                        <asp:Label ID="Daily_ExpensesLabel" runat="server"  Text='<%# Bind("Daily_Expenses") %>' style="font-weight: 700; color: orange"/>
                                        <br />

                                        --------------------------------------------------<br />

                                        Balance:
                                        <asp:Label ID="BalannceLabel" runat="server" Text='<%# Bind("Balannce") %>' style="font-weight: 700; color: orange"/>
                                        <br />
                                    </ItemTemplate>
                                </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [servedVeh], [Service_Amount], [Credit_Amount], [momo], [Payed_Amount], [Staff_Credit], [ClientPayment],[AmountPayedd], [Daily_Expenses], [Balannce] FROM [DailyClose] WHERE ([OperationDay] = @OperationDay) ORDER BY [idDayCloser] DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style129"></td>
                        </tr>
                        <tr>
                            <td class="auto-style161">&nbsp;</td>
                            <td class="auto-style156">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>



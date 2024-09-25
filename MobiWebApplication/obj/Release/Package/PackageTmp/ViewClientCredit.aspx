<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewClientCredit.aspx.cs" Inherits="MobiWebApplication.WebForm28" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewServedVehicle.aspx.cs" Inherits="MobiWebApplication.WebForm26" %>--%>
<%--<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MobiWebApplication.WebForm1" Title="Untitled Page" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 100%;
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
        width: 62px;
    }
        .auto-style104
        {
            height: 14px;
            width: 339px;
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
        .auto-style138
        {
            height: 14px;
            width: 242px;
        }
        .auto-style151
        {            text-align: center;
        }
        .auto-style152
        {
            width: 655px;
        }
        .auto-style158
        {
            width: 513px;
            height: 37px;
        }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style184
        {
            width: 48px;
        }
        .auto-style183
        {
            width: 275px;
        }
        .auto-style182
        {
            width: 293px;
        }
        .auto-style209 {}
        .auto-style340 {
            height: 44px;
        }
        .auto-style170
        {
            width: 115%;
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
            <td class="auto-style26">
                    
                </td>
            <td class="auto-style104">
                
                            </td>
            <td class="auto-style138">
                
                    
                </td>
            <td class="auto-style105">
                    
                    
                </td>
        </tr>
        <tr>
            <td class="auto-style121" colspan="4">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style340" align="center" colspan="3">
                                <asp:Button ID="Button92" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button92_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Back" Width="25%" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" class="auto-style151" colspan="3">
                                <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox10_TextChanged" Visible="False" Width="63px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:SqlDataSource ID="SqlDataSoServiceGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT PlateNumber FROM WebDetailsDataView WHERE (Payment = 'Credit')"></asp:SqlDataSource>
                                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style151" colspan="3">
                                <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSoServiceGroup">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel22" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                            <table class="auto-style122">
                                                <tr>
                                                    <td class="style128">
                                                        <asp:Panel ID="Panel23" runat="server">
                                                            <table class="auto-style339">
                                                                <tr>
                                                                    <td align="center">
                                                                        <asp:Label ID="NameService" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Text='<%# Eval("PlateNumber") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel24" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                            <asp:Panel ID="Panel25" runat="server">
                                                                <table class="auto-style122">
                                                                    <tr>
                                                                        <td class="auto-style158">
                                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" Width="865px">
                                                                                <RowStyle BackColor="#006666" ForeColor="White" />
                                                                                <FooterStyle BackColor="Orange" ForeColor="White" />
                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" />
                                                                                <HeaderStyle BackColor="Orange" ForeColor="Gray" />
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Repetition " HeaderText="TMZ " SortExpression="Repetition ">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="code" HeaderText="Washer" SortExpression="code">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" HorizontalAlign="Center" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                                    <ItemStyle Font-Names="Tahoma" Font-Size="Large" HorizontalAlign="Center" />
                                                                                    </asp:BoundField>
                                                                                </Columns>
                                                                                <EditRowStyle BackColor="#999999" />
                                                                                <AlternatingRowStyle BackColor="gray" ForeColor="White" />
                                                                            </asp:GridView>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style158">
                                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, [Repetition ], Price, PayedCash, Payment, Name, dateRecorded, code, userAdded FROM WebDetailsDataView WHERE (PlateNumber = @PlateNumber) AND (Payment = 'Credit') ORDER BY dateRecorded">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="NameService" Name="PlateNumber" PropertyName="Text" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="SqlDataSub" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT PlateNumber, SUM(Price) AS Price, SUM(PayedCash) AS PayedCash FROM WebDetailsDataView WHERE (PlateNumber = @PlateNumber) and  (Payment = 'Credit')  GROUP BY PlateNumber">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="NameService" Name="PlateNumber" PropertyName="Text" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="SqlDataSub2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT PlateNumber, Payment,SUM(Price) AS Price, SUM(PayedCash) AS PayedCash FROM WebDetailsDataView WHERE (PlateNumber = @PlateNumber) and AND (Payment = 'Credit') GROUP BY PlateNumber,Payment">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="NameService" Name="PlateNumber" PropertyName="Text" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="SqlDataNumber" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="SqlDataNumber_Selecting" SelectCommand="SELECT DISTINCT  PlateNumber, Payment,count (PlateNumber) AS No  FROM WebDetailsDataView WHERE (PlateNumber= @PlateNumber) AND (Payment = 'Credit')  GROUP BY PlateNumber,Payment ORDER BY No DESC">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="NameService" Name="PlateNumber" PropertyName="Text" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:Panel ID="Panel9" runat="server">
                                                                                <table style="width: 851px">
                                                                                    <tr>
                                                                                        <td class="auto-style184">&nbsp;</td>
                                                                                        <td class="auto-style183">
                                                                                            <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataNumber" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    No:
                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    <asp:LinkButton ID="UpdateCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox2" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    No:
                                                                                                    <asp:TextBox ID="NoTextBox0" runat="server" Text='<%# Bind("No") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    <asp:LinkButton ID="InsertCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel10" runat="server">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Times:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td style="text-align: left">
                                                                                                                    <asp:Label ID="NoLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                        <td class="auto-style182">
                                                                                            <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDataSub" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox3" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton2" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    <asp:LinkButton ID="UpdateCancelButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox4" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox2" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox2" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton2" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    <asp:LinkButton ID="InsertCancelButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel20" runat="server">
                                                                                                        <table class="auto-style170">
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Service Am:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td style="text-align: left">
                                                                                                                    <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:FormView ID="FormView3" runat="server" DataSourceID="SqlDataSub" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox0" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox0" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox0" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    <asp:LinkButton ID="UpdateCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox1" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox1" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox1" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    <asp:LinkButton ID="InsertCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel21" runat="server">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" style="text-align: right" Text="Paid Am:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td style="text-align: left">
                                                                                                                    <asp:Label ID="PayedCashLabel0" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("PayedCash") %>' />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataTOTAL" EnableModelValidation="True" OnPageIndexChanging="FormView4_PageIndexChanging">
                                    <EditItemTemplate>
                                        Price:
                                        <asp:TextBox ID="PriceTextBox4" runat="server" Text='<%# Bind("Price") %>' />
                                        <br />
                                        PayedCash:
                                        <asp:TextBox ID="PayedCashTextBox4" runat="server" Text='<%# Bind("PayedCash") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton4" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                        Price:
                                        <asp:TextBox ID="PriceTextBox5" runat="server" Text='<%# Bind("Price") %>' />
                                        <br />
                                        PayedCash:
                                        <asp:TextBox ID="PayedCashTextBox5" runat="server" Text='<%# Bind("PayedCash") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton4" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <table class="auto-style170">
                                            <tr>
                                                <td style="text-align: right">
                                                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Amount:"></asp:Label>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:Label ID="PriceLabel0" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:FormView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style151">&nbsp;</td>
                            <td class="auto-style152">
                                <asp:SqlDataSource ID="SqlDataTOTAL" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(Price) AS Price FROM WebDetailsDataView WHERE (Payment = 'Credit')"></asp:SqlDataSource>
                            </td>
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



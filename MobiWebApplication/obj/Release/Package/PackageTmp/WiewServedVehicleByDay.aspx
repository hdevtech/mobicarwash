<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="WiewServedVehicleByDay.aspx.cs" Inherits="MobiWebApplication.WebForm31" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewServedVehicleCredit.aspx.cs" Inherits="MobiWebApplication.WebForm27" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewServedVehicleCredit.aspx.cs" Inherits="MobiWebApplication.WebForm26" %>--%>
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
        .auto-style122
        {
            width: 101%;
            height: 59px;
        }
        .auto-style128
        {
            width: 775px;
            height: 99px;
        }
        .auto-style129
        {
            height: 99px;
        }
        .auto-style148
        {
            width: 775px;
        }
        .auto-style157
        {
            width: 47px;
            font-family:TeamViewer14;
            font-size:x-large;
        }
        .auto-style164
        {
            width: 775px;
            height: 67px;
        }
        .auto-style166
        {
            height: 67px;
        }
        .btnaddannce
        {}
        .auto-style170
        {
            width: 115%;
        }
        .auto-style171
        {
            width: 663px;
        }
        .auto-style158
        {
            width: 513px;
        }
        .auto-style175
        {
            width: 549px;
        }
        .auto-style176
        {
            width: 612px;
        }
        .auto-style177
        {
            height: 26px;
            text-align: right;
        }
        .auto-style178
        {
            width: 100%;
        }
        .auto-style179
        {
            width: 170px;
        }
        .auto-style180
        {
            width: 316px;
        }
        .auto-style182
        {
            width: 293px;
        }
        .auto-style183
        {
            width: 275px;
        }
        .auto-style184
        {
            width: 48px;
        }
        .auto-style185
        {
            width: 154px;
        }
        .auto-style186
        {
            width: 531px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     &nbsp;<script>
         function doPrintdailyRPT(){
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
    <table >
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table>
                        <tr>
                            <td class="auto-style166" colspan="3">
                                <asp:Panel ID="Panel13" runat="server" BackColor="Gray" CssClass="BUTTOM">
                                    <table >
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="OperationDay" DataValueField="OperationDay" Height="32px">
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button4" runat="server" BackColor="Orange" BorderStyle="None" BorderWidth="1px" CssClass="BUTTOM" Font-Bold="True" ForeColor="#003366" Height="46px" OnClick="Button4_Click2" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Invoice" />
                                            </td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" BackColor="Orange" BorderStyle="None" BorderWidth="1px" CssClass="BUTTOM" Font-Bold="True" ForeColor="#003366" Height="46px" OnClick="Button1_Click1" OnClientClick="doPrintdailyRPT()" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Download" />
                                            </td>
                                            <td class="auto-style179">
                                                <asp:TextBox ID="TextBox9" runat="server" BorderColor="#003366" BorderStyle="Groove" CssClass="inputSearch" Height="41px" placeholder="      Search ...  "></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button2" runat="server" BackColor="#3399FF" BorderStyle="None" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="46px" onclick="Button2_Click1" onmouseout="this.style.backgroundColor='#4CAF50'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Search" CssClass="BUTTOM" />
                                            </td>
                                            <td>
                                                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" ShowHeader="False">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="check">
                                                            <HeaderTemplate>
                                                                <asp:Button ID="Button43" runat="server" BackColor="#99FF99" BorderStyle="None" Font-Bold="True" ForeColor="Red" Height="31px" Text="Check" Width="69px" />
                                                            </HeaderTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox6_CheckedChanged1" />
                                                            </ItemTemplate>
                                                            <FooterStyle BackColor="White" />
                                                            <HeaderStyle BackColor="#99FF99" />
                                                            <ItemStyle BackColor="#F0F0F0" HorizontalAlign="Center" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber">
                                                        <ControlStyle BackColor="White" />
                                                        <FooterStyle BackColor="White" />
                                                        <HeaderStyle BackColor="#99FF99" ForeColor="Navy" />
                                                        <ItemStyle BackColor="#F0F0F0" Height="30px" HorizontalAlign="Left" />
                                                        </asp:BoundField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                            <td>
                                                <asp:Button ID="Button3" runat="server" BackColor="Orange" BorderStyle="None" BorderWidth="1px" Font-Bold="True" ForeColor="#003366" Height="46px" OnClick="Button3_Click1" Text="Reflesh" CssClass="BUTTOM" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style166"></td>
                            <td class="auto-style164">
                                <asp:Panel ID="Panel4" runat="server" >
                                    <table class="auto-style122">
                                        <tr>
                                            <td class="auto-style171" f="" rowspan="2" style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DAILY SERVED VEHICLES&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style157"><span style="color: #000099"><span style="font-size: small"><b designer:mapid="798" style="text-align: center">
                                                <asp:Label ID="Labelsave" runat="server" style="color: #FF0000; font-size: small"></asp:Label>
                                                </b></span></span></td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="auto-style166"></td>
                        </tr>
                        <tr>
                            <td class="auto-style129">&nbsp;</td>
                            <td class="auto-style128">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSoServiceGroup">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel5" runat="server" CssClass="PanelHomeLogin">
                                            <table class="auto-style122">
                                                <tr>
                                                    <td class="style128">
                                                        <asp:Panel ID="Panel8" runat="server">
                                                            <table>
                                                                <tr>
                                                                    <td  style="text-align: right" class="auto-style180"></td>
                                                                    <td  style="text-align: center">
                                                                        <asp:Label ID="NameService" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Text='<%# Eval("NameService") %>' CssClass="uppercase"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: left">&nbsp;</td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel4" runat="server" BackColor="Gray" CssClass="BUTTOM">
                                                            <asp:Panel ID="Panel6" runat="server">
                                                                <table class="auto-style122">
                                                                    <tr>
                                                                        <td class="auto-style158">
                                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource3" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="862px">
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
                                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                                    </asp:TemplateField>
                                                                                    <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                    <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                    <asp:BoundField DataField="Repetition " HeaderText="TMZ " SortExpression="Repetition ">
                                                                                    <ItemStyle ForeColor="Yellow" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                    <ItemStyle ForeColor="#99FF33" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                                                                    <ItemStyle ForeColor="Orange" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment" />
                                                                                    <asp:BoundField DataField="dateRecorded" HeaderText="Date" SortExpression="dateRecorded" />
                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                                                                </Columns>
                                                                                <EditRowStyle BackColor="#999999" />
                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                            </asp:GridView>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style158">
                                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView WHERE NameService = @NameService  AND ([OperationDay] = @OperationDay) ORDER BY dateRecorded">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="NameService" Name="NameService" PropertyName="Text" />
                                                                                    <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="SqlDataSub" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT NameService, SUM(Price) AS Price, SUM(PayedCash) AS PayedCash FROM WebDetailsDataView WHERE (NameService = @NameService) AND ([OperationDay] = @OperationDay)  GROUP BY NameService">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="NameService" Name="NameService" PropertyName="Text" />
                                                                                    <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="SqlDataNumber" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT NameService, count (PlateNumber) AS No  FROM WebDetailsDataView WHERE (NameService = @NameService) AND ([OperationDay] = @OperationDay)  GROUP BY NameService ORDER BY No DESC">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="NameService" Name="NameService" PropertyName="Text" />
                                                                                    <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:Panel ID="Panel9" runat="server">
                                                                                <table style="width: 851px">
                                                                                    <tr>
                                                                                        <td class="auto-style184">
                                                                                            &nbsp;</td>
                                                                                        <td class="auto-style183">
                                                                                            <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataNumber" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    No:
                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    No:
                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <br />
                                                                                                    <asp:Panel ID="Panel10" runat="server">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Served V:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td style="text-align: left">
                                                                                                                    <asp:Label ID="NoLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                    <br />
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                        <td class="auto-style182">
                                                                                            <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSub" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel10" runat="server">
                                                                                                        <table class="auto-style170">
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Service Am:"></asp:Label>
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
                                                                                                    <asp:Panel ID="Panel11" runat="server">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" style="text-align: right" Text="Paid Am:"></asp:Label>
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
                                <br />
                                <asp:SqlDataSource ID="SqlDataSoServiceGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  [NameService] FROM [WebDetailsDataView] WHERE ([OperationDay] = @OperationDay) ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataTOTAL" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM(Price) AS Price, SUM(PayedCash) AS PayedCash FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay) ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDatTotalNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  count (PlateNumber) AS No  FROM WebDetailsDataView WHERE  ([OperationDay] = @OperationDay) ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Panel ID="Panel12" runat="server" BackColor="Gray">
                                    <table >
                                        <tr>
                                            <td class="auto-style185">&nbsp;</td>
                                            <td class="auto-style186">
                                                <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDatTotalNo" EnableModelValidation="True">
                                                    <EditItemTemplate>
                                                        NameService:
                                                        <asp:TextBox ID="NameServiceTextBox2" runat="server" Text='<%# Bind("NameService") %>' />
                                                        <br />
                                                        No:
                                                        <asp:TextBox ID="NoTextBox0" runat="server" Text='<%# Bind("No") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton2" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                        <asp:LinkButton ID="UpdateCancelButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        NameService:
                                                        <asp:TextBox ID="NameServiceTextBox3" runat="server" Text='<%# Bind("NameService") %>' />
                                                        <br />
                                                        No:
                                                        <asp:TextBox ID="NoTextBox1" runat="server" Text='<%# Bind("No") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton2" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                        <asp:LinkButton ID="InsertCancelButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <br />
                                                        <asp:Panel ID="Panel14" runat="server">
                                                            <table>
                                                                <tr>
                                                                    <td style="text-align: right">
                                                                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Served V:"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: left">
                                                                        <asp:Label ID="NoLabel0" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </td>
                                            <td class="auto-style176">
                                                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataTOTAL" EnableModelValidation="True">
                                                    <EditItemTemplate>
                                                        Price:
                                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                        <br />
                                                        PayedCash:
                                                        <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        Price:
                                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                        <br />
                                                        PayedCash:
                                                        <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <table class="auto-style170">
                                                            <tr>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Amount:"></asp:Label>
                                                                </td>
                                                                <td style="text-align: left">
                                                                    <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </td>
                                            <td class="auto-style175">
                                                <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataTOTAL" EnableModelValidation="True">
                                                    <EditItemTemplate>
                                                        Price:
                                                        <asp:TextBox ID="PriceTextBox2" runat="server" Text='<%# Bind("Price") %>' />
                                                        <br />
                                                        PayedCash:
                                                        <asp:TextBox ID="PayedCashTextBox2" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        Price:
                                                        <asp:TextBox ID="PriceTextBox3" runat="server" Text='<%# Bind("Price") %>' />
                                                        <br />
                                                        PayedCash:
                                                        <asp:TextBox ID="PayedCashTextBox3" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <table class="auto-style170">
                                                            <tr>
                                                                <td class="auto-style177">
                                                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Paid:"></asp:Label>
                                                                </td>
                                                                <td class="auto-style177" style="text-align: left">
                                                                    <asp:Label ID="PayedCashLabel1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("PayedCash") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="auto-style129">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style129">&nbsp;</td>
                            <td class="auto-style128">
                                <asp:Panel ID="Panel7" runat="server" BackColor="Gray" CssClass="BUTTOM">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" Visible="False" Width="863px">
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
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                            <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                            <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                            <asp:BoundField DataField="Repetition " HeaderText="TMZ " SortExpression="Repetition ">
                                            <ItemStyle ForeColor="Yellow" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                            <ItemStyle ForeColor="#99FF33" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                            <ItemStyle ForeColor="Orange" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment" />
                                            <asp:BoundField DataField="dateRecorded" HeaderText="Date" SortExpression="dateRecorded" />
                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                </asp:Panel>
                            </td>
                            <td class="auto-style129">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style148">
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView WHERE (PlateNumber = @PlateNumber) ORDER BY dateRecorded DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox9" Name="PlateNumber" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <span style="color: #000099"><span style="font-size: small"><b designer:mapid="798" style="text-align: center">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT top 30 [idSales], [OperationDay] FROM [StartDaily] ORDER BY [idSales] DESC"></asp:SqlDataSource>
                                </b></span></span>
                                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                
                    
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                
                </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>



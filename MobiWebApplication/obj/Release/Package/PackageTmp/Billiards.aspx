<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="Billiards.aspx.cs" Inherits="MobiWebApplication.WebForm67" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="BarRestoOperator2.aspx.cs" Inherits="MobiWebApplication.WebForm57" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireu<a href="Billiards.aspx">Billiards.aspx</a>p="true" CodeBehind="WebForm20.aspx.cs" Inherits="MobiWebApplication.WebForm20" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
        }
          
      input.XX-Large{
        width: 100px;
        height: 50px;
      }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style389 {
            height: 21px;
        }
        .auto-style428 {
            width: 281px;
            height: 44px;
        }
        .auto-style391 {
            width: 281px;
        }
        .auto-style429 {
            width: 274px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> 
        <script language="javascript" type="text/javascript">
            function ColorChange(chkbox) {
                var IsChecked = chkbox.checked;
                if (IsChecked) {
                    chkbox.parentElement.parentElement.style.backgroundColor = 'Gray';
                    chkbox.parentElement.parentElement.style.color = 'White';
                }
                else {
                    chkbox.parentElement.parentElement.style.backgroundColor = '#244242';
                    chkbox.parentElement.parentElement.style.color = 'White';
                }
            }

        </script>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:Panel ID="Panel89" runat="server" BackColor="#244242" CssClass="Panel1Registration" Width="892px">
                        <asp:Button ID="Button77" runat="server" BackColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="2px" CssClass="BUTTOMROUND" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Height="73px" OnClick="Button77_Click" onmouseout="this.style.backgroundColor='DarkSlateGray'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Log out" Width="136px" />
                        <br />
                        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                        <br />                       
                        <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Large" ForeColor="White" Font-Names="Bahnschrift">
                        </asp:DropDownList>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="PanelAll" runat="server" BackColor="#333333">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <asp:Panel ID="PanelList" runat="server" BackColor="#244242">
                                        <table class="auto-style4">
                                            <tr>
                                                <td align="center">
                                                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="COMMAND_ID0_Selecting" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="DailySummaryBillard" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT TOP (1)   idDayCloser, RequestedAmount, PlayedJour, PlayedTotal, Balance, OperationDay, TotalPlayed, TotalPlayedReal, TotalPlayedFree, TotalPlayedJour, TotalPlayedRealJour, TotalPlayedFreeJour   FROM BillardCalculation  ORDER BY idDayCloser DESC">
                                                    </asp:SqlDataSource>
                                                    <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="IDS" DataTextField="idRecord" DataValueField="idRecord" Height="1px" Width="1px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="IDS" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecord FROM BearRequests Where requestStatus='confirmed' ORDER BY idRecord DESC"></asp:SqlDataSource>
                                                    <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="DailySummaryBillard" DataTextField="Balance" DataValueField="Balance" Height="1px" Width="1px">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <table class="auto-style4">
                                                        <tr>
                                                            <td align="center">
                                                                <table class="auto-style4">
                                                                    <tr>
                                                                        <td align="center" valign="top">
                                                                            <br />
                                                                            <asp:Label ID="AlertLabel78" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange">SUMMARY</asp:Label>
                                                                            <br />
                                                                            <br />
                                                                            <asp:Panel ID="Panel111" runat="server" BackColor="#244242" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="70%">
                                                                                <table class="auto-style4">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Label ID="AlertLabel75" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">GAMES</asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:FormView ID="FormView36" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" DataSourceID="DailySummaryBillard" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" Height="100%" style="text-align: left; margin-right: 0px" Width="100%">
                                                                                                <EditItemTemplate>
                                                                                                    Served Vehicle:
                                                                                                    <asp:TextBox ID="servedVehTextBox3" runat="server" Text='<%# Bind("RequestedAmount") %>' />
                                                                                                    , , , ,
                                                                                                    <br />
                                                                                                    Daily Services Value:
                                                                                                    <asp:TextBox ID="Service_AmountTextBox3" runat="server" Text='<%# Bind("PlayedJour") %>' />
                                                                                                    <br />
                                                                                                    Served Vehicle by Momo:
                                                                                                    <asp:TextBox ID="momoTextBox5" runat="server" Text='<%# Bind("PlayedTotal") %>' />
                                                                                                    <br />
                                                                                                    Paid Amount for Served Vehicle:
                                                                                                    <asp:TextBox ID="Payed_AmountTextBox3" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton31" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton31" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    Served Vehicle:
                                                                                                    <asp:TextBox ID="servedVehTextBox3" runat="server" Text='<%# Bind("RequestedAmount") %>' />
                                                                                                    , , , ,
                                                                                                    <br />
                                                                                                    Daily Services Value:
                                                                                                    <asp:TextBox ID="Service_AmountTextBox3" runat="server" Text='<%# Bind("PlayedJour") %>' />
                                                                                                    <br />
                                                                                                    Served Vehicle by Momo:
                                                                                                    <asp:TextBox ID="momoTextBox5" runat="server" Text='<%# Bind("PlayedTotal") %>' />
                                                                                                    <br />
                                                                                                    Paid Amount for Served Vehicle:
                                                                                                    <asp:TextBox ID="Payed_AmountTextBox3" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton31" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton31" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel106" runat="server">
                                                                                                        <table class="auto-style339">
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <table align="left" class="auto-style339">
                                                                                                                        <tr>
                                                                                                                            <td align="center" class="auto-style389">
                                                                                                                                <asp:Panel ID="Panel107" runat="server">
                                                                                                                                    <table class="auto-style339">
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel65" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Total:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="AlertLabel66" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("TotalPlayed") %>'></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="right" style="text-align: Right">
                                                                                                                                                <asp:Label ID="AlertLabel67" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Real:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="AlertLabel68" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("TotalPlayedReal") %>' />
                                                                                                                                            </td>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel63" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Free:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="AlertLabel62" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("TotalPlayedFree") %>' />
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </asp:Panel>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Label ID="AlertLabel76" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">PLAYED GAMES</asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:FormView ID="FormView37" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" DataSourceID="DailySummaryBillard" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" Height="100%" style="text-align: left; margin-right: 0px" Width="100%">
                                                                                                <EditItemTemplate>
                                                                                                    Served Vehicle:
                                                                                                    <asp:TextBox ID="servedVehTextBox5" runat="server" Text='<%# Bind("RequestedAmount") %>' />
                                                                                                    , , , ,
                                                                                                    <br />
                                                                                                    Daily Services Value:
                                                                                                    <asp:TextBox ID="Service_AmountTextBox5" runat="server" Text='<%# Bind("PlayedJour") %>' />
                                                                                                    <br />
                                                                                                    Served Vehicle by Momo:
                                                                                                    <asp:TextBox ID="momoTextBox7" runat="server" Text='<%# Bind("PlayedTotal") %>' />
                                                                                                    <br />
                                                                                                    Paid Amount for Served Vehicle:
                                                                                                    <asp:TextBox ID="Payed_AmountTextBox4" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton32" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton32" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    Served Vehicle:
                                                                                                    <asp:TextBox ID="servedVehTextBox6" runat="server" Text='<%# Bind("RequestedAmount") %>' />
                                                                                                    , , , ,
                                                                                                    <br />
                                                                                                    Daily Services Value:
                                                                                                    <asp:TextBox ID="Service_AmountTextBox6" runat="server" Text='<%# Bind("PlayedJour") %>' />
                                                                                                    <br />
                                                                                                    Served Vehicle by Momo:
                                                                                                    <asp:TextBox ID="momoTextBox8" runat="server" Text='<%# Bind("PlayedTotal") %>' />
                                                                                                    <br />
                                                                                                    Paid Amount for Served Vehicle:
                                                                                                    <asp:TextBox ID="Payed_AmountTextBox5" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton32" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton32" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel109" runat="server">
                                                                                                        <table class="auto-style339">
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <table align="left" class="auto-style339">
                                                                                                                        <tr>
                                                                                                                            <td align="center" class="auto-style389">
                                                                                                                                <asp:Panel ID="Panel110" runat="server">
                                                                                                                                    <table class="auto-style339">
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel69" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Total:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="AlertLabel70" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("TotalPlayedJour") %>'></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="right" style="text-align: Right">
                                                                                                                                                <asp:Label ID="AlertLabel71" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Real:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="AlertLabel72" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("TotalPlayedRealJour") %>' />
                                                                                                                                            </td>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel73" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Free:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left">
                                                                                                                                                <asp:Label ID="AlertLabel74" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("TotalPlayedFreeJour") %>' />
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </asp:Panel>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Label ID="AlertLabel77" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">REQUESTED </asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:FormView ID="FormView35" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" DataSourceID="DailySummaryBillard" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" Height="100%" style="text-align: left; margin-right: 0px" Width="100%">
                                                                                                <EditItemTemplate>
                                                                                                    Served Vehicle:
                                                                                                    <asp:TextBox ID="servedVehTextBox3" runat="server" Text='<%# Bind("RequestedAmount") %>' />
                                                                                                    , , , ,
                                                                                                    <br />
                                                                                                    Daily Services Value:
                                                                                                    <asp:TextBox ID="Service_AmountTextBox3" runat="server" Text='<%# Bind("PlayedJour") %>' />
                                                                                                    <br />
                                                                                                    Served Vehicle by Momo:
                                                                                                    <asp:TextBox ID="momoTextBox5" runat="server" Text='<%# Bind("PlayedTotal") %>' />
                                                                                                    <br />
                                                                                                    Paid Amount for Served Vehicle:
                                                                                                    <asp:TextBox ID="Payed_AmountTextBox3" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton30" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton30" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    Served Vehicle:
                                                                                                    <asp:TextBox ID="servedVehTextBox4" runat="server" Text='<%# Bind("RequestedAmount") %>' />
                                                                                                    <br />
                                                                                                    Daily Services Value:
                                                                                                    <asp:TextBox ID="Service_AmountTextBox4" runat="server" Text='<%# Bind("PlayedJour") %>' />
                                                                                                    <br />
                                                                                                    Daily Served Vehicle by Credit:
                                                                                                    <asp:TextBox ID="Credit_AmountTextBox4" runat="server" Text='<%# Bind("PlayedTotal") %>' />
                                                                                                    <br />
                                                                                                    Served Vehicle by Momo:
                                                                                                    <asp:TextBox ID="momoTextBox6" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton30" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton30" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel104" runat="server">
                                                                                                        <table class="auto-style339">
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <table align="left" class="auto-style339">
                                                                                                                        <tr>
                                                                                                                            <td align="center" class="auto-style389">
                                                                                                                                <asp:Panel ID="Panel105" runat="server">
                                                                                                                                    <table class="auto-style339">
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel48" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Requested:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left" class="auto-style428">
                                                                                                                                                <asp:Label ID="AlertLabel49" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("RequestedAmount", "{0:0,000}") %>'></asp:Label>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel56" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Real Games:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left" class="auto-style391">
                                                                                                                                                <asp:Label ID="AlertLabel57" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("PlayedTotal", "{0:0,000}") %>' />
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel60" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Free Games:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left" class="auto-style391">
                                                                                                                                                <asp:Label ID="AlertLabel61" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("PlayedJour", "{0:0,000}") %>' />
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right">
                                                                                                                                                <asp:Label ID="AlertLabel58" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Remain:</asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td align="left" class="auto-style391">
                                                                                                                                                <asp:Label ID="AlertLabel59" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("Balance", "{0:0,000}") %>' />
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td align="right" class="auto-style429">&nbsp;</td>
                                                                                                                                            <td align="left" class="auto-style391">&nbsp;</td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </asp:Panel>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
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
                                                                            <br />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox11" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" Height="46px" placeholder="Amount" Visible="False" Width="50%"></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <asp:Button ID="Button80" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="56px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Submit" Visible="False" Width="35%" />
                                                                <asp:Button ID="Button81" runat="server" BackColor="#009933" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="56px" OnClick="Button81_Click" onmouseout="this.style.backgroundColor='#009933'" onmouseover="this.style.backgroundColor='Orange'" Text="Cancel" Visible="False" Width="35%" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <asp:Button ID="Button79" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="56px" OnClick="Button79_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Game Request" Width="70%" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <asp:Label ID="AlertLabel24" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Yellow"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <asp:Panel ID="Panel108" runat="server" BackColor="#244242" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="70%">
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td align="center">
                                                                                <asp:Button ID="Button82" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" Height="150px" OnClick="Button82_Click" OnClientClick="return confirm ('Are you sure you want to REAL GAME ?');" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="200" Width="220px" />
                                                                            </td>
                                                                            <td align="center">
                                                                                <asp:Button ID="Button89" runat="server" BackColor="#009933" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" Height="150px" OnClick="Button89_Click" OnClientClick="return confirm ('Are you sure you want to FREE GAME ?');" onmouseout="this.style.backgroundColor='#009933'" onmouseover="this.style.backgroundColor='Orange'" Text="Free" Width="220px" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="PanelCommand0" runat="server" BorderStyle="None">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="Command0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Distinct  Playstatus FROM BillaraPlayedGame">
                                                                      
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Panel ID="Panel112" runat="server" BackColor="#244242" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="70%">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td align="center" colspan="2">
                                                                                    <asp:Button ID="Button93" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" Height="150px" OnClick="Button93_Click1" OnClientClick="return confirm ('Are you sure you want to REAL GAME ?');" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="500" Width="412px" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" colspan="2">
                                                                                    <asp:Button ID="Button94" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" Height="150px" OnClick="Button94_Click1" OnClientClick="return confirm ('Are you sure you want to REAL GAME ?');" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="1000" Width="412px" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" colspan="2">
                                                                                    <asp:Button ID="Button95" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" Height="150px" OnClick="Button95_Click" OnClientClick="return confirm ('Are you sure you want to REAL GAME ?');" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="2000" Width="412px" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">&nbsp;</td>
                                                                                <td align="center">&nbsp;</td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:DataList ID="DataList1" runat="server" BorderColor="Orange" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel1HomePAGE" DataSourceID="Command0">
                                                                        <ItemTemplate>
                                                                            <asp:Panel ID="Panel5" runat="server" BackColor="#244242" BorderStyle="None" CssClass="PanelHomeLogin">
                                                                                <table class="auto-style122">
                                                                                    <tr>
                                                                                        <td class="style128">
                                                                                            <asp:Panel ID="Panel8" runat="server">
                                                                                                <table class="auto-style339">
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <asp:Label ID="NameService" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="Orange" Text='<%# Eval("Playstatus") %>'></asp:Label>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </asp:Panel>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="text-align: center">
                                                                                            <asp:Panel ID="Panel4" runat="server" BackColor="#333333" BorderStyle="None" CssClass="BUTTOM">
                                                                                                <asp:Panel ID="Panel6" runat="server">
                                                                                                    <table class="auto-style122">
                                                                                                        <tr>
                                                                                                            <td class="auto-style158">
                                                                                                                <asp:GridView ID="gvInformation5" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Command0" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation4_RowDataBound" style="margin-left: 0px" Width="100%" AllowPaging="True" PageSize="5">
                                                                                                                    <Columns>
                                                                                                                        <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="Time">
                                                                                                                        <ItemStyle Font-Bold="False" />
                                                                                                                        </asp:BoundField>
                                                                                                                         <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                                                                        <ItemStyle Font-Bold="False" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="PlayAmount" HeaderText="Cash-In" SortExpression="PlayAmount">
                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="RequiredAmount" HeaderText="Cash-Out" SortExpression="RequiredAmount">
                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                        </asp:BoundField>
                                                                                                                    </Columns>
                                                                                                                    <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                     <PagerStyle BackColor="#333333" Font-Size="XX-Large" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                                    <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                    <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                                                                </asp:GridView>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="auto-style158">
                                                                                                                <asp:Panel ID="Panel9" runat="server">
                                                                                                                    <table style="width: 851px">
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style184">
                                                                                                                                <asp:SqlDataSource ID="Command0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT   idCommand, userAdded, dateAdded, OperationDay, operationMonth, operationYear, PlayAmount, RequiredAmount,PlayAmount-RequiredAmount AS Balance, Time, Playstatus FROM BillaraPlayedGame where Playstatus=@NameService  ORDER BY idCommand DESC">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="NameService" Name="NameService" PropertyName="Text" />
                                                                                                                                    </SelectParameters>
                                                                                                                                </asp:SqlDataSource>
                                                                                                                            </td>
                                                                                                                            <td class="auto-style183">&nbsp;</td>
                                                                                                                            <td class="auto-style182">&nbsp;</td>
                                                                                                                            <td>&nbsp;</td>
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
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
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
     
    </asp:Panel>
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>




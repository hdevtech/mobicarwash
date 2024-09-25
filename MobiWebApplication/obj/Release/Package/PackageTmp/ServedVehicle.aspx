<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="ServedVehicle.aspx.cs" Inherits="MobiWebApplication.WebForm54" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }

        input.XX-Large {
            width: 100px;
            height: 50px;
        }

        .auto-style339 {
            width: 100%;
        }

        .auto-style389 {
            height: 21px;
        }

        .auto-style435 {
            width: 728px;
        }
        .auto-style436 {
            width: 771px;
        }
        .auto-style67 {
            height: 17px;
        }
        .auto-style68 {
            height: 18px;
        }
        .auto-style437 {
            height: 118px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                 <script>
                     function doPrintInoice() {
                         var prtContent = document.getElementById('<%= Invoice0.ClientID %>');
                 prtContent.border = 0; //set no border here
                 WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
                 WinPrint.document.write(prtContent.outerHTML);
                 WinPrint.document.close();
                 WinPrint.focus();
                 WinPrint.print();
                 //WinPrint.close();
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
                                <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Large" ForeColor="White" Font-Names="Bahnschrift" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged">
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
                                                            <b style="text-align: center"><span style="color: #000099">
                                                            <asp:SqlDataSource ID="SqlDataSReceivedVehicle2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber],[brand],[manufactureName],[Name],[Phone], [NameService],StaffName,[Payment] ,[dateRecorded],[Price] FROM [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="DropDownList25" Name="idRecord" PropertyName="SelectedValue" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            </span></b>
                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IdManufacture], [manufactureName] FROM [VehicleManufacture]"></asp:SqlDataSource>
                                                            <asp:SqlDataSource ID="DailySummaryBillard" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(PayedCash) AS PayedCash, SUM(Price) AS Total, COUNT(PlateNumber) AS No FROM WebDetailsDataView WHERE (OperationDay = @OperationDay)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="IDS" DataTextField="idRecord" DataValueField="idRecord" Height="1px" Width="1px">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="IDS" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecord FROM BearRequests Where requestStatus='confirmed' ORDER BY idRecord DESC"></asp:SqlDataSource>
                                                            <b style="text-align: center"><span style="color: #000099">
                                                            <asp:SqlDataSource ID="InvoNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] from [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="DropDownList25" Name="idRecord" PropertyName="SelectedValue" Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                            </span></b>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <table class="auto-style4">
                                                                <tr>
                                                                    <td align="center">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td align="center" valign="top" class="auto-style437">
                                                                                    <br />
                                                                                    <asp:Label ID="AlertLabel78" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange">SUMMARY</asp:Label>
                                                                                    <br />
                                                                                    <br />
                                                                                    <asp:Panel ID="Panel111" runat="server" BackColor="#244242" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="857px">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:FormView ID="FormView36" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" DataSourceID="DailySummaryBillard" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" Height="100%" Style="text-align: left; margin-right: 0px" Width="100%">
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
                                                                                                                                                        <asp:Label ID="AlertLabel65" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Served V:</asp:Label>
                                                                                                                                                    </td>
                                                                                                                                                    <td align="left">
                                                                                                                                                        <asp:Label ID="AlertLabel66" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("No") %>'></asp:Label>
                                                                                                                                                    </td>
                                                                                                                                                    <td align="right" style="text-align: Right">
                                                                                                                                                        <asp:Label ID="AlertLabel67" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Total:</asp:Label>
                                                                                                                                                    </td>
                                                                                                                                                    <td align="left">
                                                                                                                                                        <asp:Label ID="AlertLabel68" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("Total", "{0:0,000}") %>' />
                                                                                                                                                    </td>
                                                                                                                                                    <td align="right">
                                                                                                                                                        <asp:Label ID="AlertLabel63" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Paid:</asp:Label>
                                                                                                                                                    </td>
                                                                                                                                                    <td align="left">
                                                                                                                                                        <asp:Label ID="AlertLabel62" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("PayedCash", "{0:0,000}") %>' />
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
                                                                    <td align="center"><b style="text-align: center"><span style="color: #000099">
                                                                        <asp:DropDownList ID="DropDownList25" runat="server" AutoPostBack="True" BackColor="#244242" DataSourceID="InvoNo0" DataTextField="idRecord" DataValueField="idRecord" Height="1px" Width="1px">
                                                                        </asp:DropDownList>
                                                                        </span></b></td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        <asp:Panel ID="Panel127" runat="server" BackColor="#244242" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="857px" Visible="False">
                                                                            <table class="auto-style4">
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td><b style="text-align: center"><span style="color: #000099">
                                                                                                    <asp:Panel ID="Invoice0" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" Width="100%">
                                                                                                        <table class="auto-style45">
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <table class="auto-style45">
                                                                                                                        <tr>
                                                                                                                            <td style="border-width: thin; border-color: #000000; border-style: none none dotted none">
                                                                                                                                <asp:Panel ID="Panel115" runat="server" Height="104px" Width="100%">
                                                                                                                                    <table class="auto-style4">
                                                                                                                                        <tr>
                                                                                                                                            <td class="auto-style67" style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                <asp:Label ID="Label83" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="MOBICARWASH LTD"></asp:Label>
                                                                                                                                                &nbsp;</td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="auto-style68" style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                <asp:Label ID="Label84" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Tin No:"></asp:Label>
                                                                                                                                                <asp:Label ID="Label85" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="107048761"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td class="auto-style67" style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                <asp:Label ID="Label79" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:"></asp:Label>
                                                                                                                                                <asp:Label ID="Label80" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="0788341573"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                <asp:Label ID="Label81" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="MOMO Code:"></asp:Label>
                                                                                                                                                <asp:Label ID="Label82" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="700600"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </asp:Panel>
                                                                                                                                &nbsp;<table class="auto-style45">
                                                                                                                                    <tr>
                                                                                                                                        <td align="right">
                                                                                                                                            <asp:Label ID="Label52" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="Black" Text="Service Order:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td align="left">
                                                                                                                                            <asp:FormView ID="FormView17" runat="server" DataKeyNames="idRecord" DataSourceID="InvoNo" Font-Bold="True" Font-Names="Times New Roman" Style="margin-left: 9px">
                                                                                                                                                <EditItemTemplate>
                                                                                                                                                    idRecord:
                                                                                                                                                    <asp:Label ID="idRecordLabel1" runat="server" Text='<%# Eval("idRecord") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="UpdateButton6" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </EditItemTemplate>
                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                    idRecord:
                                                                                                                                                    <asp:TextBox ID="idRecordTextBox" runat="server" Text='<%# Bind("idRecord") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="InsertButton6" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    &nbsp;<asp:Label ID="idRecordLabel" runat="server" Font-Names="Agency FB" Font-Size="Large" Text='<%# Eval("idRecord") %>' />
                                                                                                                                                    <br />
                                                                                                                                                </ItemTemplate>
                                                                                                                                            </asp:FormView>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style413">
                                                                                                                                <asp:FormView ID="FormView16" runat="server" DataSourceID="SqlDataSReceivedVehicle2" Font-Bold="False" Font-Size="Medium" Style="text-align: center" Width="100%">
                                                                                                                                    <EditItemTemplate>
                                                                                                                                        PlateNumber:
                                                                                                                                        <asp:TextBox ID="PlateNumberTextBox0" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                                                                                                        <br />
                                                                                                                                        brand:
                                                                                                                                        <asp:TextBox ID="brandTextBox0" runat="server" Text='<%# Bind("brand") %>' />
                                                                                                                                        <br />
                                                                                                                                        manufactureName:
                                                                                                                                        <asp:TextBox ID="manufactureNameTextBox" runat="server" Text='<%# Bind("manufactureName") %>' />
                                                                                                                                        <br />
                                                                                                                                        Name:
                                                                                                                                        <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                                                        <br />
                                                                                                                                        Phone:
                                                                                                                                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                                                                                                                                        <br />
                                                                                                                                        NameService:
                                                                                                                                        <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                                                        <br />
                                                                                                                                        Payment:
                                                                                                                                        <asp:TextBox ID="PaymentTextBox0" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                                        <br />
                                                                                                                                        dateRecorded:
                                                                                                                                        <asp:TextBox ID="dateRecordedTextBox" runat="server" Text='<%# Bind("dateRecorded") %>' />
                                                                                                                                        <br />
                                                                                                                                        Price:
                                                                                                                                        <asp:TextBox ID="PriceTextBox0" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                                        <br />
                                                                                                                                        <asp:LinkButton ID="UpdateButton7" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                    </EditItemTemplate>
                                                                                                                                    <InsertItemTemplate>
                                                                                                                                        PlateNumber:
                                                                                                                                        <asp:TextBox ID="PlateNumberTextBox1" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                                                                                                        <br />
                                                                                                                                        brand:
                                                                                                                                        <asp:TextBox ID="brandTextBox1" runat="server" Text='<%# Bind("brand") %>' />
                                                                                                                                        <br />
                                                                                                                                        manufactureName:
                                                                                                                                        <asp:TextBox ID="manufactureNameTextBox0" runat="server" Text='<%# Bind("manufactureName") %>' />
                                                                                                                                        <br />
                                                                                                                                        Name:
                                                                                                                                        <asp:TextBox ID="NameTextBox1" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                                                        <br />
                                                                                                                                        Phone:
                                                                                                                                        <asp:TextBox ID="PhoneTextBox0" runat="server" Text='<%# Bind("Phone") %>' />
                                                                                                                                        <br />
                                                                                                                                        NameService:
                                                                                                                                        <asp:TextBox ID="NameServiceTextBox7" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                                                        <br />
                                                                                                                                        Payment:
                                                                                                                                        <asp:TextBox ID="PaymentTextBox1" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                                        <br />
                                                                                                                                        dateRecorded:
                                                                                                                                        <asp:TextBox ID="dateRecordedTextBox0" runat="server" Text='<%# Bind("dateRecorded") %>' />
                                                                                                                                        <br />
                                                                                                                                        Price:
                                                                                                                                        <asp:TextBox ID="PriceTextBox1" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                                        <br />
                                                                                                                                        <asp:LinkButton ID="InsertButton7" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                    </InsertItemTemplate>
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <asp:Panel ID="Panel40" runat="server" HorizontalAlign="Center">
                                                                                                                                            <table class="auto-style45">
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style238">
                                                                                                                                                        <asp:Label ID="Label43" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Plate No:"></asp:Label>
                                                                                                                                                        <asp:Label ID="PlateNumberLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("PlateNumber") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style412">
                                                                                                                                                        <asp:Label ID="Label44" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Vehicle:"></asp:Label>
                                                                                                                                                        <asp:Label ID="brandLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("brand") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style238">
                                                                                                                                                        <asp:Label ID="Label45" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Category:"></asp:Label>
                                                                                                                                                        <asp:Label ID="manufactureNameLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("manufactureName") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style235">
                                                                                                                                                        <asp:Label ID="Label46" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Client:"></asp:Label>
                                                                                                                                                        <asp:Label ID="NameLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Name") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style238">
                                                                                                                                                        <asp:Label ID="Label47" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:"></asp:Label>
                                                                                                                                                        <asp:Label ID="PhoneLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Phone") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style238">
                                                                                                                                                        <asp:Label ID="Label48" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Service:"></asp:Label>
                                                                                                                                                        <asp:Label ID="NameServiceLabel" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("NameService") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style238">
                                                                                                                                                        <asp:Label ID="Label49" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Staff:"></asp:Label>
                                                                                                                                                        <asp:Label ID="Washer" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("StaffName") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style238">
                                                                                                                                                        <asp:Label ID="Label50" runat="server" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text="Date:"></asp:Label>
                                                                                                                                                        <asp:Label ID="dateRecordedLabel" runat="server" DataFormatString="{0:d/MM/yyyy}" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("dateRecorded","{0:d/MM/yyyy}") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center" class="auto-style412" style="border-style: dotted none dotted none; border-width: thin; border-color: #000000">
                                                                                                                                                        <asp:Label ID="Label51" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Amount:"></asp:Label>
                                                                                                                                                        <asp:Label ID="PriceLabel0" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text='<%# Bind("Price") %>' />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                            </table>
                                                                                                                                        </asp:Panel>
                                                                                                                                    </ItemTemplate>
                                                                                                                                </asp:FormView>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                                <td>&nbsp;</td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                    </span></b></td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td><b style="text-align: center"><span style="color: #000099">
                                                                                                    <br />
                                                                                                    <asp:Button ID="Button15" runat="server" BackColor="#3399FF" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="White" Height="75px" OnClick="Button15_Click1" OnClientClick="doPrintInoice()" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" style="font-size: x-large" Text="PRINT" Visible="False" Width="400px" />
                                                                                                    <br />
                                                                                                    </span></b></td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        <asp:Panel ID="Panel119" runat="server" BackColor="#333333" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="857px">
                                                                            <asp:Panel ID="Panel120" runat="server">
                                                                                <table class="auto-style122">
                                                                                    <tr>
                                                                                        <td class="auto-style435">
                                                                                            <asp:Panel ID="Panel121" runat="server">
                                                                                                <table>
                                                                                                    <tr>
                                                                                                        <td class="auto-style436">
                                                                                                            <asp:TextBox ID="TextBox16" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Plate No ...." Width="289px"></asp:TextBox>
                                                                                                            <asp:Label ID="AlertLabel24" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Yellow"></asp:Label>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Button ID="Button80" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="56px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Search" Width="282px" />
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Button ID="Button81" runat="server" BackColor="#009933" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="56px" OnClick="Button81_Click" onmouseout="this.style.backgroundColor='#009933'" onmouseover="this.style.backgroundColor='Orange'" Text="New Vehicle" Width="264px" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>
                                                                                                        <td class="auto-style184" colspan="3">
                                                                                                            <asp:GridView ID="gvInformation8" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" PageSize="5" Style="margin-left: 0px" Width="845px">
                                                                                                                <Columns>
                                                                                                                    <asp:TemplateField>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" BackColor="#244242" CssClass="ChkBoxClassok2" Height="40px" OnCheckedChanged="CheckBox6_CheckedChanged" Width="40px" />
                                                                                                                        </ItemTemplate>
                                                                                                                        <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                        <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                                                    </asp:TemplateField>
                                                                                                                    <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                                                    <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                                                    <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name" />
                                                                                                                    <asp:BoundField DataField="manufactureName" HeaderText="Category" SortExpression="manufactureName" />
                                                                                                                    <asp:BoundField DataField="idClient" SortExpression="idClient" />
                                                                                                                    <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture" />
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
                                                                                                </table>
                                                                                            </asp:Panel>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </asp:Panel>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        <asp:Panel ID="Panel122" runat="server" BackColor="#244242" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="70%" Visible="False">
                                                                            <table class="auto-style4">
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <br />
                                                                                        <asp:Label ID="AlertLabel80" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange">PROVIDE SERVICE</asp:Label>
                                                                                        <asp:Label ID="IdCategory" runat="server" Text="20000000" Visible="False"></asp:Label>
                                                                                        <asp:Label ID="Label9" runat="server" Text="10000000" Visible="False"></asp:Label>
                                                                                        <br />
                                                                                        <br />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:TextBox ID="TextBox17" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Enter Client Name" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:TextBox ID="TextBox18" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Enter Contact No" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:TextBox ID="TextBox19" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Enter Vehicle Name" Width="100%"></asp:TextBox>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:DropDownList ID="DropDownList20" runat="server" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="Service" DataTextField="NameService" DataValueField="IdService" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="50px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="100%">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:DropDownList ID="DropDownList19" runat="server" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="Staff" DataTextField="StaffName" DataValueField="IDStaff" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="50px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="100%">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <asp:DropDownList ID="DropDownList18" runat="server" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="PaymentCategor" DataTextField="Payment" DataValueField="IDPayment" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="50px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="100%">
                                                                                        </asp:DropDownList>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="center">
                                                                                        <br />
                                                                                        <br />
                                                                                        <br />
                                                                                        <br />
                                                                                        <asp:Panel ID="Panel123" runat="server" BackColor="#244242" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="70%">
                                                                                            <table class="auto-style4">
                                                                                                <tr>
                                                                                                    <td align="center">
                                                                                                        <asp:Button ID="Button90" runat="server" BackColor="#009933" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="89px" OnClick="Button90_Click" OnClientClick="return confirm ('Are you sure you want to FREE GAME ?');" onmouseout="this.style.backgroundColor='#009933'" onmouseover="this.style.backgroundColor='Orange'" Text="SUBMIT" Width="80%" />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </asp:Panel>
                                                                                        <asp:SqlDataSource ID="Service" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IdService], [NameService], [IdManufacture] FROM [ServiceDerivery] WHERE ([IdManufacture] = @IdManufacture)">
                                                                                            <SelectParameters>
                                                                                                <asp:ControlParameter ControlID="IdCategory" Name="IdManufacture" PropertyName="Text" Type="Int32" />
                                                                                            </SelectParameters>
                                                                                        </asp:SqlDataSource>
                                                                                        <b style="text-align: center"><span style="color: #000099">
                                                                                        <asp:SqlDataSource ID="InvoNo0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] FROM [DetailSales] ORDER BY [idRecord] DESC"></asp:SqlDataSource>
                                                                                        </span></b>
                                                                                        <br />
                                                                                        <asp:SqlDataSource ID="Staff" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IDStaff], [StaffName] FROM [StaffOperator] ORDER BY [StaffName]"></asp:SqlDataSource>
                                                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  TOP 30 PlateNumber, brand, Price, PayedCash,Payment, StaffName, dateRecorded FROM WebDetailsDataView WHERE (OperationDay = @OperationDay)  ORDER BY dateRecorded DESC">
                                                                                            <SelectParameters>
                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                            </SelectParameters>
                                                                                        </asp:SqlDataSource>
                                                                                        <asp:SqlDataSource ID="PaymentCategor" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IDPayment], [Payment] FROM [PaymentType]"></asp:SqlDataSource>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center">
                                                                        <asp:Panel ID="Panel128" runat="server" BackColor="#244242" BorderColor="#99CC00" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="857px">
                                                                            <table class="auto-style4">
                                                                                <tr>
                                                                                    <td>&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <asp:GridView ID="gvInformation7" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="SqlDataSource1" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation4_RowDataBound" Style="margin-left: 0px" Width="100%">
                                                                                            <Columns>
                                                                                                <asp:TemplateField HeaderText="Sno">
                                                                                                    <ItemTemplate>
                                                                                                        <%# Container.DataItemIndex + 1 %>
                                                                                                    </ItemTemplate>
                                                                                                    <ItemStyle HorizontalAlign="Center" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber">
                                                                                                <HeaderStyle HorizontalAlign="Left" />
                                                                                                <ItemStyle HorizontalAlign="Left" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                                                                                <HeaderStyle HorizontalAlign="Left" />
                                                                                                <ItemStyle HorizontalAlign="Left" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                                <ItemStyle ForeColor="White" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                                                                                <ItemStyle ForeColor="White" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="Payment" HeaderText="Paid By" SortExpression="Payment">
                                                                                                <HeaderStyle HorizontalAlign="Left" />
                                                                                                <ItemStyle HorizontalAlign="Left" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="StaffName" HeaderText="Washman" SortExpression="StaffName">
                                                                                                <HeaderStyle HorizontalAlign="Left" />
                                                                                                <ItemStyle HorizontalAlign="Left" />
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
                                                                            </table>
                                                                        </asp:Panel>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelCommand0" runat="server" BorderStyle="None">
                                                                <table class="auto-style4">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:SqlDataSource ID="Command0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Distinct  Playstatus FROM BillaraPlayedGame"></asp:SqlDataSource>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Panel ID="Panel112" runat="server" BackColor="#244242" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="70%" Visible="False">
                                                                                <table class="auto-style4">
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <br />
                                                                                            <asp:Label ID="AlertLabel79" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange">RECORD NEW VEHICLE</asp:Label>
                                                                                            <br />
                                                                                            <br />
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <asp:TextBox ID="TextBox12" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Enter Client Name" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <asp:TextBox ID="TextBox13" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Enter Contact No" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <asp:TextBox ID="TextBox14" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Enter Vehicle Name" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <asp:TextBox ID="TextBox15" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="46px" placeholder="Enter Plate No" Width="100%"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource3" DataTextField="manufactureName" DataValueField="IdManufacture" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="100%" Height="50px">
                                                                                            </asp:DropDownList>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td align="center">
                                                                                            <br />
                                                                                            <br />
                                                                                            <br />
                                                                                            <asp:Panel ID="Panel108" runat="server" BackColor="#244242" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOM" Width="70%">
                                                                                                <table class="auto-style4">
                                                                                                    <tr>
                                                                                                        <td align="center">
                                                                                                            <asp:Button ID="Button89" runat="server" BackColor="#009933" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="89px" OnClick="Button89_Click1" OnClientClick="return confirm ('Are you sure you want to FREE GAME ?');" onmouseout="this.style.backgroundColor='#009933'" onmouseover="this.style.backgroundColor='Orange'" Text="SUBMIT" Width="80%" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </asp:Panel>
                                                                                            <br />
                                                                                            <br />
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:SqlDataSource ID="SqlDataSoServiceGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  [NameService] FROM [WebDetailsDataView] WHERE ([OperationDay] = @OperationDay) ">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="center">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>





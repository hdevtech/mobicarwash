<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="ServiceMobile.aspx.cs" Inherits="MobiWebApplication.WebForm41" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
            height: 103px;
            margin-left: 0px;
            border-radius:16px;
        }
        .auto-style7
        {
            width: 7px;
        }
        .auto-style9
        {
            text-align: center;
        }
        .auto-style10
        {
            width: 515px;
            text-align:center;


        }
        .auto-style31
        {
            width: 7px;
            height: 90px;
        }
        .auto-style32
        {
            width: 124px;
            text-align: left;
            height: 90px;
        }
        .auto-style33
        {
            width: 515px;
            text-align: center;
            height: 90px;
        }
        .auto-style35
        {
            width: 7px;
            height: 92px;
        }
        .auto-style36
        {
            width: 124px;
            text-align: left;
            height: 92px;
        }
        .auto-style37
        {
            width: 515px;
            text-align: center;
            height: 92px;
        }
        .auto-style38
        {
            height: 92px;
            width: 12px;
        }
        .auto-style39
        {
            width: 7px;
            height: 39px;
        }
        .auto-style40
        {
            width: 124px;
            text-align: left;
            height: 39px;
        }
        .auto-style41
        {
            width: 515px;
            text-align: center;
            height: 39px;
        }
        .auto-style42
        {
            height: 39px;
            width: 12px;
        }
        .auto-style46
        {
        }
        .auto-style48
        {
        }
        .auto-style52
        {
            width: 755px;
        }
        .auto-style53
        {
            height: 22px;
        }
        .auto-style54
        {
            width: 124px;
            text-align: left;
            height: 22px;
        }
        .auto-style55
        {
            width: 515px;
            text-align: center;
            height: 22px;
        }
        .auto-style56
        {
            height: 22px;
        }
        .auto-style60 {
            width: 450px;
        }
        .auto-style61 {
            width: 100%;
        }
        .auto-style63 {
            height: 673px;
        }
        .auto-style64 {
            height: 90px;
            width: 12px;
        }
        .auto-style67 {
            height: 17px;
        }
        .auto-style68 {
            height: 18px;
        }
        .auto-style26
        {
            width: 82%;
        }
        .auto-style69 {
            width: 475px;
        }
        .auto-style73 {
            height: 50px;
        }
        .auto-style88 {
            height: 47px;
            width: 12px;
        }
        .auto-style89 {
            width: 7px;
            height: 47px;
        }
        .auto-style90 {
            width: 124px;
            text-align: left;
            height: 47px;
        }
        .auto-style91 {
            width: 515px;
            text-align: center;
            height: 47px;
        }
        .auto-style95 {
            height: 46px;
        }
        .auto-style96 {
            width: 7px;
            height: 46px;
        }
        .auto-style97 {
            width: 124px;
            text-align: left;
            height: 46px;
        }
        .auto-style98 {
            width: 515px;
            text-align: center;
            height: 46px;
        }
        .auto-style106 {
            height: 50px;
            width: 12px;
        }
        .auto-style107 {
            width: 7px;
            height: 50px;
        }
        .auto-style108 {
            width: 124px;
            text-align: left;
            height: 50px;
        }
        .auto-style109 {
            width: 515px;
            text-align: center;
            height: 50px;
        }
        .auto-style110 {
            width: 7px;
            height: 51px;
        }
        .auto-style111 {
            width: 124px;
            text-align: left;
            height: 51px;
        }
        .auto-style112 {
            width: 515px;
            text-align: center;
            height: 51px;
        }
        .auto-style113 {
            height: 51px;
        }
        .auto-style114 {
            width: 381px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
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
    <asp:Panel ID="Panel1" runat="server" BackColor="#006666" CssClass="Panel1Registration">
        <table>
            <tr>
                <td >
                    <asp:Panel ID="Panel11" runat="server" BackColor="Gray" CssClass="Panel1Registration" Width="102%">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style54" style="color:#6600CC"></td>
                                <td class="auto-style55"><b style="text-align: center"><span style="color: #000099">
                                    <asp:DropDownList ID="DropDownList25" runat="server" AutoPostBack="True" BackColor="Gray" DataSourceID="InvoNo0" DataTextField="idRecord" DataValueField="idRecord">
                                    </asp:DropDownList>
                                    </span></b></td>
                                <td class="auto-style56"></td>
                            </tr>
                            <tr>
                                <td class="auto-style9" colspan="3" style="color:#6600CC">
                                    <table bgcolor="#006666" class="auto-style4">
                                        <tr>
                                            <td class="auto-style60">
                                                <asp:TextBox ID="TextBox13" runat="server" BorderColor="Lime" BorderStyle="None" CssClass="BUTTOM" Height="57px" placeholder="      Search ...  " Width="96%" BackColor="White" Font-Size="X-Large"></asp:TextBox>
                                            </td>
                                            <td class="auto-style48">
                                                <table class="auto-style61">
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button12" runat="server" BackColor="#3399FF" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="75px" OnClick="Button12_Click" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" style="font-size: x-large" Text="Search" Width="100%" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="Button14" runat="server" BorderStyle="None" CssClass="BUTTOM" Font-Names="Times New Roman" Height="75px" OnClick="Button14_Click" onmouseover="this.style.backgroundColor='#4CAF50'" style="font-size: x-large" Text="Registration" Width="100%" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style46" colspan="2">
                                                <asp:GridView ID="gvInformation" runat="server" CellPadding="16" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged" style="font-size: large" Width="100%" Font-Size="Medium">
                                                    <EditRowStyle BackColor="#999999" />
                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                    <RowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                    <FooterStyle BackColor="Orange" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("idClient")%>' ForeColor="YELLOW" OnClick="lnk_OnClick">Select</asp:LinkButton>
                                                            </ItemTemplate>
                                                            <ItemStyle ForeColor="White" Font-Size="X-Large" />
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9" style="color:#6600CC" colspan="3"><b style="text-align: center"><span style="color: #000099">
                                    <asp:Panel ID="Invoice0" runat="server" BackColor="White" Font-Bold="False" ForeColor="Black" Visible="False" Width="100%">
                                        <table class="auto-style45">
                                            <tr>
                                                <td class="auto-style114">
                                                    <asp:TextBox ID="TextBox71" runat="server" BorderStyle="None" Width="34px"></asp:TextBox>
                                                </td>
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
                                <td class="auto-style9" colspan="3" style="color:#6600CC"><b style="text-align: center"><span style="color: #000099">
                                    <asp:Panel ID="Panel118" runat="server" BackColor="#006666" CssClass="BUTTOM" Visible="False" Width="743px">
                                        <table class="auto-style61">
                                            <tr>
                                                <td>
                                                    <br />
                                                    <asp:Button ID="Button15" runat="server" BackColor="#3399FF" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="White" Height="75px" OnClick="Button15_Click1" OnClientClick="doPrintInoice()" onmouseout="this.style.backgroundColor='DodgerBlue'" onmouseover="this.style.backgroundColor='#00CC66'" style="font-size: x-large" Text="PRINT" Visible="False" Width="400px" />
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    </span></b></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td><b style="text-align: center"><span style="color: #000099">
                    <asp:SqlDataSource ID="InvoNo0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] FROM [DetailSales] ORDER BY [idRecord] DESC"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSReceivedVehicle2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber],[brand],[manufactureName],[Name],[Phone], [NameService],StaffName,[Payment] ,[dateRecorded],[Price] FROM [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList25" Name="idRecord" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="InvoNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] from [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList25" Name="idRecord" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </span></b></td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel116" runat="server" BackColor="Gray" CssClass="Panel1Registration" Visible="False" Width="102%">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style40" style="color:#6600CC">&nbsp;</td>
                                <td class="auto-style41">
                                    <asp:Label ID="Label91" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" style="font-size: x-large" Text="VEHICLE REGISTRATION"></asp:Label>
                                </td>
                                <td class="auto-style42">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style39"></td>
                                <td class="auto-style40" style="color:#6600CC"></td>
                                <td class="auto-style41"></td>
                                <td class="auto-style42"></td>
                            </tr>
                            <tr>
                                <td class="auto-style107"></td>
                                <td class="auto-style108" style="color:#6600CC">
                                    <asp:Label ID="Label86" runat="server" Font-Bold="False" Font-Size="X-Large" ForeColor="White" style="font-size: x-large" Text="Client:"></asp:Label>
                                </td>
                                <td class="auto-style109">
                                    <asp:TextBox ID="TextBox72" runat="server" align="center" BackColor="White" BorderStyle="None" Font-Bold="True" Font-Size="Large" ForeColor="Navy" placeholder="Enter Client Name" OnTextChanged="TextBox10_TextChanged" Width="500px" CssClass="BUTTOM"></asp:TextBox>
                                </td>
                                <td class="auto-style73"></td>
                            </tr>
                            <tr>
                                <td class="auto-style110"></td>
                                <td class="auto-style111" style="color:#6600CC">
                                    <asp:Label ID="Label87" runat="server" Font-Bold="False" ForeColor="White" style="font-size: x-large" Text="Contact:"></asp:Label>
                                </td>
                                <td class="auto-style112">
                                    <asp:TextBox ID="TextBox15" runat="server" BackColor="White" BorderStyle="None" Font-Size="Large" placeholder="Enter Client ContactNo" ForeColor="Navy" Width="500px" CssClass="BUTTOM"></asp:TextBox>
                                </td>
                                <td class="auto-style113"></td>
                            </tr>
                            <tr>
                                <td class="auto-style107"></td>
                                <td class="auto-style108" style="color:#6600CC">
                                    <asp:Label ID="Label88" runat="server" Font-Bold="False" ForeColor="White" style="font-size: x-large" Text="Vehicle:"></asp:Label>
                                </td>
                                <td class="auto-style109">
                                    <asp:TextBox ID="TextBox16" runat="server" BackColor="White" BorderStyle="None" Font-Size="Large" placeholder="Enter Vehicle Type" ForeColor="Navy" Width="500px" CssClass="BUTTOM"></asp:TextBox>
                                </td>
                                <td class="auto-style106"></td>
                            </tr>
                            <tr>
                                <td class="auto-style89"></td>
                                <td class="auto-style90" style="color:#6600CC">
                                    <asp:Label ID="Label89" runat="server" Font-Bold="False" ForeColor="White" style="font-size: x-large" Text="Plate No:"></asp:Label>
                                </td>
                                <td class="auto-style91">
                                    <asp:TextBox ID="TextBox17" runat="server" BackColor="White" BorderStyle="None" Font-Size="Large" placeholder="Enter Vehicle PlateNo" ForeColor="Navy" Width="500px" CssClass="BUTTOM"></asp:TextBox>
                                </td>
                                <td class="auto-style88"></td>
                            </tr>
                            <tr>
                                <td class="auto-style96"></td>
                                <td class="auto-style97" style="color:#6600CC">
                                    <asp:Label ID="Label90" runat="server" Font-Bold="False" ForeColor="White" style="font-size: x-large" Text="Category:"></asp:Label>
                                </td>
                                <td class="auto-style98">
                                    <asp:DropDownList ID="DropDownList26" runat="server" align="center" BackColor="White" Font-Size="Large" ForeColor="Navy" Width="520px" CssClass="BUTTOM">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style95"></td>
                            </tr>
                            <tr>
                                <td class="auto-style53" colspan="4"><b style="text-align: center"><span style="color: #000099">
                                    <asp:Panel ID="Panel119" runat="server" BackColor="#006666" CssClass="BUTTOM" Width="743px">
                                        <table class="auto-style61">
                                            <tr>
                                                <td>
                                                    <br />
                                                    <asp:Button ID="Button18" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" OnClick="Button18_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='#4CAF50'" style="font-size: x-large" Text="SUBMIT" Width="400px" />
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    </span></b></td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style9" style="color:#6600CC">&nbsp;</td>
                                <td class="auto-style10"><b style="text-align: center"><span style="color: #000099">
                                    <asp:TextBox ID="TextBox74" runat="server" Visible="False" Width="101px"></asp:TextBox>
                                    </span></b></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style63">
                    <asp:Panel ID="Panel2" runat="server" BackColor="Gray" CssClass="Panel1Registration" Width="102%">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style40" style="color:#6600CC">&nbsp;</td>
                                <td class="auto-style41">
                                    <asp:Label ID="Label92" runat="server" Text="VEHICLE SERVICE" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="White" style="font-size: x-large"></asp:Label>
                                </td>
                                <td class="auto-style42">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style39"></td>
                                <td class="auto-style40" style="color:#6600CC"></td>
                                <td class="auto-style41">
                                    <asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style42"></td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style32" style="color:#6600CC">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Size="X-Large" ForeColor="White" style="font-size: x-large" Text="Plate No:"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:TextBox ID="TextBox10" runat="server" align="center" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Size="X-Large" ForeColor="Navy" Height="60px" OnTextChanged="TextBox10_TextChanged" placeholder="Display Plate No" ReadOnly="True" Width="571px" BackColor="White"></asp:TextBox>
                                    <br />
                                </td>
                                <td class="auto-style64"></td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style32" style="color:#6600CC">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="False" ForeColor="White" style="font-size: x-large" Text="Service:"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:DropDownList ID="DropDownList10" runat="server" align="center" CssClass="BUTTOM" Font-Size="X-Large" ForeColor="Navy" Height="80px" Width="590px" BackColor="White">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style64"></td>
                            </tr>
                            <tr>
                                <td class="auto-style35"></td>
                                <td class="auto-style36" style="color:#6600CC">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="False" ForeColor="White" style="font-size: x-large" Text="Washman:"></asp:Label>
                                </td>
                                <td class="auto-style37">
                                    <asp:DropDownList ID="DropDownList11" runat="server" align="center" CssClass="BUTTOM" Font-Size="X-Large" ForeColor="Navy" Height="80px" Width="590px" BackColor="White">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style38"></td>
                            </tr>
                            <tr>
                                <td class="auto-style31"></td>
                                <td class="auto-style32" style="color:#6600CC">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="False" ForeColor="White" style="font-size: x-large" Text="Pay by:"></asp:Label>
                                </td>
                                <td class="auto-style33">
                                    <asp:DropDownList ID="DropDownList12" runat="server" align="center" CssClass="BUTTOM" Font-Size="X-Large" ForeColor="Navy" Height="80px" Width="590px" BackColor="White">
                                    </asp:DropDownList>
                                    <b style="text-align: center"><span style="color: #000099">
                                    <asp:TextBox ID="TextBox14" runat="server" Visible="False" Width="101px"></asp:TextBox>
                                    </span></b>
                                </td>
                                <td class="auto-style64"></td>
                            </tr>
                            <tr>
                                <td class="auto-style53" colspan="4"><b style="text-align: center"><span style="color: #000099">
                                    <asp:Panel ID="Panel121" runat="server" BackColor="#006666" CssClass="BUTTOM" Width="743px">
                                        <table class="auto-style61">
                                            <tr>
                                                <td>
                                                    <br />
                                                    <asp:Button ID="Button13" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Height="75px" OnClick="Button13_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='#4CAF50'" style="font-size: x-large" Text="SUBMIT" Width="400px" />
                                                    <br />
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    </span></b></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvInformation1" runat="server" CellPadding="16" EnableModelValidation="True" ForeColor="#333333" GridLines="None" style="font-size: x-large" Width="103%">
                        <AlternatingRowStyle BackColor="#99FF66" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#99FF66" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style52">
                    <asp:Label ID="Label14" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top (15) [PlateNumber],brand, [NameService], [Price], [PayedCash],StaffName, [dateRecorded] FROM [WebDetailsDataView] WHERE ([OperationDay] = @OperationDay) ORDER BY [dateRecorded]  DESC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Panel ID="Panel10" runat="server" BackColor="Silver" CssClass="BUTTOM" Width="102%">
                        <table class="auto-style61">
                            <tr>
                                <td>
                                    <table class="auto-style61">
                                        <tr>
                                            <td class="auto-style69">
                                                <asp:FormView ID="FormView10" runat="server" DataSourceID="SqlDataSource6" Width="452px">
                                                    <EditItemTemplate>
                                                        No:
                                                        <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        No:
                                                        <asp:TextBox ID="NoTextBox0" runat="server" Text='<%# Bind("No") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Panel ID="Panel120" runat="server">
                                                            <table class="auto-style26">
                                                                <tr>
                                                                    <td style="text-align: right">
                                                                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Text="SERVED VEHICLES:"></asp:Label>
                                                                    </td>
                                                                    <td style="text-align: left">
                                                                        <asp:Label ID="NoLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="#003366" Text='<%# Bind("No") %>' />
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </td>
                                            <td style="text-align: right">
                                                <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" Height="60px" Width="371px">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" ShowFooter="True" style="font-size: large" Width="100%">
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
                                            <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber">
                                            <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                            <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NameService" FooterText="TOTAL:" HeaderText="Service" SortExpression="NameService">
                                            <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                            <ItemStyle ForeColor="White" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                            <ItemStyle ForeColor="Yellow" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="StaffName" HeaderText="Washman" SortExpression="StaffName">
                                            <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style52">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT distinct dateAdded, [OperationDay] FROM [DetailSales] ORDER BY [dateAdded] DESC"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT COUNT(PlateNumber) AS No  FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay) " UpdateCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView ORDER BY dateRecorded DESC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList13" runat="server" AutoPostBack="True" Height="19px" Visible="False" Width="182px">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

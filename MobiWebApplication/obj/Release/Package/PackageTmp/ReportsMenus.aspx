<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ReportsMenus.aspx.cs" Inherits="MobiWebApplication.WebForm46" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ReportsMenu.aspx.cs" Inherits="MobiWebApplication.WebForm4" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style9
        {
            width: 180px;
            height: 76px;
            font-size:xx-large;            
            font-family:Agency FB;
            
        }
        .style10
        {
            height: 22px;
        }
        .style11
        {
            width: 197px;
            height: 45px;
        }
        .style13
        {
            height: 63px;
        }
        .style15
        {
            width: 180px;
            height: 63px;
            font-family:Agency FB;
            cursor:Hand;
        }
        .style17
        {
            height: 63px;
            width: 138px;
        }
        .style18
        {
            width: 138px;
        }
        .style20
        {
            height: 22px;
            width: 138px;
        }
        .style22
        {
            width: 190px;
            height: 63px;
        }
        .style23
        {
        }
        .style28
        {
            width: 180px;
        }
        .style30
        {
            width: 180px;
            height: 22px;
        }
        .style31
        {
            width: 190px;
            height: 22px;
        }
        .style36
        {
            width: 138px;
            height: 41px;
        }
        .style37
        {
            width: 180px;
            height: 41px;
        }
        .style38
        {
            width: 190px;
            height: 41px;
        }
        .style39
        {
            height: 41px;
        }
        .style40
        {
            width: 138px;
            height: 50px;
        }
        .style41
        {
            width: 180px;
            height: 50px;
        }
        .style42
        {
            width: 190px;
            height: 50px;
        }
        .style43
        {
            height: 50px;
        }
        .style44
        {
            height: 59px;
            width: 138px;
        }
        .style45
        {
            width: 180px;
            height: 59px;
        }
        .style46
        {
            width: 190px;
            height: 59px;
        }
        .style47
        {
            height: 59px;
        }
        .style48
        {
            height: 76px;
            width: 138px;
        }
        .style50
        {
            width: 190px;
            height: 76px;
        }
        .style51
        {
            height: 76px;
        }
        .style52
        {
            width: 138px;
            height: 35px;
        }
        .style54
        {
            width: 178px;
            height: 76px;
        }
        .style55
        {
            width: 178px;
            height: 63px;
        }
        .style56
        {
            width: 178px;
            height: 59px;
        }
        .style57
        {
            width: 178px;
            height: 41px;
        }
        .style58
        {
            width: 178px;
            height: 50px;
        }
        .style59
        {
            width: 178px;
            height: 22px;
        }
        .style60
        {
        }
        .btnlogin
        {
            font-size: medium;
            font-weight: 700;
        }
        .auto-style209
        {
            font-size: large;
            border-bottom-left-radius:8px;
            border-bottom-right-radius:8px;
            border-top-left-radius:8px;
            border-top-right-radius:8px;


        }
        .auto-style210
        {
            height: 25px;
        }
        .auto-style211
        {
            width: 285px;
            height: 25px;
        }
        .style25
        {
            width: 296px;
        }
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style219
        {
            width: 44px;
            height: 24px;
        }
        .auto-style220
        {
            height: 24px;
        }
        .auto-style4
        {
            width: 67%;
        }
        .auto-style13
        {
            width: 5px;
        }
        .auto-style230
        {
            text-align: center;
        }
        .auto-style231
        {
            height: 20px;
        }
        .auto-style235
        {
            text-align: left;
        }
        .auto-style122
        {
            width: 101%;
            height: 59px;
        }
        .style128
        {
            height: 20px;
        }
        .auto-style180
        {
            width: 316px;
        }
        .auto-style158
        {
            width: 513px;
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
        .auto-style185
        {
            width: 154px;
        }
        .auto-style186
        {
            width: 531px;
        }
        .auto-style176
        {
            width: 612px;
        }
        .auto-style170
        {
            width: 115%;
        }
        .auto-style175
        {
            width: 549px;
        }
        .auto-style26
        {
            width: 82%;
        }
        .auto-style272
        {
            width: 105px;
        }
        .auto-style273
        {
            width: 394px;
        }
        .auto-style274
        {
            text-align: center;
        }
        .auto-style275
        {
            width: 176px;
            text-align: left;
        }
        .auto-style294
        {
            text-align: left;
            width: 161px;
        }
        .auto-style296
        {
            text-align: right;
        }
        .auto-style303
        {
            height: 38px;
            text-align: center;
        }
        .auto-style305
        {
            height: 609px;
        }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style346
        {
            width: 282px;
        }
        .auto-style347
        {
            width: 349px;
        }
        .auto-style348
        {
            height: 19px;
        }
        .auto-style349
        {
            width: 410px;
        }
        .auto-style350
        {
            width: 366px;
        }
        .auto-style353
        {
            width: 229px;
        }
        .auto-style354
        {
            height: 417px;
        }
        .auto-style356
        {
            height: 19px;
            text-align: left;
        }
        .auto-style357
        {
            width: 104px;
        }
        .auto-style358
        {
            width: 151px;
        }
        .auto-style359
        {
            width: 130px;
        }
        .auto-style369
        {
            width: 260px;
            text-align: left;
        }
        .auto-style373
        {
            width: 208px;
        }
        .auto-style381
        {
            text-align: left;
        }
        .auto-style382
        {
            width: 276px;
            text-align: left;
        }
        .auto-style383
        {
            width: 7px;
        }
        .auto-style384 {
            width: 264px;
        }
        .auto-style385 {
            width: 264px;
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
      <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> 
        <script>
            function doPrintdailyRPT() {
                var prtContent = document.getElementById('<%= Panel48ALL.ClientID %>');
                prtContent.border = 0; //set no border here
                WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
                WinPrint.document.write(prtContent.outerHTML);
                WinPrint.document.close();
                WinPrint.focus();
                WinPrint.print();
                //WinPrint.close();
            }
         </script>

         <script>
             function doPrintdailyShortRPT() {
                 var prtContent = document.getElementById('<%= Panel16.ClientID %>');
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
            <td >
                <asp:Panel ID="Panel2" runat="server" BackColor="#006666"  Width="887px">
                    <table >
                        <tr>
                            <td colspan="3">
                                <br />
                                <asp:Panel ID="Panel12" runat="server" CssClass="Panel1Registration" BackColor="Silver">
                                    <table>
                                        <tr>
                                            <td >
                                                <asp:Panel ID="Panel77" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                    <table>
                                                        <tr>
                                                            <td >
                                                                <asp:Label ID="Label53" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="DATE"></asp:Label>
                                                            </td>
                                                            <td >
                                                                <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="Gray" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            <td >
                                                <asp:Panel ID="Panel15" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                    <table >
                                                        <tr>
                                                            <td >
                                                                <asp:TextBox ID="TextBox9" runat="server" BorderColor="#003366" BorderStyle="Groove" CssClass="inputSearch" Height="41px" placeholder="      Search ...  " Width="138px"></asp:TextBox>
                                                            </td>
                                                            <td >
                                                                <asp:Button ID="Button56" runat="server" BackColor="#3399FF" BorderStyle="None" BorderWidth="1px" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="46px"  onmouseout="this.style.backgroundColor='#4CAF50'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Search" OnClick="Button56_Click" />
                                                            </td>
                                                            <td >
                                                                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" ShowHeader="False">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="check">
                                                                            <HeaderTemplate>
                                                                                <asp:Button ID="Button43" runat="server" BackColor="#99FF99" BorderStyle="None" Font-Bold="True" ForeColor="Red" Height="31px" Text="Check" Width="69px" />
                                                                            </HeaderTemplate>
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox12_CheckedChanged"/>
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
                                                            <td class="auto-style13">
                                                                <asp:Button ID="Button57" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="46px"  onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="Download Dts" Width="142px" OnClick="Button57_Click" OnClientClick="   doPrintdailyRPT()" />
                                                            </td>
                                                            <td class="auto-style13">
                                                                <asp:Button ID="Button58" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="46px"  OnClientClick="   doPrintdailyShortRPT()" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="Download Sht" Width="131px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                <asp:Label ID="AlertLabel10" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <b style="text-align: center"><span style="color: #000099">
                                <asp:Panel ID="Panel11" runat="server" BackColor="#006666" CssClass="PanelHomeLogin" Visible="False">
                                    <table class="style25">
                                        <tr>
                                            <td class="auto-style219" style="text-align: right; "><b style="text-align: center"><span style="color: #000099">
                                                <asp:Label ID="Label37" runat="server" ForeColor="White" Text="From"></asp:Label>
                                                </span></b></td>
                                            <td class="auto-style220" valign="top">
                                                <asp:DropDownList ID="DropDownListD3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="DropDownListM3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="DropDownListYEAR3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-align: right; width: 44px;" valign="top"><b style="text-align: center"><span style="color: #000099">
                                                <asp:Label ID="Label38" runat="server" ForeColor="White" Text="To"></asp:Label>
                                                </span></b></td>
                                            <td valign="top">
                                                <asp:DropDownList ID="DropDownListD4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="DropDownListM4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="DropDownListYEAR4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                </span></b>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                <asp:Label ID="Label2to" runat="server" ForeColor="Orange" Text="Label2to" Visible="False"></asp:Label>
                                <asp:Label ID="Label1from" runat="server" ForeColor="Orange" Text="Label1from" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="auto-style303">
                                <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="MENU REPORTS"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td  colspan="3">
                                <asp:Panel ID="Panel48" runat="server" BackColor="#006666" CssClass="PanelHomeLogin">
                                    <table class="auto-style213">
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel3" runat="server" BackColor="Orange" CssClass="PanelHomeLogin">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="Button2" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Text="DAILY REPORTS" Width="293px" OnClick="Button2_Click2"  />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button3" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px"  onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Text="ADD SYSTEM USER" Width="305px" OnClick="Button3_Click1" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button6" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Text="ADD NEW STAFF" Width="294px" OnClick="Button6_Click" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="Button33" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px"  onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Text="CLIENTS COMMUNICATION" Width="293px" OnClick="Button33_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button35" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Text="CLIENT/STAFF CREDITS STATUS" Width="305px" OnClick="Button35_Click"  />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button37" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Text="CHANGE PRICE" Width="294px" OnClick="Button37_Click" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="Button34" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Width="293px" OnClick="Button34_Click" Text="DELETE SERVICE"  />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button36" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Width="305px" OnClick="Button36_Click1" Text="INVOICE" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="Button38" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White" Height="68px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#4CAF50'" Text="OLD MENU" Width="294px" OnClick="Button38_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Panel ID="Panel16" runat="server" BackColor="Orange" CssClass="PanelHomeLogin">
                                                    <table class="auto-style213">
                                                        <tr>
                                                            <td style="text-align: center">
                                                                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Gray" Text="DAILY SHORT REPORT"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:FormView ID="FormView1" runat="server" BackColor="#006666" DataSourceID="DailySummary" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" style="text-align: left; margin-right: 0px">
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
                                                                        <asp:TextBox ID="servedVehTextBox0" runat="server" Text='<%# Bind("servedVeh") %>' />
                                                                        <br />
                                                                        Daily Services Value:
                                                                        <asp:TextBox ID="Service_AmountTextBox0" runat="server" Text='<%# Bind("Service_Amount") %>' />
                                                                        <br />
                                                                        Daily Served Vehicle by Credit:
                                                                        <asp:TextBox ID="Credit_AmountTextBox0" runat="server" Text='<%# Bind("Credit_Amount") %>' />
                                                                        <br />
                                                                        Served Vehicle by Momo:
                                                                        <asp:TextBox ID="momoTextBox0" runat="server" Text='<%# Bind("momo") %>' />
                                                                        <br />
                                                                        Paid Amount for Served Vehicle:
                                                                        <asp:TextBox ID="Payed_AmountTextBox0" runat="server" Text='<%# Bind("Payed_Amount") %>' />
                                                                        <br />
                                                                        Daily Staff Credit:
                                                                        <asp:TextBox ID="Staff_CreditTextBox0" runat="server" Text='<%# Bind("Staff_Credit") %>' />
                                                                        <br />
                                                                        Amount Paid by Client on Credit:
                                                                        <asp:Label ID="ClientPaymentTextBox0" runat="server" Text='<%# Bind("ClientPayment") %>' />
                                                                        <br />
                                                                        Amount Paid by Staff on Credit:
                                                                        <asp:TextBox ID="AmountPayeddTextBox0" runat="server" Text='<%# Bind("AmountPayedd") %>' />
                                                                        <br />
                                                                        Daily Expenses:
                                                                        <asp:TextBox ID="Daily_ExpensesTextBox0" runat="server" Text='<%# Bind("Daily_Expenses") %>' />
                                                                        <br />
                                                                        Balance:
                                                                        <asp:TextBox ID="BalannceTextBox0" runat="server" Text='<%# Bind("Balannce") %>' />
                                                                        <br />
                                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                    </InsertItemTemplate>
                                                                    <ItemTemplate>
                                                                        <asp:Panel ID="Panel17" runat="server">
                                                                            <table >
                                                                                <tr>
                                                                                    <td colspan="6">
                                                                                        <asp:Panel ID="Panel78" runat="server">
                                                                                            <table class="auto-style339">
                                                                                                <tr>
                                                                                                    <td class="auto-style357">&nbsp;</td>
                                                                                                    <td class="auto-style358">&nbsp;</td>
                                                                                                    <td class="auto-style359">&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                    <td class="auto-style373">&nbsp;</td>
                                                                                                    <td class="auto-style357">
                                                                                                        &nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                    <td>&nbsp;</td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td class="auto-style357" style="text-align: right">
                                                                                                        <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="CASH:"></asp:Label>
                                                                                                    </td>
                                                                                                    <td class="auto-style358">
                                                                                                        <asp:Label ID="CashLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Cash") %>' />
                                                                                                    </td>
                                                                                                    <td class="auto-style359" style="text-align: right">
                                                                                                        <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="CREDIT:"></asp:Label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:Label ID="Credit_AmountLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" style="font-weight: 700; color: orange" Text='<%# Bind("Credit_Amount") %>' />
                                                                                                    </td>
                                                                                                    <td class="auto-style373" style="text-align: right">
                                                                                                        <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="MOMO:"></asp:Label>
                                                                                                    </td>
                                                                                                    <td class="auto-style357">
                                                                                                        <asp:Label ID="momoLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("momo") %>' />
                                                                                                    </td>
                                                                                                    <td style="text-align: right">
                                                                                                        <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="VISA "></asp:Label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:Label ID="visaCardLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("visaCard") %>' />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </asp:Panel>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style356" colspan="6">
                                                                                        &nbsp; &nbsp;<asp:Label ID="Label48" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="-----------------------------------------------------------------------------------"></asp:Label>
                                                                                        </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style381">&nbsp;</td>
                                                                                    <td align="right">
                                                                                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="1-PAID CASH"></asp:Label>
                                                                                    </td>
                                                                                    <td align="left">
                                                                                        <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text=":"></asp:Label>
                                                                                        <asp:Label ID="Payed_AmountLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" style="font-weight: 700; color: orange" Text='<%# Bind("Payed_Amount") %>' />
                                                                                    </td>
                                                                                    <td class="auto-style384" align="right" >
                                                                                        <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="4.UNPAID"></asp:Label>
                                                                                    </td>
                                                                                    <td align="left" >
                                                                                        <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text=":" />
                                                                                        <asp:Label ID="unpvehiLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" Text='<%# Bind("unpvehi") %>' ForeColor="Orange" />
                                                                                    </td>
                                                                                    <td> </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td ></td>
                                                                                    <td align="right" >
                                                                                        <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="2-STAFF RPY"></asp:Label>
                                                                                    </td>
                                                                                    <td align="left" >
                                                                                        <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text=":"></asp:Label>
                                                                                        <asp:Label ID="AmountPayeddLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" style="font-weight: 700; color: orange" Text='<%# Bind("AmountPayedd") %>' />
                                                                                    </td>
                                                                                    <td align="right">
                                                                                        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="5-STAFF  CRDT"></asp:Label>
                                                                                    </td>
                                                                                    <td align="left" >
                                                                                        <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text=":" />
                                                                                        <asp:Label ID="Staff_CreditLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" style="font-weight: 700; color: orange" Text='<%# Bind("Staff_Credit") %>' />
                                                                                    </td>
                                                                                    <td class="auto-style235">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style381">&nbsp;</td>
                                                                                    <td align="right">
                                                                                        <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="3-CLIENTS RPY"></asp:Label>
                                                                                    </td>
                                                                                    <td class="auto-style369" align="left">
                                                                                        <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text=":" />
                                                                                        <asp:Label ID="ClientPaymentLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" style="font-weight: 700; color: orange" Text='<%# Bind("ClientPayment") %>' />
                                                                                    </td>
                                                                                    <td align="right">
                                                                                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="6-EXPENSES"></asp:Label>
                                                                                    </td>
                                                                                    <td class="auto-style294" align="left">
                                                                                        <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text=":" />
                                                                                        <asp:Label ID="Daily_ExpensesLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" style="font-weight: 700; color: orange" Text='<%# Bind("Daily_Expenses") %>' />
                                                                                    </td>
                                                                                    <td class="auto-style235">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style381" colspan="6">
                                                                                        <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="-----------------------------------------------------------------------------------"></asp:Label>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style381">&nbsp;</td>
                                                                                    <td class="auto-style382">&nbsp;</td>
                                                                                    <td class="auto-style369">
                                                                                        <asp:Label ID="Label42" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" style="font-size: x-large" Text="SERVED V"></asp:Label>
                                                                                    </td>
                                                                                    <td class="auto-style385">
                                                                                        <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Text=":" />
                                                                                        <asp:Label ID="servedVehLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" style="font-weight: 700; color: orange" Text='<%# Bind("servedVeh") %>' />
                                                                                    </td>
                                                                                    <td class="auto-style294">&nbsp;</td>
                                                                                    <td class="auto-style235">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style381">&nbsp;</td>
                                                                                    <td class="auto-style382">&nbsp;</td>
                                                                                    <td class="auto-style369">
                                                                                        <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" style="font-size: x-large" Text="CASH"></asp:Label>
                                                                                    </td>
                                                                                    <td class="auto-style385">
                                                                                        <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Text=":"></asp:Label>
                                                                                        <asp:Label ID="BalannceLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" style="font-weight: 700; color: orange" Text='<%# Bind("Balannce") %>' />
                                                                                    </td>
                                                                                    <td class="auto-style294">&nbsp;</td>
                                                                                    <td class="auto-style235">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style381">
                                                                                        &nbsp;</td>
                                                                                    <td class="auto-style382">&nbsp;</td>
                                                                                    <td class="auto-style369">
                                                                                        &nbsp;</td>
                                                                                    <td class="auto-style385">
                                                                                        &nbsp;</td>
                                                                                    <td class="auto-style294">&nbsp;</td>
                                                                                    <td class="auto-style235">&nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="auto-style296" colspan="6">
                                                                                        &nbsp;</td>
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
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style231" colspan="3">
                                <asp:SqlDataSource ID="DailySummary" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT servedVeh, Cash, visaCard, unpvehi, Service_Amount, Credit_Amount, momo,Cash + momo + AmountPayedd AS CashMoMo, Payed_Amount, Staff_Credit, ClientPayment, AmountPayedd, Daily_Expenses, Balannce, ClientCreditStatus, StaffCreditStatus FROM DailyClose2 WHERE (OperationDay = @OperationDay) ORDER BY idDayCloser DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style231" colspan="3">
                                <table class="auto-style213">
                                    <tr>
                                        <td class="style128">
                                            <asp:Panel ID="Panel48ALL" runat="server">
                                                <table class="auto-style213">
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelDailyServedVehicle" runat="server">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text="1.DAILY SERVED VEHICLES"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style305">
                                                                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSoServiceGroup">
                                                                                <ItemTemplate>
                                                                                    <asp:Panel ID="Panel5" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                                                                        <table class="auto-style122">
                                                                                            <tr>
                                                                                                <td class="style128">
                                                                                                    <asp:Panel ID="Panel8" runat="server">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td class="auto-style180" style="text-align: right"></td>
                                                                                                                <td style="text-align: center">
                                                                                                                    <asp:Label ID="NameService" runat="server" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text='<%# Eval("NameService") %>'></asp:Label>
                                                                                                                </td>
                                                                                                                <td style="text-align: left">&nbsp;</td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Panel ID="Panel4" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                                        <asp:Panel ID="Panel6" runat="server">
                                                                                                            <table class="auto-style122">
                                                                                                                <tr>
                                                                                                                    <td class="auto-style158">
                                                                                                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource3" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="865px">
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
                                                                                                                                <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name" />                                                                                                                                                                                                                                                             
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
                                                                                                                                <asp:BoundField DataField="dateRecorded" HeaderText="Date" DataFormatString="{0:d/MM/yyyy}" SortExpression="dateRecorded" /> 
                                                                                                                                <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                                                                                                            </Columns>
                                                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                                                            <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                        </asp:GridView>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td class="auto-style158">
                                                                                                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, [Repetition ], Price, PayedCash, Payment,Name, dateRecorded, userAdded FROM WebDetailsDataView WHERE NameService = @NameService  AND ([OperationDay] = @OperationDay) ORDER BY dateRecorded">
                                                                                                                            <SelectParameters>
                                                                                                                                <asp:ControlParameter ControlID="NameService" Name="NameService" PropertyName="Text" />
                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                            </SelectParameters>
                                                                                                                        </asp:SqlDataSource>
                                                                                                                        <asp:SqlDataSource ID="SqlDataSub" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT NameService, SUM(Price) AS Price, SUM(PayedCash) AS PayedCash FROM WebDetailsDataView WHERE (NameService = @NameService) AND ([OperationDay] = @OperationDay)  GROUP BY NameService">
                                                                                                                            <SelectParameters>
                                                                                                                                <asp:ControlParameter ControlID="NameService" Name="NameService" PropertyName="Text" />
                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                            </SelectParameters>
                                                                                                                        </asp:SqlDataSource>
                                                                                                                        <asp:SqlDataSource ID="SqlDataNumber" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT NameService, count (PlateNumber) AS No  FROM WebDetailsDataView WHERE (NameService = @NameService) AND ([OperationDay] = @OperationDay)  GROUP BY NameService ORDER BY No DESC">
                                                                                                                            <SelectParameters>
                                                                                                                                <asp:ControlParameter ControlID="NameService" Name="NameService" PropertyName="Text" />
                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
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
                                                                                                                                                                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Served V:"></asp:Label>
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
                                                                                                                                        <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSub" EnableModelValidation="True">
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
                                                                        <td>
                                                                            <asp:Panel ID="Panel22" runat="server" BackColor="Gray" CssClass="Panel1Registration">
                                                                                <table>
                                                                                    <tr>
                                                                                        <td class="auto-style185">&nbsp;</td>
                                                                                        <td class="auto-style186">
                                                                                            <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDatTotalNo" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox5" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    No:
                                                                                                    <asp:TextBox ID="NoTextBox2" runat="server" Text='<%# Bind("No") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton3" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    <asp:LinkButton ID="UpdateCancelButton3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox6" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    No:
                                                                                                    <asp:TextBox ID="NoTextBox1" runat="server" Text='<%# Bind("No") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton3" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    <asp:LinkButton ID="InsertCancelButton3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel14" runat="server">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Served V:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td style="text-align: left">
                                                                                                                    <asp:Label ID="NoLabel0" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                        <td class="auto-style176">
                                                                                            <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataTOTAL" EnableModelValidation="True">
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
                                                                                        <td class="auto-style175">
                                                                                            <asp:FormView ID="FormView20" runat="server" DataSourceID="DailySummary0" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    Cash:
                                                                                                    <asp:TextBox ID="CashTextBox" runat="server" Text='<%# Bind("Cash") %>' />
                                                                                                    <br />
                                                                                                    momo:
                                                                                                    <asp:TextBox ID="momoTextBox" runat="server" Text='<%# Bind("momo") %>' />
                                                                                                    <br />
                                                                                                    CashMoMo:
                                                                                                    <asp:TextBox ID="CashMoMoTextBox" runat="server" Text='<%# Bind("CashMoMo") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    Cash:
                                                                                                    <asp:TextBox ID="CashTextBox" runat="server" Text='<%# Bind("Cash") %>' />
                                                                                                    <br />
                                                                                                    momo:
                                                                                                    <asp:TextBox ID="momoTextBox" runat="server" Text='<%# Bind("momo") %>' />
                                                                                                    <br />
                                                                                                    CashMoMo:
                                                                                                    <asp:TextBox ID="CashMoMoTextBox" runat="server" Text='<%# Bind("CashMoMo") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <table class="auto-style170">
                                                                                                        <tr>
                                                                                                            <td style="text-align: right">
                                                                                                                <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Payed:"></asp:Label>
                                                                                                            </td>
                                                                                                            <td style="text-align: left">
                                                                                                                <asp:Label ID="CashMoMoLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("CashMoMo") %>' />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelSTAFFDAILYCREDIT0" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="2.CLIENTS DAILY CREDIT"></asp:Label>
                                                                            <asp:SqlDataSource ID="DailySummary0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  Cash, momo,Cash + momo + AmountPayedd AS CashMoMo FROM DailyClose2 WHERE (OperationDay = @OperationDay) ORDER BY idDayCloser DESC">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
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
                                                                                                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="dailyCredit" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="867px">
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
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style272">&nbsp;</td>
                                                                                                                <td class="auto-style275">
                                                                                                                    <asp:FormView ID="FormView14" runat="server" DataSourceID="CREDITNO" EnableModelValidation="True">
                                                                                                                        <EditItemTemplate>
                                                                                                                            NameService:
                                                                                                                            <asp:TextBox ID="NameServiceTextBox9" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                                            <br />
                                                                                                                            No:
                                                                                                                            <asp:TextBox ID="NoTextBox3" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="UpdateButton7" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                            <asp:LinkButton ID="UpdateCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </EditItemTemplate>
                                                                                                                        <InsertItemTemplate>
                                                                                                                            NameService:
                                                                                                                            <asp:TextBox ID="NameServiceTextBox10" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                                            <br />
                                                                                                                            No:
                                                                                                                            <asp:TextBox ID="NoTextBox4" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="InsertButton7" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                            <asp:LinkButton ID="InsertCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </InsertItemTemplate>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:Panel ID="Panel39" runat="server">
                                                                                                                                <table>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right">
                                                                                                                                            <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Served V:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="NoLabel1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </asp:Panel>
                                                                                                                        </ItemTemplate>
                                                                                                                    </asp:FormView>
                                                                                                                </td>
                                                                                                                <td class="auto-style275">&nbsp;</td>
                                                                                                                <td style="text-align: left">
                                                                                                                    <asp:FormView ID="FormView13" runat="server" DataSourceID="SqlDataCREDITS" EnableModelValidation="True">
                                                                                                                        <EditItemTemplate>
                                                                                                                            NameService:
                                                                                                                            <asp:TextBox ID="NameServiceTextBox7" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                                            <br />
                                                                                                                            Price:
                                                                                                                            <asp:TextBox ID="PriceTextBox7" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                            <br />
                                                                                                                            PayedCash:
                                                                                                                            <asp:TextBox ID="PayedCashTextBox7" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="UpdateButton6" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                            <asp:LinkButton ID="UpdateCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </EditItemTemplate>
                                                                                                                        <InsertItemTemplate>
                                                                                                                            NameService:
                                                                                                                            <asp:TextBox ID="NameServiceTextBox8" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                                            <br />
                                                                                                                            Price:
                                                                                                                            <asp:TextBox ID="PriceTextBox8" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                            <br />
                                                                                                                            PayedCash:
                                                                                                                            <asp:TextBox ID="PayedCashTextBox8" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="InsertButton6" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                            <asp:LinkButton ID="InsertCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </InsertItemTemplate>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:Panel ID="Panel38" runat="server">
                                                                                                                                <table class="auto-style170">
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right">
                                                                                                                                            <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Service Am:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="PriceLabel1" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelSTAFFDAILYCREDIT" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Label ID="Label55" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="4.STAFF DAILY UNPAID AND PAYMENT"></asp:Label>
                                                                            <asp:SqlDataSource ID="StaffHistoricView0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT StaffName, newBalance - amount + Payment AS oldCredit, amount, Payment, newBalance, dateClose, idStaffCredit, NameCredit, userAdded FROM StaffCreditReports1 WHERE (OperationDay = @OperationDay) AND (NameCredit = 'Unpaid') ORDER BY dateClose DESC">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="StaffHistoricViewCredit" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([amount]) AS amount  FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay) AND NameCredit ='Unpaid'">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="StaffHistoricViewPayment" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([Payment]) AS Payment FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay)  AND NameCredit ='Unpaid'">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel33" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <asp:GridView ID="gvInformation5" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="StaffHistoricView0" EnableModelValidation="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Height="56px" style="margin-left: 0px" Width="867px">
                                                                                                            <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                            <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                                            <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                            <Columns>
                                                                                                                <asp:TemplateField HeaderText="Sno">
                                                                                                                    <ItemTemplate>
                                                                                                                        <%# Container.DataItemIndex + 1 %>
                                                                                                                    </ItemTemplate>
                                                                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                                                                </asp:TemplateField>
                                                                                                                <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                                                                                                <asp:BoundField DataField="NameCredit" HeaderText="Category" SortExpression="NameCredit" />
                                                                                                                <asp:BoundField DataField="oldCredit" HeaderText="old Credit" ReadOnly="True" SortExpression="oldCredit">
                                                                                                                <ItemStyle ForeColor="#66FF33" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="amount" HeaderText="Am.Taken" SortExpression="amount">
                                                                                                                <ItemStyle ForeColor="#FFCCFF" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="Payment" HeaderText="Am.Paid" SortExpression="Payment">
                                                                                                                <ItemStyle ForeColor="#66FFCC" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="newBalance" HeaderText="Balance" SortExpression="newBalance">
                                                                                                                <ItemStyle ForeColor="Orange" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="dateClose" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateClose" />
                                                                                                                <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                                                                                            </Columns>
                                                                                                        </asp:GridView>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style272">&nbsp;</td>
                                                                                                                <td>
                                                                                                                    <asp:FormView ID="FormView8" runat="server" DataSourceID="StaffHistoricViewCredit" EnableModelValidation="True">
                                                                                                                        <EditItemTemplate>
                                                                                                                            amount:
                                                                                                                            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </EditItemTemplate>
                                                                                                                        <InsertItemTemplate>
                                                                                                                            amount:
                                                                                                                            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </InsertItemTemplate>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:Panel ID="Panel14" runat="server">
                                                                                                                                <table>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right">
                                                                                                                                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Credit:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="amountLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("amount") %>' />
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </asp:Panel>
                                                                                                                        </ItemTemplate>
                                                                                                                    </asp:FormView>
                                                                                                                </td>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:FormView ID="FormView9" runat="server" DataSourceID="StaffHistoricViewPayment" EnableModelValidation="True">
                                                                                                                        <EditItemTemplate>
                                                                                                                            Payment:
                                                                                                                            <asp:TextBox ID="PaymentTextBox" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </EditItemTemplate>
                                                                                                                        <InsertItemTemplate>
                                                                                                                            Payment:
                                                                                                                            <asp:TextBox ID="PaymentTextBox" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </InsertItemTemplate>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:Panel ID="Panel14" runat="server">
                                                                                                                                <table>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right">
                                                                                                                                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Payment:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="PaymentLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Payment") %>' />
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelSTAFFDAILYCREDIT1" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="3.STAFF DAILY CREDIT AND PAYMENT"></asp:Label>
                                                                            <asp:SqlDataSource ID="StaffHistoricView" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName],(newBalance-amount+Payment) as oldCredit, [amount],[Payment], [newBalance], [dateClose],[idStaffCredit],[NameCredit],[userAdded] FROM [StaffCreditReports1] WHERE (OperationDay = @OperationDay) AND [NameCredit]='Credit' ORDER BY [dateClose] DESC">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="StaffHistoricViewCredit0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([amount]) AS amount  FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay) AND NameCredit ='Credit'">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="StaffHistoricViewPayment0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([Payment]) AS Payment FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay)  AND NameCredit ='Credit'">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <b style="text-align: center">
                                                                            <asp:SqlDataSource ID="SendMessage" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idMessage], [MessageType], [MessaContent], [userAdded], [OperationDay], [operationMonth], [operationYear], [dateRecorded], [dateAdded], [ContactNo] FROM [SentMessage] WHERE ([OperationDay] = @OperationDay)">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:GridView ID="gvInformation14" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="SendMessage" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" GridLines="Horizontal" style="margin-left: 0px" Visible="False" Width="905px">
                                                                                <Columns>
                                                                                    <asp:TemplateField HeaderText="S/N">
                                                                                        <ItemTemplate>
                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                        </ItemTemplate>
                                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                                    </asp:TemplateField>
                                                                                    <asp:BoundField DataField="MessageType" HeaderText="MessageType" SortExpression="MessageType">
                                                                                    <ControlStyle />
                                                                                    <HeaderStyle HorizontalAlign="Left" Wrap="True" />
                                                                                    <ItemStyle ForeColor="White" HorizontalAlign="Left" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="ContactNo" HeaderText="Receiver" SortExpression="ContactNo">
                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="SentDate" SortExpression="dateAdded">
                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:HH\:mm}" HeaderText="SentTime" SortExpression="dateRecorded">
                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                    <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                                                                                    </asp:BoundField>
                                                                                </Columns>
                                                                                <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                <HeaderStyle BackColor="#006666" Font-Bold="True" ForeColor="Orange" />
                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                            </asp:GridView>
                                                                            </b>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel79" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <asp:GridView ID="gvInformation4" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="StaffHistoricView" EnableModelValidation="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Height="56px" style="margin-left: 0px" Width="867px">
                                                                                                            <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                            <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                                            <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                            <Columns>
                                                                                                                <asp:TemplateField HeaderText="Sno">
                                                                                                                    <ItemTemplate>
                                                                                                                        <%# Container.DataItemIndex + 1 %>
                                                                                                                    </ItemTemplate>
                                                                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                                                                </asp:TemplateField>
                                                                                                                <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                                                                                                <asp:BoundField DataField="NameCredit" HeaderText="Category" SortExpression="NameCredit" />
                                                                                                                <asp:BoundField DataField="oldCredit" HeaderText="old Credit" ReadOnly="True" SortExpression="oldCredit">
                                                                                                                <ItemStyle ForeColor="#66FF33" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="amount" HeaderText="Am.Taken" SortExpression="amount">
                                                                                                                <ItemStyle ForeColor="#FFCCFF" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="Payment" HeaderText="Am.Paid" SortExpression="Payment">
                                                                                                                <ItemStyle ForeColor="#66FFCC" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="newBalance" HeaderText="Balance" SortExpression="newBalance">
                                                                                                                <ItemStyle ForeColor="Orange" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="dateClose" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateClose" />
                                                                                                                <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                                                                                            </Columns>
                                                                                                        </asp:GridView>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style272">&nbsp;</td>
                                                                                                                <td>
                                                                                                                    <asp:FormView ID="FormView18" runat="server" DataSourceID="StaffHistoricViewCredit0" EnableModelValidation="True">
                                                                                                                        <EditItemTemplate>
                                                                                                                            amount:
                                                                                                                            <asp:TextBox ID="amountTextBox0" runat="server" Text='<%# Bind("amount") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="UpdateButton9" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton9" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </EditItemTemplate>
                                                                                                                        <InsertItemTemplate>
                                                                                                                            amount:
                                                                                                                            <asp:TextBox ID="amountTextBox1" runat="server" Text='<%# Bind("amount") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="InsertButton9" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton9" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </InsertItemTemplate>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:Panel ID="Panel80" runat="server">
                                                                                                                                <table>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right">
                                                                                                                                            <asp:Label ID="Label56" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Unpaid:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="amountLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("amount") %>' />
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </asp:Panel>
                                                                                                                        </ItemTemplate>
                                                                                                                    </asp:FormView>
                                                                                                                </td>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:FormView ID="FormView19" runat="server" DataSourceID="StaffHistoricViewPayment0" EnableModelValidation="True">
                                                                                                                        <EditItemTemplate>
                                                                                                                            Payment:
                                                                                                                            <asp:TextBox ID="PaymentTextBox0" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="UpdateButton10" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton10" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </EditItemTemplate>
                                                                                                                        <InsertItemTemplate>
                                                                                                                            Payment:
                                                                                                                            <asp:TextBox ID="PaymentTextBox1" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="InsertButton10" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton10" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </InsertItemTemplate>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:Panel ID="Panel81" runat="server">
                                                                                                                                <table>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right">
                                                                                                                                            <asp:Label ID="Label57" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Payment:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="PaymentLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Payment") %>' />
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelDAILYEXPENSES" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="4.DAILY EXPENSES"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel34" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="DAILYEXPENSES" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="867px">
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
                                                                                                                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                                                                                                                <asp:BoundField DataField="DetailsExpense" HeaderText="DetailsExpense" SortExpression="DetailsExpense" />
                                                                                                                <asp:BoundField DataField="dateAdded" HeaderText="dateAdded" SortExpression="dateAdded" />
                                                                                                                <asp:BoundField DataField="userAdded" HeaderText="userAdded" SortExpression="userAdded" />
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
                                                                                                                <td class="auto-style274">&nbsp;</td>
                                                                                                                <td class="auto-style273">&nbsp;</td>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:FormView ID="FormView12" runat="server" DataSourceID="DAILYEXPENSESTOTAL" EnableModelValidation="True">
                                                                                                                        <EditItemTemplate>
                                                                                                                            amount:
                                                                                                                            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </EditItemTemplate>
                                                                                                                        <InsertItemTemplate>
                                                                                                                            amount:
                                                                                                                            <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                                                                                                                            <br />
                                                                                                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                        </InsertItemTemplate>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:Panel ID="Panel36" runat="server">
                                                                                                                                <table>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right">
                                                                                                                                            <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total Expenses:"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="amountLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("amount") %>' />
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
                                                    <tr>
                                                        <td align="center">
                                                            <asp:Panel ID="PanelSTAFFDAILYCREDIT3" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td align="center">
                                                                            <asp:Label ID="Label64" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="5.CLIENTS DAILY CREDIT ON:"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel87" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <asp:GridView ID="GridClientPayment0" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="ClientHistoric" EnableModelValidation="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="867px">
                                                                                                            <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                            <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                                            <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                            <Columns>
                                                                                                                <asp:TemplateField HeaderText="Sno">
                                                                                                                    <ItemTemplate>
                                                                                                                        <%# Container.DataItemIndex + 1 %>
                                                                                                                    </ItemTemplate>
                                                                                                                    <ItemStyle HorizontalAlign="Right" />
                                                                                                                </asp:TemplateField>
                                                                                                                <asp:BoundField DataField="Name" HeaderText="Client Name" SortExpression="Name" />
                                                                                                                <asp:BoundField DataField="oldCredit" HeaderText="old Credit" SortExpression="oldCredit" >
                                                                                                                <ItemStyle ForeColor="#66FF33" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="Remain" HeaderText="Given" SortExpression="Remain" >
                                                                                                                <ItemStyle ForeColor="#FFCCFF" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="paid" HeaderText="Paid" SortExpression="paid" >
                                                                                                                <ItemStyle ForeColor="#99FF33" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="Reman" HeaderText="Balance" SortExpression="Reman" >
                                                                                                                <ItemStyle ForeColor="Orange" />
                                                                                                                </asp:BoundField>
                                                                                                                <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded" />
                                                                                                                <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded" />
                                                                                                              
                                                                                                            </Columns>
                                                                                                        </asp:GridView>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style272">
                                                                                                                    <asp:SqlDataSource ID="ClientHistoric" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecord, Name,oldCredit,Remain,paid ,oldCredit+Remain-paid As Reman, userAdded, dateRecorded, dateAdded FROM [ViewPaymentNew] WHERE OperationDay=@OperationDay  AND (Remain&gt;0 OR paid&gt;0) order by dateRecorded desc">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                </td>
                                                                                                                <td class="auto-style275">&nbsp;</td>
                                                                                                                <td class="auto-style275">&nbsp;</td>
                                                                                                                <td style="text-align: left">&nbsp;</td>
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelClientMna" runat="server" BackColor="Gray" CssClass="PanelHomeLogin" Visible="False" Width="709px">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Panel ID="Panel43" runat="server">
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel40" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td valign="top">
                                                                                                                    <asp:Panel ID="Panel45" runat="server">
                                                                                                                        <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="CLIENT COMMUNICATION"></asp:Label>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <asp:Panel ID="Panel44" runat="server" BackColor="Gray" CssClass="BUTTOM">
                                                                                                                        <table class="auto-style213">
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <asp:Panel ID="Panel47" runat="server" BackColor="SandyBrown" CssClass="BUTTOM0" Width="222px">
                                                                                                                                        <table class="auto-style4">
                                                                                                                                            <tr>
                                                                                                                                                <td>
                                                                                                                                                    <asp:TextBox ID="TextBox28" runat="server" BackColor="White" BorderStyle="None" ForeColor="Navy" Height="26px" placeholder="Plate No ...." Width="132px"></asp:TextBox>
                                                                                                                                                </td>
                                                                                                                                                <td>
                                                                                                                                                    <asp:Button ID="Button47" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Search" Width="69px" OnClick="Button47_Click" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                        </table>
                                                                                                                                    </asp:Panel>
                                                                                                                                </td>
                                                                                                                                <td class="auto-style353"><b style="text-align: center">
                                                                                                                                    <asp:Label ID="Labelsave0" runat="server" ForeColor="Orange"></asp:Label>
                                                                                                                                    </b></td>
                                                                                                                                <td>
                                                                                                                                    <asp:Button ID="Button48" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="39px" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="VIEW ALL" Width="121px" OnClick="Button48_Click" />
                                                                                                                                </td>
                                                                                                                                <td>&nbsp;</td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td valign="top">
                                                                                                                                    <table class="auto-style339">
                                                                                                                                        <tr>
                                                                                                                                            <td>&nbsp;</td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:TextBox ID="TextBox41" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Sender Name" Width="236px"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:TextBox ID="TextBox42" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="50px" placeholder="Message" TextMode="MultiLine" Width="236px"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                                <td class="auto-style353">&nbsp;</td>
                                                                                                                                <td>
                                                                                                                                    <asp:Button ID="Button46" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="39px" OnClientClick="return confirm ('Are you sure you want to SEND THIS MESSAGE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SEND" Width="121px" />
                                                                                                                                </td>
                                                                                                                                <td>&nbsp;</td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style274" valign="top">
                                                                                                                    <asp:Panel ID="Panel42" runat="server" BackColor="Gray" CssClass="BUTTOM">
                                                                                                                        <table class="auto-style26">
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <table class="auto-style26">
                                                                                                                                        <tr>
                                                                                                                                            <td style="font-weight: 700" valign="top">
                                                                                                                                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="6" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="623px">
                                                                                                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                                    <Columns>
                                                                                                                                                        <asp:TemplateField>
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <asp:CheckBox ID="CheckBox9" runat="server" AutoPostBack="True" BackColor="red" />
                                                                                                                                                            </ItemTemplate>
                                                                                                                                                            <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                                                                                                            <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                                                                        </asp:TemplateField>
                                                                                                                                                        <asp:TemplateField HeaderText="Sno">
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <%# Container.DataItemIndex + 1 %>
                                                                                                                                                            </ItemTemplate>
                                                                                                                                                            <ItemStyle HorizontalAlign="Center" />
                                                                                                                                                        </asp:TemplateField>
                                                                                                                                                        <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                                                                                        <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                                                                                        <asp:BoundField DataField="Name" HeaderText="Client No" SortExpression="Name" />
                                                                                                                                                        <asp:BoundField DataField="Phone" HeaderText="Contact No" SortExpression="Phone" />
                                                                                                                                                        <asp:BoundField DataField="idClient" SortExpression="idClient" />
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
                                                                                                                                                        <td class="auto-style274">&nbsp;</td>
                                                                                                                                                        <td class="auto-style273">&nbsp;</td>
                                                                                                                                                        <td style="text-align: right">&nbsp;</td>
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelStaffCreditStatus" runat="server" BackColor="Gray" CssClass="PanelHomeLogin" Visible="False">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Panel ID="Panel68" runat="server" BackColor="#006666">
                                                                                <table class="auto-style339">
                                                                                    <tr>
                                                                                        <td class="auto-style348">&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="auto-style348">
                                                                                            <table class="auto-style339">
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text="1.CLIENTS CREDIT STATUS"></asp:Label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:Button ID="Button52" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="39px" OnClick="Button52_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="CREDIT DETAILS" Width="214px" />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="auto-style348"></td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSoNamGroup">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel63" runat="server" BackColor="Gray" CssClass="PanelHomeLogin">
                                                                                                        <table class="auto-style122">
                                                                                                            <tr>
                                                                                                                <td class="style128">
                                                                                                                    <asp:Panel ID="Panel64" runat="server">
                                                                                                                        <table>
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style180" style="text-align: right"></td>
                                                                                                                                <td style="text-align: center">
                                                                                                                                    <asp:Label ID="Name" runat="server" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text='<%# Eval("Name") %>'></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td style="text-align: left">&nbsp;</td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td>
                                                                                                                    <asp:Panel ID="Panel65" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                                                        <asp:Panel ID="Panel66" runat="server">
                                                                                                                            <table class="auto-style122">
                                                                                                                                <tr>
                                                                                                                                    <td class="auto-style158">
                                                                                                                                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource6" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="865px">
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
                                                                                                                                                <asp:BoundField DataField="Name" HeaderText="Client Name" SortExpression="Name" />
                                                                                                                                                <asp:BoundField DataField="Phone" HeaderText="Contact No" SortExpression="Phone" />
                                                                                                                                                <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                                                                                <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                                                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                                                                                <ItemStyle ForeColor="#99FF33" />
                                                                                                                                                </asp:BoundField>
                                                                                                                                            </Columns>
                                                                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                                                                            <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                        </asp:GridView>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td class="auto-style158">
                                                                                                                                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, SUM(Price) AS Price, Payment,Name,Phone FROM WebDetailsDataView WHERE (Name = @Name) AND (Payment = 'Credit') GROUP BY Name, PlateNumber, brand, Payment,Phone
">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="SqlDataSub0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT Name, SUM(Price) AS Price FROM WebDetailsDataView WHERE (Name = @Name) AND (Payment = 'Credit') GROUP BY Name">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:Panel ID="Panel67" runat="server">
                                                                                                                                            <table style="width: 851px">
                                                                                                                                                <tr>
                                                                                                                                                    <td class="auto-style184">&nbsp;</td>
                                                                                                                                                    <td class="auto-style183">&nbsp;</td>
                                                                                                                                                    <td class="auto-style182">&nbsp;</td>
                                                                                                                                                    <td style="text-align: right">
                                                                                                                                                        <asp:FormView ID="FormView16" runat="server" DataSourceID="SqlDataSub0" EnableModelValidation="True">
                                                                                                                                                            <EditItemTemplate>
                                                                                                                                                                Name:
                                                                                                                                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                                                                                <br />
                                                                                                                                                                Price:
                                                                                                                                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                                                                <br />
                                                                                                                                                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                            </EditItemTemplate>
                                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                                Name:
                                                                                                                                                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                                                                                <br />
                                                                                                                                                                Price:
                                                                                                                                                                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                                                                <br />
                                                                                                                                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                            </InsertItemTemplate>
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <asp:Panel ID="Panel14" runat="server">
                                                                                                                                                                    <table>
                                                                                                                                                                        <tr>
                                                                                                                                                                            <td style="text-align: right">
                                                                                                                                                                                <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Sub-Total:"></asp:Label>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                                <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
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
                                                                                        <td>
                                                                                            <asp:Panel ID="Panel69" runat="server" BackColor="Gray" CssClass="Panel1Registration">
                                                                                                <table>
                                                                                                    <tr>
                                                                                                        <td class="auto-style185">&nbsp;</td>
                                                                                                        <td class="auto-style349">
                                                                                                            <asp:SqlDataSource ID="SqlDataSub1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM(Price) AS Price FROM WebDetailsDataView WHERE  (Payment = 'Credit') "></asp:SqlDataSource>
                                                                                                        </td>
                                                                                                        <td class="auto-style350">&nbsp;</td>
                                                                                                        <td class="auto-style175">
                                                                                                            <asp:FormView ID="FormView17" runat="server" DataSourceID="SqlDataSub1" EnableModelValidation="True">
                                                                                                                <EditItemTemplate>
                                                                                                                    Name:
                                                                                                                    <asp:TextBox ID="NameTextBox0" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                                    <br />
                                                                                                                    Price:
                                                                                                                    <asp:TextBox ID="PriceTextBox9" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                    <br />
                                                                                                                    <asp:LinkButton ID="UpdateButton8" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton8" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                </EditItemTemplate>
                                                                                                                <InsertItemTemplate>
                                                                                                                    Name:
                                                                                                                    <asp:TextBox ID="NameTextBox1" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                                    <br />
                                                                                                                    Price:
                                                                                                                    <asp:TextBox ID="PriceTextBox10" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                                    <br />
                                                                                                                    <asp:LinkButton ID="InsertButton8" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton8" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                </InsertItemTemplate>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:Panel ID="Panel70" runat="server">
                                                                                                                        <table>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: right">
                                                                                                                                    <asp:Label ID="Label46" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Client Total Credit:"></asp:Label>
                                                                                                                                </td>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:Label ID="PriceLabel2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </ItemTemplate>
                                                                                                            </asp:FormView>
                                                                                                        </td>
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
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel71" runat="server" BackColor="#006666">
                                                                                <table class="auto-style339">
                                                                                    <tr>
                                                                                        <td style="text-align: center">&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td style="text-align: center">
                                                                                            <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text="2.STAFF CREDIT STATUS"></asp:Label>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>&nbsp;</td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:Panel ID="Panel49" runat="server" BackColor="Gray" CssClass="BUTTOM">
                                                                                                <table class="auto-style26">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <table class="auto-style26">
                                                                                                                <tr>
                                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                                        <asp:GridView ID="gvInformation0" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="StaffCreditStatus" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="867px">
                                                                                                                            <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                            <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                                                            <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                            <Columns>
                                                                                                                                <asp:TemplateField HeaderText="Sno">
                                                                                                                                    <ItemTemplate>
                                                                                                                                        <%# Container.DataItemIndex + 1 %>
                                                                                                                                    </ItemTemplate>
                                                                                                                                    <ItemStyle HorizontalAlign="Center" />
                                                                                                                                </asp:TemplateField>
                                                                                                                                <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                                                                                                                <asp:BoundField DataField="phone" HeaderText="Contact No" SortExpression="phone" />
                                                                                                                                <asp:BoundField DataField="TotalCredit" HeaderText="Total Credit" SortExpression="TotalCredit">
                                                                                                                                <ItemStyle ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                </asp:BoundField>
                                                                                                                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                                                                                                            </Columns>
                                                                                                                        </asp:GridView>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                                        <table class="auto-style213">
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style274">&nbsp;</td>
                                                                                                                                <td class="auto-style273">&nbsp;</td>
                                                                                                                                <td style="text-align: right">
                                                                                                                                    <asp:FormView ID="FormView15" runat="server" DataSourceID="StaffCreditStatusTotal" EnableModelValidation="True">
                                                                                                                                        <EditItemTemplate>
                                                                                                                                            TotalCredit:
                                                                                                                                            <asp:TextBox ID="TotalCreditTextBox" runat="server" Text='<%# Bind("TotalCredit") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </EditItemTemplate>
                                                                                                                                        <InsertItemTemplate>
                                                                                                                                            TotalCredit:
                                                                                                                                            <asp:TextBox ID="TotalCreditTextBox" runat="server" Text='<%# Bind("TotalCredit") %>' />
                                                                                                                                            <br />
                                                                                                                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                        </InsertItemTemplate>
                                                                                                                                        <ItemTemplate>
                                                                                                                                            <asp:Panel ID="Panel14" runat="server">
                                                                                                                                                <table>
                                                                                                                                                    <tr>
                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                            <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Staff Total Credit:"></asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                            <asp:Label ID="TotalCreditLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("TotalCredit") %>' />
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
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelChangePrice" runat="server" BackColor="Gray" CssClass="PanelHomeLogin" Visible="False">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td style="text-align: center">
                                                                            <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="CHANGE PRICES"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel61" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700; text-align: center;" valign="top">
                                                                                                        <table class="auto-style339">
                                                                                                            <tr>
                                                                                                                <td class="auto-style347" style="text-align: right">
                                                                                                                    <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Category:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td class="auto-style346">
                                                                                                                    <asp:TextBox ID="TextBox26" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" placeholder="" ReadOnly="True" Width="285px"></asp:TextBox>
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="auto-style347" style="text-align: right">
                                                                                                                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Service:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td class="auto-style346">
                                                                                                                    <asp:TextBox ID="TextBox44" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" placeholder="" ReadOnly="True" Width="296px"></asp:TextBox>
                                                                                                                </td>
                                                                                                                <td>&nbsp;</td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style274" valign="top">
                                                                                                                    <asp:Panel ID="ServiceDervery" runat="server" BackColor="Gray">
                                                                                                                        <table class="auto-style4">
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:DropDownList ID="DropDownList16" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" DataSourceID="SqlDataSource5" DataTextField="manufactureName" DataValueField="IdManufacture" ForeColor="Navy" Width="238px">
                                                                                                                                    </asp:DropDownList>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox37" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Old Price" ReadOnly="True" Width="218px"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox43" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="New Price" Width="218px"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:Panel ID="Panel62" runat="server" BackColor="Gray" CssClass="Panel1Registration">
                                                                                                                                        <asp:Button ID="Button41" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="UPDATE" Width="121px" OnClick="Button41_Click1" />
                                                                                                                                    </asp:Panel>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style348" style="text-align: left">
                                                                                                                                    <asp:Label ID="AlertLabel7" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                                <td style="text-align: right" valign="top">
                                                                                                                    <asp:Panel ID="ServiceDervery0" runat="server" BackColor="Gray">
                                                                                                                        <table class="auto-style4">
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:GridView ID="gvInformation1" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource1" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="599px">
                                                                                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                        <EditRowStyle BackColor="#999999" />
                                                                                                                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <Columns>
                                                                                                                                            <asp:TemplateField>
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox6_CheckedChanged" />
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <FooterStyle BackColor="White" />
                                                                                                                                                <HeaderStyle BackColor="Orange" />
                                                                                                                                                <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <ItemStyle HorizontalAlign="Center" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:BoundField DataField="manufactureName" HeaderText="Category" SortExpression="manufactureName" />
                                                                                                                                            <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                                                                                                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="TotalCredit">
                                                                                                                                            <ItemStyle ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                            </asp:BoundField>
                                                                                                                                            <asp:BoundField DataField="IdService" SortExpression="IdService" />
                                                                                                                                        </Columns>
                                                                                                                                    </asp:GridView>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">&nbsp;</td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="AddNewStaff" runat="server" BackColor="Gray" CssClass="PanelHomeLogin" Visible="False">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel72" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style274" valign="top" colspan="2">
                                                                                                                    <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text="ADD NEW STAFF"></asp:Label>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="auto-style274" valign="top">
                                                                                                                    <asp:Panel ID="ServiceDervery1" runat="server" BackColor="Gray" Width="244px">
                                                                                                                        <table class="auto-style4">
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox56" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Staff Name" Width="218px"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox49" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Contact" Width="218px"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox50" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="NID" Width="218px"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:Panel ID="Panel76" runat="server" BackColor="Gray">
                                                                                                                                        <table class="auto-style339">
                                                                                                                                            <tr>
                                                                                                                                                <td class="auto-style348"></td>
                                                                                                                                                <td class="auto-style348"></td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td>
                                                                                                                                                    <asp:Button ID="Button54" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button54_Click" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="108px" />
                                                                                                                                                </td>
                                                                                                                                                <td>
                                                                                                                                                    <asp:Button ID="Button55" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button55_Click" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="UPDATE" Width="121px" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                        </table>
                                                                                                                                    </asp:Panel>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style348" style="text-align: left">
                                                                                                                                    <asp:Label ID="AlertLabel8" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                                <td style="text-align: right" valign="top">&nbsp;</td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="auto-style274" colspan="2" valign="top">
                                                                                                                    <asp:Panel ID="ServiceDervery2" runat="server" BackColor="Gray">
                                                                                                                        <table class="auto-style4">
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:SqlDataSource ID="StaffList" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName], [IDStaff], [phone], [NID], [status] FROM [StaffOperator]"></asp:SqlDataSource>
                                                                                                                                    <asp:GridView ID="gvInformation2" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="StaffList" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="850px">
                                                                                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                        <EditRowStyle BackColor="#999999" />
                                                                                                                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <Columns>
                                                                                                                                            <asp:TemplateField>
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:CheckBox ID="CheckBox10" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox10_CheckedChanged" />
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <FooterStyle BackColor="White" />
                                                                                                                                                <HeaderStyle BackColor="Orange" />
                                                                                                                                                <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <ItemStyle HorizontalAlign="Center" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                                                                                                                            <asp:BoundField DataField="phone" HeaderText="Contact No" SortExpression="phone" />
                                                                                                                                            <asp:BoundField DataField="NID" HeaderText="NID" SortExpression="NID" />
                                                                                                                                            <asp:BoundField DataField="IDStaff" SortExpression="IDStaff" />
                                                                                                                                        </Columns>
                                                                                                                                    </asp:GridView>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox47" runat="server" Visible="False"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">&nbsp;</td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
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
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="AddUserNew" runat="server" BackColor="Gray" CssClass="PanelHomeLogin" Visible="False">
                                                                <table class="auto-style213">
                                                                    <tr>
                                                                        <td class="auto-style354">
                                                                            <asp:Panel ID="Panel74" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <table class="auto-style26">
                                                                                                <tr>
                                                                                                    <td style="font-weight: 700" valign="top">
                                                                                                        <table class="auto-style213">
                                                                                                            <tr>
                                                                                                                <td class="auto-style230" valign="top" colspan="2">
                                                                                                                    <asp:Label ID="Label52" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text="ADD NEW USER"></asp:Label>
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <td class="auto-style230" valign="top">
                                                                                                                    <asp:Panel ID="ServiceDervery3" runat="server" BackColor="Gray">
                                                                                                                        <table class="auto-style4">
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox54" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Username" Width="218px"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:TextBox ID="TextBox55" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Password" Width="218px"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" DataSourceID="UserRoles" DataTextField="role_name" DataValueField="role_name" ForeColor="Navy" Width="238px">
                                                                                                                                    </asp:DropDownList>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:DropDownList ID="DropDownList19" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" DataSourceID="UserPermission" DataTextField="UserPemition" DataValueField="UserPemition" ForeColor="Navy" Width="238px">
                                                                                                                                    </asp:DropDownList>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:Panel ID="Panel75" runat="server" BackColor="Gray">
                                                                                                                                        <table class="auto-style339">
                                                                                                                                            <tr>
                                                                                                                                                <td class="auto-style348"></td>
                                                                                                                                                <td class="auto-style348"></td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td>
                                                                                                                                                    <asp:Button ID="Button51" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button51_Click" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="108px" />
                                                                                                                                                </td>
                                                                                                                                                <td>
                                                                                                                                                    <asp:Button ID="Button53" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button53_Click" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="UPDATE" Width="121px" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                        </table>
                                                                                                                                    </asp:Panel>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td class="auto-style348" style="text-align: left">
                                                                                                                                    <asp:Label ID="AlertLabel9" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </asp:Panel>
                                                                                                                </td>
                                                                                                                <td style="text-align: right" valign="top">
                                                                                                                    <asp:Panel ID="ServiceDervery4" runat="server" BackColor="Gray">
                                                                                                                        <table class="auto-style4">
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="userTable" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="603px">
                                                                                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                        <EditRowStyle BackColor="#999999" />
                                                                                                                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                        <Columns>
                                                                                                                                            <asp:TemplateField>
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:CheckBox ID="CheckBox11" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox11_CheckedChanged" />
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <FooterStyle BackColor="White" />
                                                                                                                                                <HeaderStyle BackColor="Orange" />
                                                                                                                                                <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                                                </ItemTemplate>
                                                                                                                                                <ItemStyle HorizontalAlign="Center" />
                                                                                                                                            </asp:TemplateField>
                                                                                                                                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                                                                                                                            <asp:BoundField DataField="UserPassWord" HeaderText="UserPassWord" SortExpression="UserPassWord" />
                                                                                                                                            <asp:BoundField DataField="role_name" HeaderText="role_name" SortExpression="role_name" />
                                                                                                                                            <asp:BoundField DataField="UserPemition" HeaderText="UserPemition" SortExpression="UserPemition" />
                                                                                                                                            <asp:BoundField DataField="UserId" SortExpression="UserId" />
                                                                                                                                        </Columns>
                                                                                                                                    </asp:GridView>
                                                                                                                                    <asp:SqlDataSource ID="userTable" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [UserName], [UserPassWord], [role_name], [UserPemition], [UserId] FROM [UserTable]"></asp:SqlDataSource>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                            <tr>
                                                                                                                                <td style="text-align: left">
                                                                                                                                    <asp:SqlDataSource ID="UserPermission" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [UserPemition] FROM [UserPermission]"></asp:SqlDataSource>
                                                                                                                                    <asp:SqlDataSource ID="UserRoles" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [role_name] FROM [UserRoles]"></asp:SqlDataSource>
                                                                                                                                    <asp:TextBox ID="TextBox52" runat="server" Visible="False"></asp:TextBox>
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
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <table class="auto-style339">
                                                                <tr>
                                                                    <td style="text-align: center">
                                                                        <asp:Label ID="Label54" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text="VEHICLE HISTORIC" Visible="False"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Panel ID="Panel7" runat="server" BackColor="Gray" CssClass="BUTTOM" Visible="False">
                                                                            <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource7" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="880px">
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
                                                                                    <asp:BoundField DataField="Name" HeaderText="Client Name" SortExpression="Name" />
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
                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded" />
                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                                                                </Columns>
                                                                                <EditRowStyle BackColor="#999999" />
                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                            </asp:GridView>
                                                                        </asp:Panel>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="PanelDelete" runat="server" BackColor="Gray" CssClass="BUTTOM" Visible="False">
                                                                <table class="auto-style339">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:Panel ID="Panel83" runat="server" BackColor="#006666">
                                                                                <table class="auto-style339">
                                                                                    <tr>
                                                                                        <td style="text-align: right" class="auto-style383">
                                                                                            &nbsp;</td>
                                                                                        <td style="text-align: left">
                                                                                            &nbsp;</td>
                                                                                        <td style="text-align: right">
                                                                                            <asp:Label ID="Label58" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" style="font-size: medium" Text="Vehicle:" Visible="False"></asp:Label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="TextBox57" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" placeholder="" ReadOnly="True"></asp:TextBox>
                                                                                        </td>
                                                                                        <td style="text-align: right">
                                                                                            <asp:Label ID="Label59" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" style="font-size: medium" Text="Plate No:" Visible="False"></asp:Label>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="TextBox58" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" placeholder="" ReadOnly="True" Width="164px"></asp:TextBox>
                                                                                        </td>
                                                                                        <td>
                                                                                            <asp:TextBox ID="TextBox59" runat="server" Width="16px" Visible="False"></asp:TextBox>
                                                                                        </td>
                                                                                        <td style="text-align: right">
                                                                                            <asp:Button ID="Button60" runat="server" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Navy" OnClick="Button60_Click1" OnClientClick="return confirm ('Are you sure you want to DELETE ?');" Text="Delete" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>&nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            <asp:GridView ID="gvServed" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource8" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="880px">
                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                <EditRowStyle BackColor="#999999" />
                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                <Columns>
                                                                                    <asp:TemplateField HeaderText="Sno">
                                                                                        <ItemTemplate>
                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                        </ItemTemplate>
                                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField>
                                                                                        <ItemTemplate>
                                                                                            <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox2_CheckedChanged" />
                                                                                        </ItemTemplate>
                                                                                        <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                                        <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                                    </asp:TemplateField>
                                                                                    <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                    <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                    <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                                                                    <asp:BoundField DataField="Repetition" HeaderText="TMZ " SortExpression="Repetition">
                                                                                    <ItemStyle ForeColor="Yellow" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                    <ItemStyle ForeColor="#99FF33" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                                                                    <ItemStyle ForeColor="Orange" />
                                                                                    </asp:BoundField>
                                                                                     <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded" />
                                                                                    <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment" />
                                                                                    <asp:BoundField DataField="idRecord" SortExpression="idRecord" />
                                                                                </Columns>
                                                                            </asp:GridView>
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
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style210">
                                <asp:SqlDataSource ID="StaffDailyCreddit" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName],(newBalance-amount+Payment) as oldCredit, [amount],[Payment], [newBalance], [dateClose],[userAdded],[idStaffCredit],[NameCredit] FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay) and NameCredit ='Credit' and [Payment] &gt;0 ORDER BY [dateClose]">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="StaffDailyCreddit0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName],(newBalance-amount+Payment) as oldCredit, [amount],[Payment], [newBalance], [dateClose],[userAdded],[idStaffCredit],[NameCredit] FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay) and NameCredit ='Unpaid' and [Payment] &gt;0 ORDER BY [dateClose]">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT IdManufacture, manufactureName FROM VehicleManufacture"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [manufactureName], [NameService], [Price], [IdManufacture], [IdService] FROM [MGridViewServicePrice] WHERE ([IdManufacture] = @IdManufacture)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList16" Name="IdManufacture" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="StaffDailyTOTAL0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([amount]) AS amount  FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay) AND NameCredit ='Unpaid'">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="StaffCreditStatus" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName], [phone], [TotalCredit], [status] FROM [MGridViewCreditControlStaff2] ORDER BY [TotalCredit] DESC"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="StaffCreditStatusTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([TotalCredit]) AS TotalCredit FROM MGridViewCreditControlStaff2"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDateClientList" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idClient], [Name], [Phone], [brand], [PlateNumber] FROM [CompanyVehicles] WHERE (Name &lt;&gt;'unknown')"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="dailyCredit" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView WHERE (OperationDay = @OperationDay) AND (Payment = 'Credit') ORDER BY dateRecorded">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataCREDITS" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(Price) AS Price  FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay)  AND (Payment = 'Credit')">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="CREDITNO" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  count (PlateNumber) AS No  FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay)  AND (Payment = 'Credit')">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <asp:SqlDataSource ID="DAILYEXPENSES" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [amount], [DetailsExpense], [dateAdded], [userAdded] FROM [ExpensesReports] WHERE ([OperationDay] = @OperationDay)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="StaffDailyPAYMENT0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([Payment]) AS Payment FROM [StaffCreditReports1] where ([OperationDay] = @OperationDay)  AND NameCredit ='Unpaid'">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="DAILYEXPENSESTOTAL" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM([amount]) AS amount FROM [ExpensesReports] WHERE ([OperationDay] = @OperationDay)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style210">
                                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style211">
                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecord ,Name,PlateNumber, brand, Repetition , Price, PayedCash, Payment,NameService, dateRecorded, userAdded FROM WebDetailsDataView  where ([OperationDay] = @OperationDay)    ORDER BY dateRecorded DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Name,PlateNumber, brand, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView  where PlateNumber=@PlateNumber   ORDER BY dateRecorded DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox9" Name="PlateNumber" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView WHERE (PlateNumber = @PlateNumber) ORDER BY dateRecorded DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox9" Name="PlateNumber" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSoNamGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT Name FROM WebDetailsDataView WHERE  (Payment = 'Credit')"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSoServiceGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  [NameService] FROM [WebDetailsDataView] WHERE ([OperationDay] = @OperationDay) ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataTOTAL" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM(Price) AS Price, SUM(PayedCash) AS PayedCash FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay) ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDatTotalNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  count (PlateNumber) AS No  FROM WebDetailsDataView WHERE  ([OperationDay] = @OperationDay) ">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                </td>
        </tr>
        </table>
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="WebForm71.aspx.cs" Inherits="MobiWebApplication.WebForm71" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 97%;
            height: 13px;
        }
        .auto-style7
        {
            height: 20px;
            text-align: left;
        }
        .auto-style8
        {
            height: 61px;
        }
        .auto-style13
        {
            width: 5px;
        }
        .auto-style25
        {
            width: 187px;
            height: 57px;
            text-align: left;
        }
        .auto-style26
        {
            width: 82%;
        }
        .auto-style28
        {
        }
        .auto-style29
        {
        }
        .auto-style30
        {
            width: 73px;
        }
        .auto-style31
        {
            width: 137px;
        }
        .auto-style32
        {
            width: 97px;
        }
        .auto-style37
        {
            height: 20px;
        }
        .auto-style38
        {
            text-align: right;
            width: 344px;
        }
        .auto-style39
        {
            text-align: right;
            height: 21px;
            width: 344px;
        }
        .auto-style40
        {
            height: 21px;
            text-align: left;
        }
        .auto-style41
        {
            text-align: left;
        }
        .auto-style42
        {
            width: 178px;
        }
        .auto-style43
        {
            width: 255px;
        }
        .auto-style44
        {
            width: 188px;
        }
        .auto-style45
        {
            width: 100%;
            height: 19px;
        }
        .auto-style46
        {
            width: 216px;
        }
        .auto-style49
        {
            height: 16px;
        }
        .auto-style50
        {
            width: 4px;
        }
        .auto-style53
        {
            width: 600px;
            height: 403px;
        }
        .style25
        {
            width: 296px;
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
        .auto-style221
        {
            text-align: right;
            width: 413px;
        }
        .auto-style223
        {
            text-align: right;
            width: 413px;
            height: 24px;
        }
        .auto-style224
        {
            text-align: left;
            height: 24px;
        }
        .auto-style225
        {
            width: 695px;
        }
        .auto-style227
        {
            width: 404px;
        }
        .style128
        {
            height: 20px;
        }
        .auto-style228 {
            width: 243px;
            height: 43px;
        }
        .auto-style229 {
            width: 269px;
            height: 20px;
        }
        .auto-style232 {
            height: 43px;
        }
        .auto-style233 {
            width: 571px;
            height: 43px;
        }
        .auto-style235 {
            height: 20px;
            text-align: center;
        }
        .auto-style238 {
            text-align: center;
        }
        .auto-style241 {
            width: 604px;
        }
        .auto-style242 {
            width: 967px;
        }
        .auto-style412 {
            text-align: center;
            height: 26px;
        }
        .auto-style413 {
            width: 271px;
        }
        .auto-style414 {
            width: 271px;
            height: 120px;
        }
        .auto-style416 {
            height: 28px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
      <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> 
         <script language="javascript">

             function SelectAllCheckboxes(spanChk) {

                 // Added as ASPX uses SPAN for checkbox
                 var oItem = spanChk.children;
                 var theBox = (spanChk.type == "checkbox") ?
                     spanChk : spanChk.children.item[0];
                 xState = theBox.checked;
                 elm = theBox.form.elements;

                 for (i = 0; i < elm.length; i++)
                     if (elm[i].type == "checkbox" &&
                              elm[i].id != theBox.id) {
                         //elm[i].click();
                         if (elm[i].checked != xState)
                             elm[i].click();
                         //elm[i].checked=xState;
                     }
             }
</script>
         <script>
             function doPrintInoice() {
                 var prtContent = document.getElementById('<%= Invoice.ClientID %>');
                 prtContent.border = 0; //set no border here
                 WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
                 WinPrint.document.write(prtContent.outerHTML);
                 WinPrint.document.close();
                 WinPrint.focus();
                 WinPrint.print();
                 //WinPrint.close();
             }
         </script>
    <asp:Panel ID="Panel1" runat="server" Width="926px">
        <table>
            <tr>
                <td class="auto-style8">
                    <asp:Panel ID="Panel2" runat="server" BackColor="Gray" CssClass="Panel1Registration" Width="886px" Height="35px">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style29">
                                    <asp:Button ID="Button52" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px"  onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Service" Width="138px" OnClick="Button52_Click" />
                                </td>
                                <td class="auto-style30">
                                    <asp:Button ID="Button32" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Mobile" Width="130px" OnClick="Button32_Click" />
                                </td>
                                <td class="auto-style31">
                                    <asp:Button ID="Button33" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px"  onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Expenses" Width="115px" OnClick="Button33_Click" />
                                </td>
                                <td class="auto-style32">
                                    <asp:Button ID="Button35" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Staff Credit" Width="111px" OnClick="Button35_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button36" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Client Payment" Width="104px" OnClick="Button36_Click" />
                                </td>
                                <td class="auto-style13">
                                    <asp:Button ID="Button34" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Reports" Width="95px" OnClick="Button34_Click" />
                                </td>
                                <td class="auto-style13">
                                    <asp:Button ID="Button37" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Log out" Width="69px" OnClick="Button37_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Panel ID="PanelAll" runat="server" BackColor="Gray">
                        <table >
                            <tr>
                                <td colspan="3">
                                    <table class="auto-style4">
                                        <tr>
                                            <td>
                                                <asp:Panel ID="PanelSevice" runat="server" Visible="False">
                                                    <table class="auto-style45">
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="Panel10" runat="server" BackColor="#006666">
                                                                    <table class="auto-style26">
                                                                        <tr>
                                                                            <td style="text-align: left">
                                                                                <asp:Panel ID="Panel25" runat="server">
                                                                                    <table class="auto-style45">
                                                                                        <tr>
                                                                                            <td colspan="8">
                                                                                                <asp:Panel ID="Panel39" runat="server" BackColor="Gray">
                                                                                                    <table class="auto-style45">
                                                                                                        <tr>
                                                                                                            <td valign="top" class="auto-style229">
                                                                                                                <asp:Panel ID="ServiceRegista" runat="server">                                                                                                                    
                                                                                                                    <table class="auto-style45">
                                                                                                                        <tr>
                                                                                                                            <td valign="top">
                                                                                                                                <asp:Panel ID="ServiceDervery" runat="server" BackColor="#006666" CssClass="Panel1Registration" Width="244px">
                                                                                                                                    <table class="auto-style4">
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:Panel ID="Panel4" runat="server" BackColor="SandyBrown" CssClass="BUTTOM0" Width="222px">
                                                                                                                                                    <table class="auto-style4">
                                                                                                                                                        <tr>
                                                                                                                                                            <td>
                                                                                                                                                                <asp:TextBox ID="TextBox28" runat="server" BackColor="White" BorderStyle="None" ForeColor="Navy" Height="26px" placeholder="Plate No ...." Width="132px" AutoPostBack="True" OnTextChanged="TextBox28_TextChanged"></asp:TextBox>
                                                                                                                                                            </td>
                                                                                                                                                            <td>
                                                                                                                                                                <asp:Button ID="Button38" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" OnClick="Button38_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Search" Width="69px" />
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                    </table>
                                                                                                                                                </asp:Panel>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:Label ID="AlertLabel" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                                                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" Visible="False" Width="50px"></asp:TextBox>
                                                                                                                                                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IDPayment], [Payment] FROM [PaymentType]"></asp:SqlDataSource>
                                                                                                                                                <asp:Label ID="StaffName" runat="server" Text="StaffName" Visible="False"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:DropDownList ID="DropDownList16" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" ForeColor="Navy" OnSelectedIndexChanged="DropDownList16_SelectedIndexChanged" Width="238px">
                                                                                                                                                </asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" ForeColor="Navy" OnSelectedIndexChanged="DropDownList17_SelectedIndexChanged" Width="238px">
                                                                                                                                                </asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" ForeColor="Navy" OnSelectedIndexChanged="DropDownList18_SelectedIndexChanged" Width="238px">
                                                                                                                                                </asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:Panel ID="Panel9" runat="server" BackColor="#006666">
                                                                                                                                                    <br />
                                                                                                                                                    <asp:Button ID="Button41" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button41_Click" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="121px" />
                                                                                                                                                </asp:Panel>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                    <asp:Label ID="AlertLabel7" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                                                </asp:Panel>
                                                                                                                                <asp:Panel ID="Registration" runat="server" BackColor="#006666" CssClass="Panel1Registration" Visible="False" Width="244px">
                                                                                                                                    <table class="auto-style4">
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:Label ID="AlertLabel0" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:TextBox ID="TextBox37" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Client Name" Width="218px"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:TextBox ID="TextBox38" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Contact No" Width="218px"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:TextBox ID="TextBox39" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Vehicle Type" Width="218px"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:TextBox ID="TextBox40" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Plate No" Width="218px"></asp:TextBox>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:DropDownList ID="DropDownList24" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" ForeColor="Navy" Width="238px">
                                                                                                                                                </asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="text-align: left">
                                                                                                                                                <asp:Panel ID="Panel15" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                                                                                                                    <asp:Button ID="Button44" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button44_Click" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="121px" />
                                                                                                                                                </asp:Panel>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber], [brand], [Repetition] FROM [WebRepetition1] WHERE ([PlateNumber] = @PlateNumber)">
                                                                                                                                        <SelectParameters>
                                                                                                                                            <asp:ControlParameter ControlID="TextBox26" Name="PlateNumber" PropertyName="Text" Type="String" />
                                                                                                                                        </SelectParameters>
                                                                                                                                    </asp:SqlDataSource>
                                                                                                                                    <asp:SqlDataSource ID="monthly" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idSales], [operationMonth] FROM [StartDaily] ORDER BY [idSales] DESC"></asp:SqlDataSource>
                                                                                                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="select TOP 1 Repetition from DetailSales where idClient=@idClient ORDER BY idRecord DESC">
                                                                                                                                        <SelectParameters>
                                                                                                                                            <asp:ControlParameter ControlID="TextBox29" Name="idClient" PropertyName="Text" />
                                                                                                                                        </SelectParameters>
                                                                                                                                    </asp:SqlDataSource>
                                                                                                                                    <asp:SqlDataSource ID="SqlDataSourceCurrentCredit0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName], [TotalCredit] FROM [MGridViewCreditControlStaff2] WHERE ([StaffName] = @StaffName)">
                                                                                                                                        <SelectParameters>
                                                                                                                                            <asp:ControlParameter ControlID="StaffName" Name="StaffName" PropertyName="Text" Type="String" />
                                                                                                                                        </SelectParameters>
                                                                                                                                    </asp:SqlDataSource>
                                                                                                                                </asp:Panel>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td valign="top">
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                <asp:Panel ID="Panel116" runat="server" Width="251px">
                                                                                                                                </asp:Panel>
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </asp:Panel>
                                                                                                            </td>
                                                                                                            <td valign="top">
                                                                                                                <asp:Panel ID="Panel7" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                                                                                    <table class="auto-style4">
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style7">
                                                                                                                                <table class="auto-style26">
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            <asp:FormView ID="FormView10" runat="server" DataSourceID="SqlDataSource6">
                                                                                                                                                <EditItemTemplate>
                                                                                                                                                    No:
                                                                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </EditItemTemplate>
                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                    No:
                                                                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Panel ID="Panel11" runat="server">
                                                                                                                                                        <table class="auto-style26">
                                                                                                                                                            <tr>
                                                                                                                                                                <td style="text-align: right">
                                                                                                                                                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="NS:"></asp:Label>
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
                                                                                                                                        <td>
                                                                                                                                            <asp:FormView ID="FormView11" runat="server" DataSourceID="ValueAmount" EnableModelValidation="True">
                                                                                                                                                <EditItemTemplate>
                                                                                                                                                    No:
                                                                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    dateAdded:
                                                                                                                                                    <asp:TextBox ID="dateAddedTextBox" runat="server" Text='<%# Bind("dateAdded") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </EditItemTemplate>
                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                    No:
                                                                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    dateAdded:
                                                                                                                                                    <asp:TextBox ID="dateAddedTextBox" runat="server" Text='<%# Bind("dateAdded") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Panel ID="Panel11" runat="server">
                                                                                                                                                        <table class="auto-style26">
                                                                                                                                                            <tr>
                                                                                                                                                                <td style="text-align: right">
                                                                                                                                                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="VALUE:"></asp:Label>
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
                                                                                                                                        <td>
                                                                                                                                            <asp:FormView ID="FormView9" runat="server" DataSourceID="SqlDataSource5" EnableModelValidation="True">
                                                                                                                                                <EditItemTemplate>
                                                                                                                                                    No:
                                                                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </EditItemTemplate>
                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                    No:
                                                                                                                                                    <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                                                                                                                                                    <br />
                                                                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                <ItemTemplate>
                                                                                                                                                    <asp:Panel ID="Panel11" runat="server">
                                                                                                                                                        <table class="auto-style26">
                                                                                                                                                            <tr>
                                                                                                                                                                <td style="text-align: right">
                                                                                                                                                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="PAID:"></asp:Label>
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
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style7">
                                                                                                                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="6" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Visible="False" Width="530px">
                                                                                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                    <Columns>
                                                                                                                                        <asp:TemplateField>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox6_CheckedChanged" />
                                                                                                                                            </ItemTemplate>
                                                                                                                                            <FooterStyle BackColor="White" />
                                                                                                                                            <HeaderStyle BackColor="Orange" />
                                                                                                                                            <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                                                                                        </asp:TemplateField>
                                                                                                                                        <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                                                                        <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                                                                        <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name" />
                                                                                                                                        <asp:BoundField DataField="manufactureName" HeaderText="Category" SortExpression="manufactureName" />
                                                                                                                                        <asp:BoundField DataField="idClient" SortExpression="idClient" />
                                                                                                                                        <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture" />
                                                                                                                                    </Columns>
                                                                                                                                    <EditRowStyle BackColor="#999999" />
                                                                                                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                </asp:GridView>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style7">
                                                                                                                                <table class="auto-style4">
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            <asp:Panel ID="Panel8" runat="server" BackColor="Gray" CssClass="Panel1Registration" Width="492px">
                                                                                                                                                <table>
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:TextBox ID="TextBox26" runat="server" BackColor="Gray" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" placeholder="" ReadOnly="True" Width="199px" OnTextChanged="TextBox26_TextChanged"></asp:TextBox>
                                                                                                                                                        </td>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:FormView ID="FormView8" runat="server" DataSourceID="SqlDataSource1" EnableModelValidation="True">
                                                                                                                                                                <EditItemTemplate>
                                                                                                                                                                    PlateNumber:
                                                                                                                                                                    <asp:TextBox ID="PlateNumberTextBox" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    brand:
                                                                                                                                                                    <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    Repetition:
                                                                                                                                                                    <asp:TextBox ID="RepetitionTextBox" runat="server" Text='<%# Bind("Repetition") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                </EditItemTemplate>
                                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                                    PlateNumber:
                                                                                                                                                                    <asp:TextBox ID="PlateNumberTextBox" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    brand:
                                                                                                                                                                    <asp:TextBox ID="brandTextBox" runat="server" Text='<%# Bind("brand") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    Repetition:
                                                                                                                                                                    <asp:TextBox ID="RepetitionTextBox" runat="server" Text='<%# Bind("Repetition") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                                <ItemTemplate>
                                                                                                                                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" Text="TMZ:"></asp:Label>
                                                                                                                                                                    &nbsp;<asp:Label ID="RepetitionLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="Orange" Text='<%# Bind("Repetition") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                </ItemTemplate>
                                                                                                                                                            </asp:FormView>
                                                                                                                                                        </td>
                                                                                                                                                        <td class="auto-style50" style="text-align: right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                            <asp:TextBox ID="TextBox27" runat="server" BackColor="Gray" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" placeholder="" ReadOnly="True" Width="181px"></asp:TextBox>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td class="auto-style7">
                                                                                                                                            <asp:Panel ID="Panel12" runat="server" BackColor="#006666">
                                                                                                                                                <table align="center" class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td class="auto-style28" style="text-align: left">
                                                                                                                                                            <asp:Button ID="Button30" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button30_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="New Vehicle" Width="138px" />
                                                                                                                                                            
                                                                                                                                                        </td>
                                                                                                                                                        <td class="auto-style25">
                                                                                                                                                            <asp:SqlDataSource ID="SqlDatTotalNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  count (PlateNumber) AS No  FROM WebDetailsDataView1 WHERE  ([OperationDay] = @OperationDay) AND (Payment = 'Cash' or Payment = 'MoMo Pay')">
                                                                                                                                                                <SelectParameters>
                                                                                                                                                                    <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                                                                </SelectParameters>
                                                                                                                                                            </asp:SqlDataSource>
                                                                                                                                                        </td>
                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                            &nbsp;</td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td class="auto-style28" colspan="3" style="text-align: left">
                                                                                                                                                            <asp:Panel ID="ServiceDervery0" runat="server" BackColor="#006666">
                                                                                                                                                                <table class="auto-style4">
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td align="left" style="text-align: left">
                                                                                                                                                                            <asp:DropDownList ID="DropDownList26" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" ForeColor="White" Visible="False">
                                                                                                                                                                            </asp:DropDownList>
                                                                                                                                                                        </td>
                                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                                            <asp:DropDownList ID="DropDownList27" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="SqlDataSource9" DataTextField="Payment" DataValueField="IDPayment" ForeColor="White" OnSelectedIndexChanged="DropDownList27_SelectedIndexChanged" Visible="False">
                                                                                                                                                                            </asp:DropDownList>
                                                                                                                                                                        </td>
                                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                                            <asp:Button ID="Button56" runat="server" BackColor="Gray" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" OnClick="Button56_Click" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="UPDATE" Visible="False" Width="121px" />
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td align="left" colspan="2" style="text-align: left">
                                                                                                                                                                            <asp:DropDownList ID="DropDownList37" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" ForeColor="White" OnSelectedIndexChanged="DropDownList27_SelectedIndexChanged" Visible="False">
                                                                                                                                                                            </asp:DropDownList>
                                                                                                                                                                            <asp:Label ID="Name" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                        <td style="text-align: right">
                                                                                                                                                                            <asp:Button ID="Button66" runat="server" BackColor="Gray" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" OnClick="Button66_Click" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="UPDATE WASHER" Visible="False" Width="121px" />
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td align="left" colspan="3" style="text-align: left">
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
                                                                                                                                                                                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="UNPAID VEHICLES:"></asp:Label>
                                                                                                                                                                                                </td>
                                                                                                                                                                                                <td style="text-align: left">
                                                                                                                                                                                                    <asp:Label ID="NoLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
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
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </asp:Panel>
                                                                                                                
                                                                                                                <asp:SqlDataSource ID="SqlDataSReceivedVehicle2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber],[brand],[manufactureName],[Name],[Phone], [NameService],StaffName,[Payment] ,[dateRecorded],[Price] FROM [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                                                                    <SelectParameters>
                                                                                                                        <asp:ControlParameter ControlID="TextBox1" Name="idRecord" PropertyName="Text" Type="Int32" />
                                                                                                                    </SelectParameters>
                                                                                                                </asp:SqlDataSource>
                                                                                                                <asp:SqlDataSource ID="InvoNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] from [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                                                                    <SelectParameters>
                                                                                                                        <asp:ControlParameter ControlID="TextBox1" Name="idRecord" PropertyName="Text" Type="Int32" />
                                                                                                                    </SelectParameters>
                                                                                                                </asp:SqlDataSource>
                                                                                                                
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style232" colspan="8">
                                                                                                <asp:Panel ID="Invoice" runat="server" BackColor="White" Visible="False" Width="100%">
                                                                                                    <table class="auto-style45">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="TextBox71" runat="server" BorderStyle="None" Width="34px"></asp:TextBox>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <table class="auto-style45">
                                                                                                                    <tr>
                                                                                                                        <td class="auto-style414" style="border-width: thin; border-color: #000000; border-style: none none dotted none">
                                                                                                                            <asp:Panel ID="Panel115" runat="server" Width="100%" Height="90px">
                                                                                                                                <table class="auto-style4">
                                                                                                                                    <tr>
                                                                                                                                        <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                            <asp:Label ID="Label83" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="MOBICARWASH LTD"></asp:Label>
                                                                                                                                            &nbsp;</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                            <asp:Label ID="Label84" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Tin No:"></asp:Label>
                                                                                                                                            <asp:Label ID="Label85" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="107048761"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                            <asp:Label ID="Label79" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:"></asp:Label>
                                                                                                                                            <asp:Label ID="Label80" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="0788341573"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td class="auto-style416" style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                            <asp:Label ID="Label81" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="MOMO Code:"></asp:Label>
                                                                                                                                            <asp:Label ID="Label82" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="700600"></asp:Label>
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
                                                                                                                                        <asp:FormView ID="FormView17" runat="server" DataKeyNames="idRecord" DataSourceID="InvoNo" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" style="margin-left: 9px">
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
                                                                                                                            <asp:FormView ID="FormView16" runat="server" DataSourceID="SqlDataSReceivedVehicle2" EnableModelValidation="True" style="text-align: center" Width="100%" Font-Bold="True" Font-Size="Medium">
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
                                                                                                                                                    <asp:Label ID="Label43" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Plate No:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="PlateNumberLabel" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("PlateNumber") %>' Font-Bold="True" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td align="center" class="auto-style412">
                                                                                                                                                    <asp:Label ID="Label44" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Vehicle:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="brandLabel" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("brand") %>' Font-Bold="True" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                    <asp:Label ID="Label45" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Category:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="manufactureNameLabel" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("manufactureName") %>' Font-Bold="True" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td align="center" class="auto-style235">
                                                                                                                                                    <asp:Label ID="Label46" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Client:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="NameLabel" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Name") %>' Font-Bold="True" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                    <asp:Label ID="Label47" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="PhoneLabel" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Phone") %>' Font-Bold="True" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                    <asp:Label ID="Label48" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Service:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="NameServiceLabel" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("NameService") %>' Font-Bold="True" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                    <asp:Label ID="Label49" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Staff:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="Washer" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("StaffName") %>' Font-Bold="True" />
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                            <tr>
                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                    <asp:Label ID="Label50" runat="server" Font-Names="Agency FB" Font-Size="Medium" Text="Date:" Font-Bold="True"></asp:Label>
                                                                                                                                                    <asp:Label ID="dateRecordedLabel" runat="server" DataFormatString="{0:d/MM/yyyy}" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("dateRecorded","{0:d/MM/yyyy}") %>' Font-Bold="True" />
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
                                                                                                            <td>
                                                                                                                &nbsp;</td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style232">
                                                                                                <asp:Button ID="Button51" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="39px" OnClick="Button51_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Served Vehicle" Width="120px" />
                                                                                            </td>
                                                                                            <td class="auto-style232">
                                                                                                <asp:DropDownList ID="DropDownList20" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="monthly" DataTextField="operationMonth" DataValueField="operationMonth" ForeColor="White">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                            <td class="auto-style228" style="text-align: right">
                                                                                                <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                            <td class="auto-style233" style="text-align: right">
                                                                                                <asp:Button ID="Button69" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClientClick="doPrintInoice()" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Print" Width="119px" />
                                                                                            </td>
                                                                                            <td class="auto-style233" style="text-align: right">
                                                                                                <asp:FormView ID="FormView15" runat="server" DataSourceID="SqlDataSourceCurrentCredit0" EnableModelValidation="True">
                                                                                                    <EditItemTemplate>
                                                                                                        TotalCredit:
                                                                                                        <asp:TextBox ID="TotalCreditTextBox0" runat="server" Text='<%# Bind("TotalCredit") %>' />
                                                                                                        <br />
                                                                                                        <asp:LinkButton ID="UpdateButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                    </EditItemTemplate>
                                                                                                    <InsertItemTemplate>
                                                                                                        TotalCredit:
                                                                                                        <asp:TextBox ID="TotalCreditTextBox1" runat="server" Text='<%# Bind("TotalCredit") %>' />
                                                                                                        <br />
                                                                                                        <asp:LinkButton ID="InsertButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                    </InsertItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="TotalCreditLabel0" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("TotalCredit","{0:0,000}") %>' />
                                                                                                        <br />
                                                                                                    </ItemTemplate>
                                                                                                </asp:FormView>
                                                                                            </td>
                                                                                            <td class="auto-style233" style="text-align: right">
                                                                                                <asp:TextBox ID="TextBox70" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Groove" CssClass="BUTTOM" Height="16px" placeholder="Credit Repay" Visible="False" Width="89px"></asp:TextBox>
                                                                                            </td>
                                                                                            <td class="auto-style233" style="text-align: right">
                                                                                                <asp:TextBox ID="TextBox9" runat="server" BackColor="White" BorderColor="#003366" BorderStyle="Groove" CssClass="BUTTOM" Height="16px" placeholder="Paid Cash" Width="90px"></asp:TextBox>
                                                                                            </td>
                                                                                            <td class="auto-style232" style="text-align: right">
                                                                                                <asp:Button ID="Button1" runat="server" BackColor="Orange" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="39px" onclick="Button1_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" style="margin-left: 0px" Text="SAVE" Width="92px" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Panel ID="RegisteredVehicle" runat="server" BackColor="#006666" CssClass="Panel1Registration" Visible="False">
                                                                                    <table class="auto-style4">
                                                                                        <tr>
                                                                                            <td class="auto-style7">
                                                                                                <table class="auto-style26">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <asp:Panel ID="Panel36" runat="server" BackColor="SandyBrown" CssClass="BUTTOM0" Width="222px">
                                                                                                                <table class="auto-style4">
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <asp:TextBox ID="TextBox68" runat="server" BackColor="White" BorderStyle="None" ForeColor="Navy" Height="26px" placeholder="Plate No ...." Width="132px"></asp:TextBox>
                                                                                                                        </td>
                                                                                                                        <td>
                                                                                                                            <asp:Button ID="Button63" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" OnClick="Button63_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Search" Width="69px" />
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </asp:Panel>
                                                                                                        </td>
                                                                                                        <td class="auto-style227">
                                                                                                            <asp:TextBox ID="TextBox69" runat="server" BorderStyle="None" Visible="False" Width="50px"></asp:TextBox>
                                                                                                            <asp:DropDownList ID="DropDownList35" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White">
                                                                                                            </asp:DropDownList>
                                                                                                        </td>
                                                                                                        <td>
                                                                                                            <asp:Button ID="Button64" runat="server" BackColor="Orange" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="39px" OnClick="Button64_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" style="margin-left: 0px" Text="UPDATE" Width="122px" />
                                                                                                        </td>
                                                                                                        <td>&nbsp;</td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style7">
                                                                                                <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" CellPadding="6" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Visible="False" Width="823px">
                                                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                    <Columns>
                                                                                                        <asp:TemplateField>
                                                                                                            <ItemTemplate>
                                                                                                                <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox12_CheckedChanged" />
                                                                                                            </ItemTemplate>
                                                                                                            <FooterStyle BackColor="White" />
                                                                                                            <HeaderStyle BackColor="Orange" />
                                                                                                            <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                                                        </asp:TemplateField>
                                                                                                        <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                                        <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                                        <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name" />
                                                                                                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                                                                        <asp:BoundField DataField="manufactureName" HeaderText="Category" SortExpression="manufactureName" />
                                                                                                        <asp:BoundField DataField="idClient" SortExpression="idClient" />
                                                                                                        <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture" />
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
                                                                    </table>
                                                                    <asp:Panel ID="PanelExpenses" runat="server">
                                                                        <asp:GridView ID="gvServed" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource8" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnRowDataBound="gvServed_RowDataBound" OnSelectedIndexChanged="gvServed_SelectedIndexChanged" Visible="False" Width="897px">
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
                                                                                        <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox2_CheckedChanged" />
                                                                                    </ItemTemplate>
                                                                                    <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                                    <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                                </asp:TemplateField>
                                                                                <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                                                                <asp:BoundField DataField="Repetition" HeaderText="TMZ " SortExpression="Repetition" />
                                                                                <asp:BoundField DataField="StaffName" HeaderText="Washman" SortExpression="StaffName" />
                                                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                                                <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash" />
                                                                                <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment" />
                                                                                <asp:BoundField DataField="dateRecorded" DataFormatString="{0:hh\:mm}" HeaderText="Time" SortExpression="dateRecorded" />
                                                                                <asp:BoundField DataField="idRecord" SortExpression="idRecord">
                                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Small" />
                                                                                </asp:BoundField>
                                                                                <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture">
                                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Small" />
                                                                                </asp:BoundField>
                                                                                <asp:BoundField DataField="Name" HeaderText="ClientName" SortExpression="Name" />
                                                                            </Columns>
                                                                        </asp:GridView>
                                                                    </asp:Panel>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:GridView ID="gvServed0" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource11" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnRowDataBound="gvServed_RowDataBound" OnSelectedIndexChanged="gvServed_SelectedIndexChanged" Width="897px" AllowPaging="True" PageSize="20" Visible="False">
                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                   <PagerStyle BackColor="#333333" Font-Size="XX-Large" ForeColor="Orange" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                    <EditRowStyle BackColor="#999999" />
                                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                    <Columns>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox ID="CheckBox13" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox2_CheckedChanged" />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                            <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                        <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                        <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                                                        <asp:BoundField DataField="Repetition" HeaderText="TMZ " SortExpression="Repetition" />
                                                                        <asp:BoundField DataField="StaffName" HeaderText="Washman" SortExpression="StaffName" />
                                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                                        <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash" />
                                                                        <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment" />
                                                                        <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}"  HeaderText="Time" SortExpression="dateRecorded" />
                                                                        <asp:BoundField DataField="idRecord" SortExpression="idRecord">
                                                                        <ItemStyle Font-Bold="False" Font-Size="XX-Small" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="IdManufacture" SortExpression="IdManufacture">
                                                                        <ItemStyle Font-Bold="False" Font-Size="XX-Small" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Name" HeaderText="ClientName" SortExpression="Name" />
                                                                    </Columns>
                                                                </asp:GridView>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Panel ID="StaffCreditPanelAll" runat="server" BackColor="#006666" CssClass="Panel1Registration" Visible="False" Width="845px">
                                                    <table class="auto-style4">
                                                        <tr>
                                                            <td style="text-align: left">
                                                                <asp:Panel ID="Panel24" runat="server" BackColor="#006666">
                                                                    <table class="auto-style26">
                                                                        <tr>
                                                                            <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                                            <td class="auto-style42">
                                                                                <asp:Button ID="Button49" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button49_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="New Credit" Width="154px" />
                                                                            </td>
                                                                            <td class="auto-style44">
                                                                                <asp:Button ID="Button50" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button50_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Payment" Width="188px" />
                                                                            </td>
                                                                            <td class="auto-style43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList32" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White">
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                            <td>
                                                                                <asp:Panel ID="Panel18" runat="server" BackColor="SandyBrown" CssClass="BUTTOM0" Width="222px">
                                                                                    <table class="auto-style4">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:TextBox ID="TextBox46" runat="server" BackColor="White" BorderStyle="None" ForeColor="Navy" Height="26px" placeholder="Staff Name ...." Width="137px"></asp:TextBox>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Button ID="Button47" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" OnClick="Button47_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Search" Width="69px" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                            <td class="auto-style50" style="text-align: left">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: left">
                                                                <asp:Panel ID="StaffCreditPanel" runat="server" BackColor="Gray" CssClass="Panel1Registration">
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td style="text-align: left" valign="top">
                                                                                <asp:Panel ID="Panel25All" runat="server">
                                                                                    <table class="auto-style45">
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <asp:Panel ID="PanelNewCredit" runat="server" BackColor="#006666" CssClass="Panel1Registration" Visible="False">
                                                                                                    <table class="auto-style26">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Label ID="AlertLabel4" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:DropDownList ID="DropDownList30" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" DataSourceID="CategoryCredit" DataTextField="NameCredit" DataValueField="idStaffCredit" ForeColor="Navy" Width="200px">
                                                                                                                </asp:DropDownList>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="TextBox41" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Amount Given" Width="176px"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="auto-style37">
                                                                                                                <asp:TextBox ID="TextBox42" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="44px" placeholder="Remark" TextMode="MultiLine" Width="176px"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Panel ID="Panel17" runat="server" BackColor="#006666">
                                                                                                                    <asp:Button ID="Button46" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button46_Click1" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="121px" />
                                                                                                                </asp:Panel>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <asp:Panel ID="PanelPayment" runat="server" BackColor="#006666" CssClass="Panel1Registration" Visible="False">
                                                                                                    <table class="auto-style26">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Label ID="AlertLabel5" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:DropDownList ID="DropDownList31" runat="server" AutoPostBack="True" BackColor="#CCCCCC" CssClass="BUTTOM" DataSourceID="CategoryCredit" DataTextField="NameCredit" DataValueField="idStaffCredit" ForeColor="Navy" Width="200px">
                                                                                                                </asp:DropDownList>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="TextBox47" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Paid Amount" Width="176px"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="auto-style37">
                                                                                                                <asp:TextBox ID="TextBox48" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="44px" placeholder="Remarks" TextMode="MultiLine" Width="176px"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Panel ID="Panel23" runat="server" BackColor="#006666">
                                                                                                                    <asp:Button ID="Button48" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button48_Click" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="121px" />
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
                                                                            <td style="text-align: left" valign="top">
                                                                                <asp:Panel ID="Panel19" runat="server" BackColor="#006666" CssClass="Panel1Registration" Visible="False">
                                                                                    <table class="auto-style26">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <table class="auto-style26">
                                                                                                    <tr>
                                                                                                        <td>
                                                                                                            <asp:GridView ID="StaffMobicarwash" runat="server" AutoGenerateColumns="False" CellPadding="8" EnableModelValidation="True" ForeColor="#333333" GridLines="None" ShowHeader="False" Width="520px">
                                                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                <EditRowStyle BackColor="#999999" />
                                                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                <Columns>
                                                                                                                    <asp:BoundField DataField="IDStaff" SortExpression="IDStaff" />
                                                                                                                    <asp:TemplateField>
                                                                                                                        <ItemTemplate>
                                                                                                                            <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox7_CheckedChanged" />
                                                                                                                        </ItemTemplate>
                                                                                                                        <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                                                                        <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                                    </asp:TemplateField>
                                                                                                                    <asp:BoundField DataField="StaffName" HeaderText="Staff Name" SortExpression="StaffName" />
                                                                                                                    <asp:BoundField DataField="phone" HeaderText="Contact No" SortExpression="phone" />
                                                                                                                    <asp:BoundField DataField="NID" HeaderText="National ID" SortExpression="NID" />
                                                                                                                </Columns>
                                                                                                            </asp:GridView>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <table class="auto-style26">
                                                                                                    <tr>
                                                                                                        <td style="text-align: right">
                                                                                                            <asp:SqlDataSource ID="CategoryCredit" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idStaffCredit], [NameCredit] FROM [StaffCreditCategory]"></asp:SqlDataSource>
                                                                                                        </td>
                                                                                                        <td style="text-align: left">&nbsp;</td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style37">
                                                                                                <asp:Panel ID="Panel21" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                                                                    <table class="auto-style26">
                                                                                                        <tr>
                                                                                                            <td class="auto-style38">
                                                                                                                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="STAFF:" Visible="False"></asp:Label>
                                                                                                            </td>
                                                                                                            <td class="auto-style41"><span style="color: #000099"><span style="font-size: small">
                                                                                                                <asp:TextBox ID="TextBox11" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange"></asp:TextBox>
                                                                                                                </span></span></td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="auto-style39">
                                                                                                                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="CREDIT:" Visible="False"></asp:Label>
                                                                                                            </td>
                                                                                                            <td class="auto-style40">
                                                                                                                <asp:FormView ID="FormView12" runat="server" DataSourceID="SqlDataSourceCurrentCredit" EnableModelValidation="True">
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
                                                                                                                        <asp:Label ID="TotalCreditLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("TotalCredit") %>' />
                                                                                                                        <br />
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
                                                                    </table>
                                                                    <asp:TextBox ID="TextBox45" runat="server" BorderStyle="None" Visible="False" Width="50px"></asp:TextBox>
                                                                </asp:Panel>
                                                            </td>
                                                            <td class="auto-style50" style="text-align: left">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: left">
                                                                <asp:GridView ID="gvInformation" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="8" DataSourceID="StaffHistoricView" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="56px" ShowFooter="True" style="margin-left: 0px" Width="842px" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged">
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
                                                                        <asp:BoundField DataField="dateClose"  DataFormatString="{0:d/MM/yyyy}"  HeaderText="Date" SortExpression="dateClose" />
                                                                        <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                                                    </Columns>
                                                                </asp:GridView>
                                                                <asp:SqlDataSource ID="StaffHistoricView" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [StaffName],(newBalance-amount+Payment) as oldCredit, [amount],[Payment], [newBalance], [dateClose],[idStaffCredit],[NameCredit],[userAdded] FROM [StaffCreditReports1]   ORDER BY [dateClose] DESC"></asp:SqlDataSource>

                                                            </td>
                                                            <td class="auto-style50" style="text-align: left">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style49">
                                                <asp:Panel ID="PanelBackGround" runat="server">
                                                    &nbsp;&nbsp;<table class="auto-style45">
                                                        <tr>
                                                            <td style="text-align: center" class="auto-style37">
                                                                &nbsp;<asp:Panel ID="Panel43" runat="server">
                                                                    <table class="auto-style45">
                                                                        <tr>
                                                                            <td align="left" class="auto-style241" valign="top">
                                                                                <img alt="" class="auto-style53" src="Image/CarWASHSD.JPG" />
                                                                            </td>
                                                                            <td align="left" valign="top">
                                                                                <asp:Panel ID="Panel44" runat="server">
                                                                                    <table class="auto-style45">
                                                                                        <tr>
                                                                                            <td>&nbsp;</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#FFCC00" Text="CAR WASH SERVICES:"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>&nbsp;</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Simple Car Wash"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="General Car Wash"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Quick Car Wash"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Quick Car Wash+Engin"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Day Parking"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Night Parking"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Waxing With Machine"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Waxing without Machine"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="Discount on Service"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="White" Text="And Free Service"></asp:Label>
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
                                                <asp:Panel ID="MobiExpenses" runat="server" BackColor="Gray" CssClass="Panel1Registration" Visible="False">
                                                    <table>
                                                        <tr>
                                                            <td style="text-align: left" valign="top">
                                                                <asp:Panel ID="Panel25All0" runat="server">
                                                                    <table>
                                                                        <tr>
                                                                            <td valign="top">
                                                                                <asp:Panel ID="PanelNewCredit0" runat="server" BackColor="#006666" CssClass="Panel1Registration" Height="223px">
                                                                                    <table class="auto-style26">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Label ID="AlertLabel6" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:TextBox ID="TextBox49" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Amount" Width="132px"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style37">
                                                                                                <asp:TextBox ID="TextBox50" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="44px" placeholder="Remark" TextMode="MultiLine" Width="132px"></asp:TextBox>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:Panel ID="Panel26" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                                                                    <asp:Button ID="Button53" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button53_Click" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="121px" />
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
                                                            <td style="text-align: left" valign="top">
                                                                <asp:Panel ID="Panel28" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                                    <table class="auto-style26">
                                                                        <tr>
                                                                            <td>
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td>
                                                                                            <asp:TextBox ID="TextBox54" runat="server" BorderStyle="None" Visible="False" Width="50px"></asp:TextBox>
                                                                                            <asp:GridView ID="StaffMobicarwash0" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource3" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="580px">
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
                                                                                                            <asp:CheckBox ID="CheckBox8" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox7_CheckedChanged" />
                                                                                                        </ItemTemplate>
                                                                                                        <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                                                        <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                    </asp:TemplateField>
                                                                                                    <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                                                                                                    <asp:BoundField DataField="DetailsExpense" HeaderText="Remarks" SortExpression="DetailsExpense" />
                                                                                                    <asp:BoundField DataField="dateOccur" DataFormatString="{0:d/MM/yyyy}" HeaderText="dateOccur" SortExpression="dateOccur" />
                                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Date" SortExpression="userAdded" />
                                                                                                    <asp:BoundField DataField="idExpenses" HeaderText="" SortExpression="idExpenses" />
                                                                                                </Columns>
                                                                                            </asp:GridView>
                                                                                            <asp:DropDownList ID="DropDownList33" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White">
                                                                                            </asp:DropDownList>
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
                                                <asp:Panel ID="ClientCredit" runat="server" BackColor="#006666" CssClass="Panel1Registration" Visible="False" Width="877px">
                                                    <table class="auto-style4">
                                                        <tr>
                                                            <td style="text-align: left" class="auto-style242">
                                                                <asp:Panel ID="Panel29" runat="server" BackColor="#006666">
                                                                    <table class="auto-style26">
                                                                        <tr>
                                                                            <td class="auto-style46" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="text-align: center"><span style="color: #000099">
                                                                                <asp:Panel ID="Panel32" runat="server" BackColor="Gray" CssClass="PanelHomeLogin" Height="54px" Width="284px">
                                                                                    <table class="style25">
                                                                                        <tr>
                                                                                            <td class="auto-style219" style="text-align: right;">
                                                                                                <asp:Label ID="AlertLabel9" runat="server" Font-Bold="True" ForeColor="White">From</asp:Label>
                                                                                            </td>
                                                                                            <td class="auto-style220" valign="top">
                                                                                                <asp:DropDownList ID="DropDownListD3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                                                </asp:DropDownList>
                                                                                                <asp:DropDownList ID="DropDownListM3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                                                </asp:DropDownList>
                                                                                                <asp:DropDownList ID="DropDownListYEAR3" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListYEAR3_SelectedIndexChanged">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td style="text-align: right; width: 44px;" valign="top">
                                                                                                <asp:Label ID="AlertLabel10" runat="server" Font-Bold="True" ForeColor="White">To</asp:Label>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <asp:DropDownList ID="DropDownListD4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                                                </asp:DropDownList>
                                                                                                <asp:DropDownList ID="DropDownListM4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                                                </asp:DropDownList>
                                                                                                <asp:DropDownList ID="DropDownListYEAR4" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListYEAR4_SelectedIndexChanged">
                                                                                                </asp:DropDownList>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                                </span></b>&nbsp;<asp:DropDownList ID="DropDownList34" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White">
                                                                                </asp:DropDownList>
                                                                                <asp:Label ID="Label2to" runat="server" Text="Label2to" Visible="False"></asp:Label>
                                                                                <asp:Label ID="Label1from" runat="server" Text="Label1from" Visible="False"></asp:Label>
                                                                            </td>
                                                                            <td class="auto-style42">
                                                                                <asp:Panel ID="Panel30" runat="server" BackColor="SandyBrown" CssClass="BUTTOM0">
                                                                                    <table class="auto-style4">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:TextBox ID="TextBox55" runat="server" BackColor="White" BorderStyle="None" ForeColor="Navy" Height="26px" placeholder="Client Name ...." Width="115px"></asp:TextBox>
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Button ID="Button59" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" OnClick="Button59_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Search" Width="69px" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </asp:Panel>
                                                                            </td>
                                                                            <td class="auto-style44">
                                                                                <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" ShowHeader="False">
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="check">
                                                                                            <HeaderTemplate>
                                                                                                <asp:Button ID="Button43" runat="server" BackColor="#99FF99" BorderStyle="None" Font-Bold="True" ForeColor="Red" Height="31px" Text="Check" Width="69px" />
                                                                                            </HeaderTemplate>
                                                                                            <ItemTemplate>
                                                                                                <asp:CheckBox ID="CheckBox9" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox9_CheckedChanged" />
                                                                                            </ItemTemplate>
                                                                                            <FooterStyle BackColor="White" />
                                                                                            <HeaderStyle BackColor="#99FF99" />
                                                                                            <ItemStyle BackColor="#F0F0F0" HorizontalAlign="Center" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="Name" HeaderText="Famer Names" SortExpression="Name">
                                                                                        <ControlStyle BackColor="White" />
                                                                                        <FooterStyle BackColor="White" />
                                                                                        <HeaderStyle BackColor="#99FF99" ForeColor="Navy" />
                                                                                        <ItemStyle BackColor="#F0F0F0" HorizontalAlign="Left" />
                                                                                        </asp:BoundField>
                                                                                    </Columns>
                                                                                </asp:GridView>
                                                                            </td>
                                                                            <td class="auto-style43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                <asp:DropDownList ID="DropDownList28" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="ClientLists" DataTextField="Name" DataValueField="Name" ForeColor="White" OnSelectedIndexChanged="DropDownList28_SelectedIndexChanged">
                                                                                </asp:DropDownList>
                                                                                &nbsp;</td>
                                                                            <td>
                                                                                &nbsp;</td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: left" class="auto-style242">
                                                                <asp:Panel ID="StaffCreditPanel0" runat="server" BackColor="Gray" CssClass="Panel1Registration">
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td style="text-align: left" valign="top">
                                                                                <asp:Panel ID="Panel25All1" runat="server">
                                                                                    <table class="auto-style45">
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <asp:Panel ID="PanelNewCredit1" runat="server" BackColor="#006666" CssClass="Panel1Registration" Width="204px">
                                                                                                    <table class="auto-style26">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Label ID="AlertLabel8" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:DropDownList ID="DropDownList29" runat="server" AutoPostBack="True" CssClass="BUTTOM" DataSourceID="PaymentClientTOTAL" DataTextField="Price" DataValueField="Price" ForeColor="Navy" OnSelectedIndexChanged="DropDownList29_SelectedIndexChanged" Width="197px" Visible="False">
                                                                                                                </asp:DropDownList>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td class="auto-style37">
                                                                                                                <asp:TextBox ID="TextBox62" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Paid" Width="176px" Visible="False"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Panel ID="Panel31" runat="server" BackColor="#006666" CssClass="Panel1Registration">
                                                                                                                    <asp:Button ID="Button60" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button60_Click1" OnClientClick="return confirm ('Are you sure you want to SUBMIT ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SUBMIT" Width="121px" Visible="False" />
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
                                                                            <td style="text-align: left" valign="top">
                                                                                <asp:Panel ID="Panel34" runat="server" BackColor="#006666" CssClass="Panel1Registration" Width="528px">
                                                                                    <table class="auto-style26">
                                                                                        <tr>
                                                                                            <td class="auto-style223">
                                                                                                <asp:TextBox ID="TextBox61" runat="server" BorderStyle="None" Visible="False" Width="50px"></asp:TextBox>
                                                                                                <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="CLIENT:" Visible="False"></asp:Label>
                                                                                            </td>
                                                                                            <td class="auto-style224"><span style="color: #000099"><span style="font-size: small">
                                                                                                <asp:TextBox ID="TextBox63" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange"></asp:TextBox>
                                                                                                </span></span></td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style221">
                                                                                                <asp:TextBox ID="TextBox64" runat="server" BorderStyle="None" Height="18px" Visible="False" Width="50px">1</asp:TextBox>
                                                                                                <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="CREDIT:" Visible="False"></asp:Label>
                                                                                            </td>
                                                                                            <td class="auto-style41">
                                                                                                <asp:FormView ID="FormView13" runat="server" DataSourceID="PaymentClientTOTAL" EnableModelValidation="True" Visible="False">
                                                                                                    <EditItemTemplate>
                                                                                                        Price:
                                                                                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                        <br />
                                                                                                        Payment:
                                                                                                        <asp:TextBox ID="PaymentTextBox" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                        <br />
                                                                                                        Name:
                                                                                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                        <br />
                                                                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                    </EditItemTemplate>
                                                                                                    <InsertItemTemplate>
                                                                                                        Price:
                                                                                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                        <br />
                                                                                                        Payment:
                                                                                                        <asp:TextBox ID="PaymentTextBox" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                        <br />
                                                                                                        Name:
                                                                                                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                                                                                        <br />
                                                                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                    </InsertItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        &nbsp;<asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                                                                    </ItemTemplate>
                                                                                                </asp:FormView>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style221">
                                                                                                <asp:Button ID="Button61" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button61_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="View Payment Historic" Visible="False" Width="193px" />
                                                                                            </td>
                                                                                            <td class="auto-style41">&nbsp;</td>
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
                                                            <td style="text-align: left" class="auto-style242">
                                                                <asp:Panel ID="Panel33" runat="server" BackColor="Gray" CssClass="Panel1Registration">
                                                                    <table class="auto-style26">
                                                                        <tr>
                                                                            <td>
                                                                                <table class="auto-style26">
                                                                                    <tr>
                                                                                        <td valign="top" class="auto-style37">
                                                                                            <asp:GridView ID="GridClientPayment" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="PaymentClient" EnableModelValidation="True" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="780px" Visible="False" DataKeyNames="idRecord" OnSelectedIndexChanged="GridClientPayment_SelectedIndexChanged">
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
                                                                                                    <asp:TemplateField>
                                                                                                        <HeaderTemplate>
                                                                                                            <input id="checkbox11" runat="server" onclick="javascript: SelectAllCheckboxes(this);" style="background-color: #FF0000" type="checkbox" />
                                                                                                        </HeaderTemplate>
                                                                                                        <ItemTemplate>
                                                                                                            <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox3_CheckedChanged" />
                                                                                                        </ItemTemplate>
                                                                                                        <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                                                        <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                                                    </asp:TemplateField>
                                                                                                    <asp:BoundField DataField="Name" HeaderText="Client Name" SortExpression="Name" />
                                                                                                    <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                                    <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                                    <asp:BoundField DataField="NameService" HeaderText="Service" ReadOnly="True" SortExpression="NameService" />
                                                                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                                                                    <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment">
                                                                                                    <ItemStyle ForeColor="#66FFCC" />
                                                                                                    </asp:BoundField>
                                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded" />
                                                                                                    <asp:BoundField DataField="idRecord" SortExpression="idRecord" />
                                                                                                </Columns>
                                                                                            </asp:GridView>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td valign="top">
                                                                                            <table class="auto-style45">
                                                                                                <tr>
                                                                                                    <td>
                                                                                                        <asp:TextBox ID="TextBox66" runat="server" Visible="False"></asp:TextBox>
                                                                                                        <asp:Label ID="AlertLabel11" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                                    </td>
                                                                                                    <td>
                                                                                                        <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="REMAIN:" Visible="False"></asp:Label>
                                                                                                    </td>
                                                                                                    <td class="auto-style225" style="text-align: left">
                                                                                                        <span style="color: #000099"><span style="font-size: small">
                                                                                                        <asp:TextBox ID="TextBox67" runat="server" BackColor="Gray" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Visible="False"></asp:TextBox>
                                                                                                        </span></span>
                                                                                                    </td>
                                                                                                    <td class="auto-style225" style="text-align: right">
                                                                                                        <asp:TextBox ID="TextBox65" runat="server" BorderColor="#003366" BorderStyle="Groove" CssClass="BUTTOM" Height="16px" placeholder="Amount Repay...." Visible="False" Width="120px"></asp:TextBox>
                                                                                                    </td>
                                                                                                    <td style="text-align: left">
                                                                                                        <asp:Button ID="Button62" runat="server" BackColor="Orange" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="39px"  onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" style="margin-left: 0px" Text="SAVE" Width="122px" OnClick="Button62_Click" Visible="False" />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td valign="top">
                                                                                            <asp:GridView ID="GridClientPayment0" runat="server" AutoGenerateColumns="False" CellPadding="8" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridClientPayment0_SelectedIndexChanged" ShowFooter="True" Width="780px">
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
                                                                                                    <asp:TemplateField>
                                                                                                        <ItemTemplate>
                                                                                                            <asp:CheckBox ID="CheckBox10" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox10_CheckedChanged"/>
                                                                                                        </ItemTemplate>
                                                                                                        <HeaderStyle BackColor="Orange" ForeColor="Navy" />
                                                                                                        <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                                                    </asp:TemplateField>
                                                                                                    <asp:BoundField DataField="Name" HeaderText="Client Name" SortExpression="Name" />
                                                                                                    <asp:BoundField DataField="oldCredit" HeaderText="old Credit" SortExpression="oldCredit" />
                                                                                                    <asp:BoundField DataField="paid" HeaderText="Paid Amount" SortExpression="paid" />
                                                                                                    <asp:BoundField DataField="Reman" HeaderText="Remain" SortExpression="Reman" />
                                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded" />
                                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded" />
                                                                                                    <asp:BoundField DataField="idRecord" SortExpression="idRecord" />
                                                                                                </Columns>
                                                                                            </asp:GridView>
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
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded, idRecord, StaffName FROM WebDetailsDataView WHERE (OperationDay = @OperationDay) ORDER BY dateRecorded DESC" UpdateCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView ORDER BY idRecord DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDStaff" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IDStaff], [StaffName] FROM [StaffOperator]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, NameService, Price, PayedCash, StaffName, Repetition, Payment, dateRecorded, idRecord,IdManufacture, idClient,Name FROM WebDetailsDataView WHERE (OperationDay = @OperationDay) ORDER BY idRecord DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT TOP 5 [amount], [DetailsExpense], [dateOccur], [userAdded], [idExpenses] FROM [MGridViewMoneyExpensesDataGrid] ORDER BY [idExpenses] DESC"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="ValueAmount" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="SqlDataSource5_Selecting" SelectCommand="SELECT SUM(Price) AS No FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay) " UpdateCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView ORDER BY dateRecorded DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="PaymentClient" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber,Name, brand, NameService, (Price - PayedCash) AS Price, dateRecorded, Payment,idRecord FROM WebDetailsDataView WHERE (Name = @Name)  AND (Payment = 'Credit') AND (dateAdded &gt;= @dateAdded) AND (dateAdded &lt;= @dateAdded2) ORDER BY idRecord DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList28" Name="Name" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="Label1from" DbType="Date" Name="dateAdded" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="Label2to" DbType="Date" Name="dateAdded2" PropertyName="Text" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT COUNT(PlateNumber) AS No  FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay) " UpdateCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView ORDER BY dateRecorded DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="PaymentClientTOTAL" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(Price - PayedCash) AS Price,  Payment , Name FROM WebDetailsDataView WHERE (Name = @Name)  AND (Payment = 'Credit') AND (dateAdded &gt;= @dateAdded) AND (dateAdded &lt;= @dateAdded2) GROUP BY Payment,Name">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList28" Name="Name" PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="Label1from" DbType="Date" Name="dateAdded" PropertyName="Text" />
                                            <asp:ControlParameter ControlID="Label2to" DbType="Date" Name="dateAdded2" PropertyName="Text" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="ClientLists" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idClient], [Name] FROM [CompanyVehicles]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="SqlDataSource5_Selecting" SelectCommand="SELECT SUM(PayedCash) AS No FROM WebDetailsDataView WHERE ([OperationDay] = @OperationDay)  " UpdateCommand="SELECT PlateNumber, brand, NameService, [Repetition ], Price, PayedCash, Payment, dateRecorded, userAdded FROM WebDetailsDataView ORDER BY dateRecorded DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="StaffOperator" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IDStaff], [StaffName] FROM [StaffOperator] WHERE ([StaffName] = @StaffName)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="StaffName" Name="StaffName" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="CshSelect" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCash], [Amount] FROM [CashSelect]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="CashRepay" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCash], [Amount] FROM [CashRepaySelect]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="TODAY" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(TotalSave) AS No FROM CashRefund WHERE ([OperationDay] = @OperationDay)  ">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList40" Name="OperationDay" PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="ALLDAYS" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(TotalSave) AS No FROM CashRefund "></asp:SqlDataSource>
                                    <asp:Label ID="Label16" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:Label ID="Label17" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:TextBox ID="TextBox36" runat="server" Visible="False"></asp:TextBox>
                                    <asp:TextBox ID="TextBox29" runat="server" Visible="False"></asp:TextBox>
                                    <asp:TextBox ID="TextBox30" runat="server" Visible="False"></asp:TextBox>
                                    <asp:Label ID="Label15" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSourceCurrentCredit" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [TotalCredit] FROM [MGridViewCreditControlStaff2] WHERE ([IDStaff] = @IDStaff)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox45" Name="IDStaff" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, NameService, Price, PayedCash, StaffName, Repetition, Payment, dateRecorded, idRecord,IdManufacture, idClient,Name FROM WebDetailsDataView WHERE (OperationDay != @OperationDay) AND  Payment='Cash' AND PayedCash='0' ORDER BY idRecord DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Panel ID="Panel38" runat="server">
                        <table class="auto-style45">
                            <tr>
                                <td align="left">
                                    <asp:Button ID="Button67" runat="server" BackColor="#006666" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="36px" OnClick="Button67_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Width="121px" />
                                    <asp:DropDownList ID="DropDownList40" runat="server" AutoPostBack="True" BackColor="#006666" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White" Height="1px" Width="1px">
                                    </asp:DropDownList>
                                </td>
                                <td align="left">
                                    <asp:DropDownList ID="DropDownList38" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="CshSelect" DataTextField="Amount" DataValueField="Amount" ForeColor="White" Visible="False">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList39" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOM" DataSourceID="CashRepay" DataTextField="Amount" DataValueField="Amount" ForeColor="White" Visible="False" OnSelectedIndexChanged="DropDownList39_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:Button ID="Button68" runat="server" BackColor="#006666" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="36px" OnClick="Button68_Click" OnClientClick="return confirm ('Are you sure you want to SAVE ?');" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="SAVE" Visible="False" Width="121px" />
                                    <asp:DropDownList ID="DropDownList36" runat="server" AutoPostBack="True" BackColor="#006666" DataSourceID="StaffOperator" DataTextField="StaffName" DataValueField="IDStaff" ForeColor="#006666" Height="1px" Width="1px">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList19" runat="server" AutoPostBack="True" BackColor="#006666" Height="1px" Width="1px">
                                    </asp:DropDownList>
                                    <asp:Label ID="AlertLabel13" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                </td>
                                <td>
                                    <asp:FormView ID="FormView18" runat="server" DataSourceID="TODAY" EnableModelValidation="True" Visible="False">
                                        <EditItemTemplate>
                                            No:
                                            <asp:TextBox ID="NoTextBox3" runat="server" Text='<%# Bind("No") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton4" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            No:
                                            <asp:TextBox ID="NoTextBox4" runat="server" Text='<%# Bind("No") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton4" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Panel ID="Panel45" runat="server">
                                                <table class="auto-style26">
                                                    <tr>
                                                        <td style="text-align: right">
                                                            <asp:Label ID="Label55" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="Today:"></asp:Label>
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
                                <td>
                                    <asp:FormView ID="FormView19" runat="server" DataSourceID="ALLDAYS" EnableModelValidation="True" Visible="False">
                                        <EditItemTemplate>
                                            No:
                                            <asp:TextBox ID="NoTextBox5" runat="server" Text='<%# Bind("No") %>' />
                                            <br />
                                            <asp:LinkButton ID="UpdateButton5" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            No:
                                            <asp:TextBox ID="NoTextBox6" runat="server" Text='<%# Bind("No") %>' />
                                            <br />
                                            <asp:LinkButton ID="InsertButton5" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            &nbsp;<asp:LinkButton ID="InsertCancelButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Panel ID="Panel46" runat="server">
                                                <table class="auto-style26">
                                                    <tr>
                                                        <td style="text-align: right">
                                                            <asp:Label ID="Label56" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="All:"></asp:Label>
                                                        </td>
                                                        <td style="text-align: left">
                                                            <asp:Label ID="NoLabel2" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("No") %>' />
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
        </ContentTemplate></asp:UpdatePanel>
</asp:Content>



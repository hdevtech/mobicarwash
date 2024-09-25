<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoManager.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerWe.aspx.cs" Inherits="MobiWebApplication.WebForm20" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerWea.aspx.cs" Inherits="MobiWebApplication.WebForm59" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerWee.aspx.cs" Inherits="MobiWebApplication.WebForm58" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoManager.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerWe.aspx.cs" Inherits="MobiWebApplication.WebForm20" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="BarRestoOperator.aspx.cs" Inherits="MobiWebApplication.WebForm37" %>--%>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="WebForm20.aspx.cs" Inherits="MobiWebApplication.WebForm20" %>--%>
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
        .auto-style26
        {
            width: 82%;
        }
        .auto-style34 {
            height: 40px;
        }
        .auto-style37 {
            width: 177px;
        }
        .auto-style38 {
            width: 354px;
        }
        .auto-style40 {
            height: 20px;
        }
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style396 {
            width: 36px;
        }
        .auto-style389 {
            height: 21px;
        }
        .auto-style391 {
            width: 321px;
        }
        .auto-style393 {
            width: 237px;
        }
        .auto-style395 {
            width: 268px;
        }
        .auto-style402 {
            width: 285px;
        }
        .auto-style403 {
        width: 191px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     &nbsp;&nbsp;&nbsp;
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
          <script>
              function doPrintInoice() {
                  var prtContent = document.getElementById('<%= Drinks1.ClientID %>');
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
                    <asp:Panel ID="PanelAll" runat="server" BackColor="Gray">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <asp:Panel ID="PanelList" runat="server" BackColor="Gray">
                                        <table class="auto-style4">
                                            <tr>
                                                <td align="center">
                                                    <asp:SqlDataSource ID="idProduct0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Gray" DataSourceID="COMMAND_ID0" DataTextField="idCommand" DataValueField="idCommand" ForeColor="Gray" AutoPostBack="True" Height="1px" Width="1px">
                                                    </asp:DropDownList>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:TextBox ID="TextBox4" runat="server" Visible="False" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                                                    <asp:Panel ID="PanelCommand" runat="server" BackColor="#006666" BorderColor="#CCCCCC" BorderStyle="None" Width="100%">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td class="auto-style34">
                                                                    <asp:Panel ID="Panel89" runat="server" BackColor="DarkSlateGray" Width="100%">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td align="center" colspan="2">
                                                                                    <asp:Panel ID="Panel107" runat="server" BackColor="Gray" CssClass="Panel1Registration">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button84" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="35px" OnClick="Button84_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Main Store &gt;&gt;" Width="97%" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button94" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="35px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Mobile &gt;&gt;" Width="97%" OnClick="Button94_Click" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button93" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="35px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Main Store &gt;&gt;" Width="97%" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button85" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="35px" OnClick="Button79_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Add Expenses" Width="100%" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button87" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="35px" OnClick="Button87_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Refresh" Width="100%" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button90" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="35px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Logout" Width="100%" OnClick="Button90_Click" />
                                                                                                </td>
                                                                                                <td>&nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center"  valign="top">
                                                                                    <asp:Panel ID="Panel109" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="right">
                                                                                                                <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">
                                                                                                                </asp:DropDownList>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="TextBox10" runat="server" BackColor="#006666" BorderColor="#00CC00" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="TABLE NO" Width="150px"></asp:TextBox>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:Button ID="Button83" runat="server" BackColor="#244242" BorderStyle="Solid" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#99CC00" Height="31px" OnClick="Button83_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="New Order" Width="150px" BorderColor="#00CC00" BorderWidth="1px" />
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Label ID="AlertLabel25" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Silver">Pending Requests from Seller</asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:GridView ID="gvInformation4" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation4_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation4_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
                                                                                                        <Columns>                                                                                                          
                                                                                                             <asp:BoundField DataField="idCommand" HeaderText="RefNo" SortExpression="idCommand">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center"/>
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">
                                                                                                            <ItemStyle Font-Bold="False" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                                                            <ItemStyle Font-Bold="False" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="TableeNo" HeaderText="TableNo" SortExpression="TableeNo">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Balance" HeaderText="Remain" SortExpression="Balance">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:Button ID="Button40" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button40_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="100px" />
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle BackColor="#244242" ForeColor="Navy" />
                                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Right" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Label ID="AlertLabel65" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Silver">Confirmed Requests</asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:GridView ID="gvInformation11" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation11_RowDataBound" style="margin-left: 0px" Width="100%">
                                                                                                        <Columns>
                                                                                                            <asp:BoundField DataField="idCommand" HeaderText="RefNo" SortExpression="idCommand">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">
                                                                                                            <ItemStyle Font-Bold="False" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                                                            <ItemStyle Font-Bold="False" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="TableeNo" HeaderText="TableNo" SortExpression="TableeNo">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Balance" HeaderText="Remain" SortExpression="Balance">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:Button ID="Button37" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button37_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="100px" />
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle BackColor="#244242" ForeColor="Navy" />
                                                                                                                <ItemStyle BackColor="#244242" CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:Label ID="AlertLabel72" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Silver">Deleted Items</asp:Label>
                                                                                                    <asp:SqlDataSource ID="ServedDrink1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idCommand, idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, idProduct, PriceSales, OperationDay, userAdded, requestStatus FROM  BarRequestViewStockDelete WHERE (OperationDay = @OperationDay)  GROUP BY idCommand, requestStatus, productName, idProduct, PriceSales, idRecord, OperationDay, userAdded">
                                                                                                        <SelectParameters>
                                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                        </SelectParameters>
                                                                                                    </asp:SqlDataSource>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:GridView ID="gvInformation15" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ServedDrink1" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" style="margin-left: 0px" Width="100%">
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                                                <ItemTemplate>
                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="PriceSales" HeaderText="Price" SortExpression="PriceSales">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="quantity" HeaderText="Qty" SortExpression="quantity">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                            <FooterStyle ForeColor="Orange" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                                                            <FooterStyle ForeColor="Orange" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                                <td align="center" valign="top">
                                                                                    <asp:Panel ID="Panel16" runat="server" BackColor="Gray" BorderStyle="None" BorderWidth="2px" Width="100%">
                                                                                        <table class="auto-style213">
                                                                                            <tr>
                                                                                                <td align="center">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="center">
                                                                                                                <asp:Label ID="AlertLabel64" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White">DAILY SUMMARY REPORT</asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <table class="auto-style4">
                                                                                                                    <tr>
                                                                                                                        <td valign="top">
                                                                                                                            <asp:Panel ID="Panel113" runat="server" BackColor="White" Height="100%" Visible="False" Width="100%">
                                                                                                                                <br />
                                                                                                                                <asp:Button ID="Button69" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="43px" OnClientClick="doPrintInoice()" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="PRINT" Width="119px" />
                                                                                                                                <asp:Panel ID="Drinks1" runat="server" BackColor="White" Height="100%" Visible="False" Width="100%">
                                                                                                                                    <table class="auto-style4">
                                                                                                                                        <tr>
                                                                                                                                            <td style="border-style: none; border-width: thin; border-color: #000000">
                                                                                                                                                <asp:Label ID="AlertLabel20" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black">INVOICE</asp:Label>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td style="border-style: none; border-width: thin; border-color: #000000">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td class="auto-style403">
                                                                                                                                                            <asp:Label ID="AlertLabel73" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black">Ref No:</asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:GridView ID="gvInformation10" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" CellPadding="6" DataSourceID="ServedDrink0" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Small" ForeColor="Black" OnRowDataBound="gvInformation5_RowDataBound" style="margin-left: 0px" Width="100%">
                                                                                                                                                    <Columns>
                                                                                                                                                        <asp:TemplateField HeaderText="S/N">
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <%# Container.DataItemIndex + 1 %>
                                                                                                                                                            </ItemTemplate>
                                                                                                                                                            <ItemStyle HorizontalAlign="Center" />
                                                                                                                                                        </asp:TemplateField>
                                                                                                                                                        <asp:BoundField DataField="productName" HeaderText="ITEM" SortExpression="productName">
                                                                                                                                                        <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                        <ItemStyle HorizontalAlign="Left" />
                                                                                                                                                        </asp:BoundField>
                                                                                                                                                        <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                                                                                                        </asp:BoundField>
                                                                                                                                                        <asp:BoundField DataField="quantity" FooterText="TOTAL:" HeaderText="QTY" SortExpression="quantity">
                                                                                                                                                        <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                                                                                                        </asp:BoundField>
                                                                                                                                                        <asp:BoundField DataField="Total" HeaderText="TOTAL" SortExpression="Total">
                                                                                                                                                        <FooterStyle ForeColor="Orange" />
                                                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                                                                                                        </asp:BoundField>
                                                                                                                                                    </Columns>
                                                                                                                                                    <FooterStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                                                                                    <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                                                    <SelectedRowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                                                                                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                                                                                    <RowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                                                                                    <AlternatingRowStyle BackColor="White" ForeColor="Black" />
                                                                                                                                                </asp:GridView>
                                                                                                                                                <asp:Panel ID="Panel92" runat="server" BackColor="White" Width="100%">
                                                                                                                                                    <table class="auto-style4">
                                                                                                                                                        <tr>
                                                                                                                                                            <td align="left" style="border-style: solid none solid none; border-width: thin; border-color: #000000">
                                                                                                                                                                <asp:Label ID="AlertLabel21" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black">TOTAL:</asp:Label>
                                                                                                                                                            </td>
                                                                                                                                                            <td align="right" style="border-style: solid none solid none; border-top-width: thin; border-color: #000000; border-bottom-width: thin;">
                                                                                                                                                                <asp:FormView ID="FormView11" runat="server" DataSourceID="ServedDrinkTotal" EnableModelValidation="True">
                                                                                                                                                                    <EditItemTemplate>
                                                                                                                                                                        No:
                                                                                                                                                                        <asp:TextBox ID="NoTextBox1" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                        <br />
                                                                                                                                                                        <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                    </EditItemTemplate>
                                                                                                                                                                    <InsertItemTemplate>
                                                                                                                                                                        No:
                                                                                                                                                                        <asp:TextBox ID="NoTextBox2" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                        <br />
                                                                                                                                                                        <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                    </InsertItemTemplate>
                                                                                                                                                                    <ItemTemplate>
                                                                                                                                                                        <asp:Panel ID="Panel93" runat="server">
                                                                                                                                                                            <table class="auto-style26">
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="text-align: right">&nbsp;</td>
                                                                                                                                                                                    <td style="text-align: left">
                                                                                                                                                                                        <asp:Label ID="NoLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black" Text='<%# Bind("Total","{0:0,000}") %>' />
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
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:SqlDataSource ID="Command0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommand WHERE (Total &gt; 0) ORDER BY idCommand DESC"></asp:SqlDataSource>
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td align="center">&nbsp;</td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                                <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                                                                                                                                                <asp:SqlDataSource ID="ServedDrink0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,requestStatus, PriceSales, OperationDay, userAdded FROM BarRequestViewStock WHERE (idCommand = @idCommand) and (requestStatus='confirmed') GROUP BY idCommand,requestStatus, productName, PriceSales, OperationDay, userAdded">
                                                                                                                                                    <SelectParameters>
                                                                                                                                                        <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                                                                    </SelectParameters>
                                                                                                                                                </asp:SqlDataSource>
                                                                                                                                                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                                                                                                                                                <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                                                                                                                                                <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                                                                                                                                                <asp:SqlDataSource ID="ServedDrinkTotal0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM [BarServedDrinkView] WHERE ([idCommand] = @idCommand)">
                                                                                                                                                    <SelectParameters>
                                                                                                                                                        <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                                                                    </SelectParameters>
                                                                                                                                                </asp:SqlDataSource>
                                                                                                                                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="Orange" Text="Label" Visible="False"></asp:Label>
                                                                                                                                                <asp:SqlDataSource ID="TableNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo FROM BarCommandB WHERE idCommand=@idCommand ">
                                                                                                                                                    <SelectParameters>
                                                                                                                                                        <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" />
                                                                                                                                                    </SelectParameters>
                                                                                                                                                </asp:SqlDataSource>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </asp:Panel>
                                                                                                                            </asp:Panel>
                                                                                                                        </td>
                                                                                                                        <td valign="top">
                                                                                                                            <asp:FormView ID="FormView35" runat="server" BackColor="DarkSlateGray" DataSourceID="DailySummaryBarResto" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" style="text-align: left; margin-right: 0px" Width="100%">
                                                                                                                                <EditItemTemplate>
                                                                                                                                    Served Vehicle:
                                                                                                                                    <asp:TextBox ID="servedVehTextBox3" runat="server" Text='<%# Bind("servedVeh") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Services Value:
                                                                                                                                    <asp:TextBox ID="Service_AmountTextBox3" runat="server" Text='<%# Bind("Service_Amount") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Served Vehicle by Credit:
                                                                                                                                    <asp:TextBox ID="Credit_AmountTextBox3" runat="server" Text='<%# Bind("Credit_Amount") %>' />
                                                                                                                                    <br />
                                                                                                                                    Served Vehicle by Momo:
                                                                                                                                    <asp:TextBox ID="momoTextBox5" runat="server" Text='<%# Bind("momo") %>' />
                                                                                                                                    <br />
                                                                                                                                    Paid Amount for Served Vehicle:
                                                                                                                                    <asp:TextBox ID="Payed_AmountTextBox3" runat="server" Text='<%# Bind("Payed_Amount") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Staff Credit:
                                                                                                                                    <asp:TextBox ID="Staff_CreditTextBox3" runat="server" Text='<%# Bind("Staff_Credit") %>' />
                                                                                                                                    <br />
                                                                                                                                    Amount Paid by Client on Credit:
                                                                                                                                    <asp:Label ID="ClientPaymentTextBox3" runat="server" Text='<%# Bind("ClientPayment") %>' />
                                                                                                                                    <br />
                                                                                                                                    Amount Paid by Staff on Credit:
                                                                                                                                    <asp:TextBox ID="AmountPayeddTextBox3" runat="server" Text='<%# Bind("AmountPayedd") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Expenses:
                                                                                                                                    <asp:TextBox ID="Daily_ExpensesTextBox3" runat="server" Text='<%# Bind("Daily_Expenses") %>' />
                                                                                                                                    <br />
                                                                                                                                    Balance:
                                                                                                                                    <asp:TextBox ID="BalannceTextBox3" runat="server" Text='<%# Bind("Balannce") %>' />
                                                                                                                                    <br />
                                                                                                                                    <asp:LinkButton ID="UpdateButton30" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton30" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                </EditItemTemplate>
                                                                                                                                <InsertItemTemplate>
                                                                                                                                    Served Vehicle:
                                                                                                                                    <asp:TextBox ID="servedVehTextBox4" runat="server" Text='<%# Bind("servedVeh") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Services Value:
                                                                                                                                    <asp:TextBox ID="Service_AmountTextBox4" runat="server" Text='<%# Bind("Service_Amount") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Served Vehicle by Credit:
                                                                                                                                    <asp:TextBox ID="Credit_AmountTextBox4" runat="server" Text='<%# Bind("Credit_Amount") %>' />
                                                                                                                                    <br />
                                                                                                                                    Served Vehicle by Momo:
                                                                                                                                    <asp:TextBox ID="momoTextBox6" runat="server" Text='<%# Bind("momo") %>' />
                                                                                                                                    <br />
                                                                                                                                    Paid Amount for Served Vehicle:
                                                                                                                                    <asp:TextBox ID="Payed_AmountTextBox4" runat="server" Text='<%# Bind("Payed_Amount") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Staff Credit:
                                                                                                                                    <asp:TextBox ID="Staff_CreditTextBox4" runat="server" Text='<%# Bind("Staff_Credit") %>' />
                                                                                                                                    <br />
                                                                                                                                    Amount Paid by Client on Credit:
                                                                                                                                    <asp:Label ID="ClientPaymentTextBox4" runat="server" Text='<%# Bind("ClientPayment") %>' />
                                                                                                                                    <br />
                                                                                                                                    Amount Paid by Staff on Credit:
                                                                                                                                    <asp:TextBox ID="AmountPayeddTextBox4" runat="server" Text='<%# Bind("AmountPayedd") %>' />
                                                                                                                                    <br />
                                                                                                                                    Daily Expenses:
                                                                                                                                    <asp:TextBox ID="Daily_ExpensesTextBox4" runat="server" Text='<%# Bind("Daily_Expenses") %>' />
                                                                                                                                    <br />
                                                                                                                                    Balance:
                                                                                                                                    <asp:TextBox ID="BalannceTextBox4" runat="server" Text='<%# Bind("Balannce") %>' />
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
                                                                                                                                                            <td align="center" class="auto-style389" colspan="6">
                                                                                                                                                                <asp:Panel ID="Panel105" runat="server">
                                                                                                                                                                    <table class="auto-style339">
                                                                                                                                                                        <tr>
                                                                                                                                                                            <td align="right" class="auto-style402">
                                                                                                                                                                                <asp:Label ID="AlertLabel48" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">1.Sales Amount:</asp:Label>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td align="left" class="auto-style391">
                                                                                                                                                                                <asp:Label ID="AlertLabel49" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("DSalesAmount") %>'></asp:Label>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td>&nbsp;</td>
                                                                                                                                                                            <td align="right" class="auto-style393">
                                                                                                                                                                                <asp:Label ID="AlertLabel50" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">2.Paid Cash:</asp:Label>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td align="left">
                                                                                                                                                                                <asp:Label ID="AlertLabel51" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("DPaidAmount") %>' />
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                                                                                                        <tr>
                                                                                                                                                                            <td align="right" class="auto-style402">
                                                                                                                                                                                <asp:Label ID="AlertLabel56" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">3.Unpaid Cash:</asp:Label>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td align="left" class="auto-style391">
                                                                                                                                                                                <asp:Label ID="AlertLabel57" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("DUnpaid") %>' />
                                                                                                                                                                            </td>
                                                                                                                                                                            <td>&nbsp;</td>
                                                                                                                                                                            <td align="right" class="auto-style393">
                                                                                                                                                                                <asp:Label ID="AlertLabel58" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">4-Expenses:</asp:Label>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td align="left">
                                                                                                                                                                                <asp:Label ID="AlertLabel59" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("DExpenses") %>' />
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                                                                                                        <tr>
                                                                                                                                                                            <td align="right" class="auto-style402">&nbsp;</td>
                                                                                                                                                                            <td align="left" class="auto-style391">&nbsp;</td>
                                                                                                                                                                            <td>&nbsp;</td>
                                                                                                                                                                            <td align="right" class="auto-style393">&nbsp;</td>
                                                                                                                                                                            <td align="left">&nbsp;</td>
                                                                                                                                                                        </tr>
                                                                                                                                                                    </table>
                                                                                                                                                                </asp:Panel>
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                        <tr>
                                                                                                                                                            <td class="auto-style396" style="border-style: dashed none none none; border-width: medium; border-color: silver">&nbsp;</td>
                                                                                                                                                            <td align="right" style="border-style: dashed none none none; border-width: medium; border-color: silver">
                                                                                                                                                                <asp:Label ID="AlertLabel60" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">Balance:</asp:Label>
                                                                                                                                                            </td>
                                                                                                                                                            <td align="left" class="auto-style395" style="border-style: dashed none none none; border-width: medium; border-color: silver">
                                                                                                                                                                <asp:Label ID="AlertLabel61" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("DBalance") %>' />
                                                                                                                                                            </td>
                                                                                                                                                            <td align="left" style="border-style: dashed none none none; border-width: medium; border-color: silver">&nbsp;</td>
                                                                                                                                                            <td style="border-style: dashed none none none; border-width: medium; border-color: silver">&nbsp;</td>
                                                                                                                                                            <td align="left" style="border-style: dashed none none none; border-width: medium; border-color: silver">&nbsp;</td>
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
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td valign="top">
                                                                                                                <table class="auto-style4;border-color: #000000">
                                                                                                                    <tr>
                                                                                                                        <td valign="top">
                                                                                                                            <asp:Panel ID="Drinks" runat="server" BackColor="Gray" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" Visible="False">
                                                                                                                                <table class="auto-style4">
                                                                                                                                    <tr>
                                                                                                                                        <td style="border-style: none; border-width: medium; border-color: #CCCCCC">
                                                                                                                                            <table class="auto-style4">
                                                                                                                                                <tr>
                                                                                                                                                    <td align="left">
                                                                                                                                                        <table class="auto-style4">
                                                                                                                                                            <tr>
                                                                                                                                                                <td align="right">
                                                                                                                                                                    <asp:Label ID="AlertLabel18" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">Reference No:</asp:Label>
                                                                                                                                                                </td>
                                                                                                                                                                <td align="left">
                                                                                                                                                                    <asp:Label ID="Label7" runat="server" Font-Names="Times New Roman" Font-Size="X-Large" Text="Label" Visible="False" Font-Bold="True" ForeColor="Orange"></asp:Label>
                                                                                                                                                                </td>
                                                                                                                                                            </tr>
                                                                                                                                                        </table>
                                                                                                                                                    </td>
                                                                                                                                                    <td align="left">
                                                                                                                                                        <table class="auto-style4">
                                                                                                                                                            <tr>
                                                                                                                                                                <td align="right">
                                                                                                                                                                    <asp:Label ID="AlertLabel26" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">Table No:</asp:Label>
                                                                                                                                                                </td>
                                                                                                                                                                <td align="left">
                                                                                                                                                                    <asp:FormView ID="FormView16" runat="server" DataSourceID="TableNo" EnableModelValidation="True" style="margin-left: 0px">
                                                                                                                                                                        <EditItemTemplate>
                                                                                                                                                                            No:
                                                                                                                                                                            <asp:TextBox ID="NoTextBox9" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                            <br />
                                                                                                                                                                            <asp:LinkButton ID="UpdateButton4" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                        </EditItemTemplate>
                                                                                                                                                                        <InsertItemTemplate>
                                                                                                                                                                            No:
                                                                                                                                                                            <asp:TextBox ID="NoTextBox10" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                            <br />
                                                                                                                                                                            <asp:LinkButton ID="InsertButton4" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                        </InsertItemTemplate>
                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                            <asp:Panel ID="Panel100" runat="server">
                                                                                                                                                                                <table class="auto-style26">
                                                                                                                                                                                    <tr>
                                                                                                                                                                                        <td style="text-align: right">&nbsp;</td>
                                                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                                                            <asp:Label ID="NoLabel4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("TableeNo") %>' />
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
                                                                                                                                                        <table class="auto-style4">
                                                                                                                                                            <tr>
                                                                                                                                                                <td align="right">
                                                                                                                                                                    <asp:Label ID="AlertLabel17" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">Total:</asp:Label>
                                                                                                                                                                </td>
                                                                                                                                                                <td align="left">
                                                                                                                                                                    <asp:FormView ID="FormView10" runat="server" DataSourceID="ServedDrinkTotal" EnableModelValidation="True" style="margin-left: 0px">
                                                                                                                                                                        <EditItemTemplate>
                                                                                                                                                                            No:
                                                                                                                                                                            <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                            <br />
                                                                                                                                                                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                        </EditItemTemplate>
                                                                                                                                                                        <InsertItemTemplate>
                                                                                                                                                                            No:
                                                                                                                                                                            <asp:TextBox ID="NoTextBox0" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                            <br />
                                                                                                                                                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                        </InsertItemTemplate>
                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                            <asp:Panel ID="Panel11" runat="server">
                                                                                                                                                                                <table class="auto-style26">
                                                                                                                                                                                    <tr>
                                                                                                                                                                                        <td style="text-align: right">&nbsp;</td>
                                                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                                                            <asp:Label ID="NoLabel" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Total","{0:0,000}") %>' />
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
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            <asp:GridView ID="gvInformation5" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" OnSelectedIndexChanged="gvInformation5_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
                                                                                                                                                <Columns>
                                                                                                                                                    <asp:TemplateField HeaderText="S/N">
                                                                                                                                                        <ItemTemplate>
                                                                                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                                                                                        </ItemTemplate>
                                                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                    </asp:TemplateField>
                                                                                                                                                    <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                                                                                    <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                    <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                                                                                                    </asp:BoundField>
                                                                                                                                                    <asp:TemplateField>
                                                                                                                                                        <ItemTemplate>
                                                                                                                                                            <asp:CheckBox ID="CheckBox70" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
                                                                                                                                                        </ItemTemplate>
                                                                                                                                                        <HeaderStyle BackColor="#244242" ForeColor="Navy" />
                                                                                                                                                        <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                                                                                    </asp:TemplateField>
                                                                                                                                                    <asp:BoundField DataField="idRecord" SortExpression="idRecord">
                                                                                                                                                    <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                    <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                                                                                                    </asp:BoundField>
                                                                                                                                                    <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                                                                                                    <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                    <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                                                                                                    </asp:BoundField>
                                                                                                                                                    <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                                                                    <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                                                    </asp:BoundField>
                                                                                                                                                    <asp:BoundField DataField="PriceSales" HeaderText="Price" SortExpression="PriceSales">
                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                    </asp:BoundField>
                                                                                                                                                    <asp:BoundField DataField="quantity" HeaderText="Qty" SortExpression="quantity">
                                                                                                                                                    <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                    </asp:BoundField>
                                                                                                                                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                                                                    <FooterStyle ForeColor="Orange" />
                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                    </asp:BoundField>
                                                                                                                                                    <asp:TemplateField>
                                                                                                                                                        <ItemTemplate>
                                                                                                                                                            <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="red" Font-Bold="False" ForeColor="White" Height="25px" OnCheckedChanged="CheckBox12_CheckedChanged" Text="Cancel" Width="90px" />
                                                                                                                                                        </ItemTemplate>
                                                                                                                                                        <FooterStyle BackColor="#244242" />
                                                                                                                                                        <HeaderStyle BackColor="#244242" />
                                                                                                                                                        <ItemStyle BackColor="#244242" Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                    </asp:TemplateField>
                                                                                                                                                </Columns>
                                                                                                                                                <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                                                <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                                                            </asp:GridView>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            <table class="auto-style4">
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center">
                                                                                                                                                        <asp:Button ID="Button74" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button74_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="Confirm List" Width="247px" />
                                                                                                                                                        <asp:Button ID="Button70" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button70_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="Add" Width="235px" />
                                                                                                                                                        <asp:Button ID="Button71" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button71_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="Show Invoice" Visible="False" Width="249px" />
                                                                                                                                                        <asp:Label ID="AlertLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Orange">AlertLabel0</asp:Label>
                                                                                                                                                        <asp:Label ID="AlertLabel1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">AlertLabel1</asp:Label>
                                                                                                                                                        <asp:SqlDataSource ID="RemainOnPay" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Total - Paid AS Balance FROM BarCommand WHERE  idCommand=@idCommand  AND OperationDay=@OperationDay  AND (Total &gt; 0) ">
                                                                                                                                                            <SelectParameters>
                                                                                                                                                                <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" />
                                                                                                                                                                <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                                                            </SelectParameters>
                                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                                        <asp:Button ID="Button72" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button72_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="Hide Invoice" Visible="False" Width="217px" />
                                                                                                                                                        <asp:Button ID="Button97" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button97_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="Edit Table" Visible="False" Width="158px" />
                                                                                                                                                    </td>
                                                                                                                                                </tr>
                                                                                                                                                <tr>
                                                                                                                                                    <td align="center">
                                                                                                                                                        <asp:Panel ID="Panel98" runat="server" BackColor="#244242" Width="100%">
                                                                                                                                                            <table class="auto-style4">
                                                                                                                                                                <tr>
                                                                                                                                                                    <td align="left" class="auto-style38">
                                                                                                                                                                        <asp:FormView ID="FormView15" runat="server" DataSourceID="RemainOnPay" EnableModelValidation="True" style="margin-left: 0px">
                                                                                                                                                                            <EditItemTemplate>
                                                                                                                                                                                No:
                                                                                                                                                                                <asp:TextBox ID="NoTextBox7" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                                                                                                <br />
                                                                                                                                                                                <asp:LinkButton ID="UpdateButton3" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                            </EditItemTemplate>
                                                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                                                No:
                                                                                                                                                                                <asp:TextBox ID="NoTextBox8" runat="server" Text='<%# Bind("Balance") %>' />
                                                                                                                                                                                <br />
                                                                                                                                                                                <asp:LinkButton ID="InsertButton3" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton3" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                            </InsertItemTemplate>
                                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                                <asp:Panel ID="Panel99" runat="server">
                                                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                                                        <tr>
                                                                                                                                                                                            <td style="text-align: right">
                                                                                                                                                                                                <asp:Label ID="AlertLabel23" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#CCCCCC">Remain:</asp:Label>
                                                                                                                                                                                            </td>
                                                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                                                <asp:Label ID="NoLabel3" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Bind("Balance","{0:0,000}") %>' />
                                                                                                                                                                                            </td>
                                                                                                                                                                                        </tr>
                                                                                                                                                                                    </table>
                                                                                                                                                                                </asp:Panel>
                                                                                                                                                                            </ItemTemplate>
                                                                                                                                                                        </asp:FormView>
                                                                                                                                                                    </td>
                                                                                                                                                                    <td align="center" class="auto-style37">
                                                                                                                                                                        <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="#00CC00" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" placeholder="PAID" Width="200px"></asp:TextBox>
                                                                                                                                                                    </td>
                                                                                                                                                                    <td align="right">
                                                                                                                                                                        <asp:Button ID="Button73" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000099" Height="40px" OnClick="Button73_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="SAVE " Width="240px" />
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
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Panel ID="Expensess" runat="server" BackColor="#006666" Visible="False" Width="100%">
                                                                                                                    <table class="auto-style4">
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:Label ID="AlertLabel31" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">Add Expenses</asp:Label>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:Label ID="AlertLabel32" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White"></asp:Label>
                                                                                                                                <asp:SqlDataSource ID="Expenses" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idExpenses], [amount], [dateAdded], [DetailsExpense], [OperationDay], [operationMonth], [operationYear], [dateOccur], [userAdded] FROM [ExpensesReports2] WHERE ([OperationDay] = @OperationDay)">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                                                                    </SelectParameters>
                                                                                                                                </asp:SqlDataSource>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:TextBox ID="TextBox41" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="30px" placeholder="AMOUNT" Width="449px"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:TextBox ID="TextBox42" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="69px" placeholder="REMARK" TextMode="MultiLine" Width="449px"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:Button ID="Button78" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button78_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Silver'" Text="Submit" Width="289px" />
                                                                                                                                <asp:Button ID="Button80" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Silver'" Text="Back" Width="181px" />
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:GridView ID="gvInformation12" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderWidth="0px" CellPadding="4" DataSourceID="Expenses" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation4_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation4_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
                                                                                                                                    <Columns>
                                                                                                                                        <asp:TemplateField HeaderText="Sno">
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <%# Container.DataItemIndex + 1 %>
                                                                                                                                            </ItemTemplate>
                                                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                        </asp:TemplateField>
                                                                                                                                        <asp:BoundField DataField="dateOccur" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="dateOccur">
                                                                                                                                        <ItemStyle Font-Bold="False" />
                                                                                                                                        </asp:BoundField>
                                                                                                                                        <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount">
                                                                                                                                        <ItemStyle Font-Bold="False" />
                                                                                                                                        </asp:BoundField>
                                                                                                                                        <asp:BoundField DataField="DetailsExpense" HeaderText="Details" SortExpression="DetailsExpense">
                                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                        <ItemStyle Font-Bold="False" Font-Size="Large" HorizontalAlign="Left" />
                                                                                                                                        </asp:BoundField>
                                                                                                                                    </Columns>
                                                                                                                                    <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                    <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                                    <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                    <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                    <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
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
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                    <br />
                                                                                    <asp:Panel ID="Panel108" runat="server">
                                                                                        <table>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                    <asp:SqlDataSource ID="ServedDrink" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = @idCommand)  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                    <br />
                                                                                    <br />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">
                                                                                    &nbsp;</td>
                                                                                <td align="center">
                                                                                    <asp:Label ID="AlertLabel30" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="ServedDrinkTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM BarRequestViewStock WHERE (idCommand = @idCommand)">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="Command" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idCommand,TableeNo, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandB WHERE OperationDay=@OperationDay AND (Total &gt; 0) and requestStatus='unconfirmed' ORDER BY idCommand DESC">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="Command1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandB WHERE  OperationDay=@OperationDay  AND (Total &gt; 0) and requestStatus='confirmed' ORDER BY idCommand DESC">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="DailySummaryBarResto" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT TOP (1) idDayCloser, DSalesAmount, DPaidAmount, DExpenses, DUnpaid, OperationDay, DBalance  FROM BarDailyClose WHERE (OperationDay = @OperationDay) ORDER BY idDayCloser DESC">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="SqlDataSourceDATE" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [dateRecorded] FROM [WebDetailsDataView] WHERE ([OperationDay] = @OperationDay)">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                        </table>
                                                                        <br />
                                                                    </asp:Panel>                                                                   
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <asp:Label ID="RoleName" runat="server" Text="RoleName" Visible="False"></asp:Label>
                                                    <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Panel ID="PanelList2" runat="server" BorderColor="#666666" BorderWidth="4px" Visible="False">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>
                                                                    <asp:Panel ID="Drinks0" runat="server" BackColor="#333333" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td>
                                                                                    <table class="auto-style4">
                                                                                        <tr>
                                                                                            <td align="left">
                                                                                                <asp:Button ID="Button92" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button92_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Back" Width="193px" />
                                                                                            </td>
                                                                                            <td align="right">
                                                                                                <asp:Button ID="Button96" runat="server" OnClick="Button96_Click" Text="Button" Visible="False" />
                                                                                                <asp:Label ID="AlertLabel66" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="Orange"></asp:Label>
                                                                                                <asp:Button ID="Button91" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button91_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Submit" Width="159px" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <table class="auto-style4">
                                                                                        <tr>
                                                                                            <td align="center">
                                                                                                <asp:Label ID="AlertLabel12" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="Orange">BAR</asp:Label>
                                                                                                <asp:SqlDataSource ID="Number" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                                                            </td>
                                                                                            <td align="center">
                                                                                                <asp:SqlDataSource ID="ProductsSkol" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [PriceSales],quantityStock, [idDrinkCategory] FROM [BarProducts2] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                                                    <SelectParameters>
                                                                                                        <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                                                                    </SelectParameters>
                                                                                                </asp:SqlDataSource>
                                                                                                <asp:Label ID="AlertLabel13" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="Orange">RESTO</asp:Label>
                                                                                            </td>
                                                                                            <td align="center">
                                                                                                <asp:SqlDataSource ID="Products" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                                                                                                <asp:Label ID="AlertLabel29" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="Orange">Others </asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <asp:Panel ID="Panel110" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px">
                                                                                                    <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation3_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation3_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="productName" HeaderText="ITEMS" SortExpression="productName">
                                                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales" HeaderText="PRICE">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="quantityStock" SortExpression="quantityStock" HeaderText="QUANTITY">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="27px" placeholder="" Width="60px"></asp:TextBox>
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                            <td align="center" valign="top">
                                                                                                <asp:Panel ID="Panel111" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px">
                                                                                                    <asp:GridView ID="gvInformation6" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsBralirwa" EnableModelValidation="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation6_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" style="margin-left: 0px" Width="100%">
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" OnCheckedChanged="CheckBox5_CheckedChanged" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="productName" HeaderText="ITEMS" SortExpression="productName">
                                                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales" HeaderText="PRICE">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="quantityStock" SortExpression="quantityStock" HeaderText="QUANTITY">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:TextBox ID="TextBox8" runat="server" BackColor="#244242" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="27px" placeholder="" Width="60px"></asp:TextBox>
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                            <td valign="top">
                                                                                                <asp:Panel ID="Panel112" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px">
                                                                                                    <asp:GridView ID="gvInformation8" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Uncountable" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation6_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" style="margin-left: 0px" Width="100%">
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:CheckBox ID="CheckBox6" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="productName" HeaderText="ITEMS" SortExpression="productName">
                                                                                                            <ControlStyle Font-Size="XX-Large" Width="300px" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales" HeaderText="PRICE">
                                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:TextBox ID="TextBox43" runat="server" BackColor="#244242" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="27px" placeholder="" Width="60px"></asp:TextBox>
                                                                                                                </ItemTemplate>
                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="ProductsBralirwa" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName],quantityStock, [PriceSales] FROM [BarProducts2] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                                        <SelectParameters>
                                                                                            <asp:Parameter DefaultValue="2" Name="idDrinkCategory" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="Uncountable" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName] ,quantityStock, PriceSales,PricePurchase,idDrinkCategory FROM [BarProducts2] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                                        <SelectParameters>
                                                                                            <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
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
                                            <tr>
                                                <td align="left">
                                                    <asp:Panel ID="Drinks2" runat="server" BackColor="#333333" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Visible="False">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td class="auto-style40">
                                                                    <asp:SqlDataSource ID="ProductsSkol0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [PriceSales],quantityStock, [idDrinkCategory] FROM [BarProducts2] WHERE ([idDrinkCategory] = @idDrinkCategory)">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:Button ID="Button88" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button88_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="BACK" Width="300px" />
                                                                    <asp:SqlDataSource ID="Number0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="AlertLabel62" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange" Font-Size="XX-Large">Drinks Stock</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation13" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol0" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation3_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                             <asp:TemplateField HeaderText="Sno">
                                                                                                        <ItemTemplate>
                                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                                        </ItemTemplate>
                                                                                                        <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                                                                </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="DRUNKS&amp;FOOD" SortExpression="productName">
                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="quantityStock" SortExpression="quantityStock">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                          
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="AlertLabel63" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange" Font-Size="XX-Large">Foods Stock</asp:Label>
                                                                    <asp:SqlDataSource ID="ProductsBralirwa0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName],quantityStock, [PriceSales] FROM [BarProducts2] WHERE ([idDrinkCategory] = @idDrinkCategory)">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="2" Name="idDrinkCategory" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation14" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsBralirwa0" EnableModelValidation="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation6_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                                        <ItemTemplate>
                                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                                        </ItemTemplate>
                                                                                                        <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                                                                </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="DRUNKS&amp;FOOD" SortExpression="productName">
                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="quantityStock" SortExpression="quantityStock">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                            </asp:BoundField>                                                                          
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
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
                </td>
            </tr>
        </table>
     
    </asp:Panel>
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>




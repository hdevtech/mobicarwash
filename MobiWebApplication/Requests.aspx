<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="Requests.aspx.cs" Inherits="MobiWebApplication.WebForm69" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerKitchen.aspx.cs" Inherits="MobiWebApplication.WebForm60" %>--%>
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
        .auto-style34 {
            height: 40px;
        }
        .auto-style36 {
        }
        .auto-style39 {
            width: 417px;
            height: 20px;
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
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                                                    <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="DailySummaryBillard" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT TOP (1)   idDayCloser, RequestedAmount, PlayedJour, PlayedTotal, Balance, OperationDay, TotalPlayed, TotalPlayedReal, TotalPlayedFree, TotalPlayedJour, TotalPlayedRealJour, TotalPlayedFreeJour   FROM BillardCalculation WHERE (OperationDay = @OperationDay) ORDER BY idDayCloser DESC">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:TextBox ID="TextBox4" runat="server" Visible="False" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Gray" DataSourceID="COMMAND_ID0" DataTextField="idCommand" DataValueField="idCommand" ForeColor="Gray" Height="1px" Width="1px">
                                                    </asp:DropDownList>
                                                    <asp:Panel ID="PanelCommand" runat="server" BackColor="#006666" BorderColor="#CCCCCC" BorderStyle="None" Width="100%">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Button ID="Button77" runat="server" BackColor="#006666" BorderStyle="Solid" BorderWidth="2px" CssClass="BUTTOMROUND" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange" Height="57px" OnClick="Button77_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="Log out" Width="130px" />
                                                                    <br />
                                                                    <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="DailySummaryBillard" DataTextField="Balance" DataValueField="Balance" Height="1px" Width="1px">
                                                                    </asp:DropDownList>
                                                                    <br />
                                                                    <asp:TextBox ID="TextBox10" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="1px" placeholder="TABLE NO" Visible="False" Width="1px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style34" align="center">
                                                                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="X-Large" ForeColor="White">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style34">
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text="Label" Visible="False"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="Button81" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" CssClass="BUTTOMROUND" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="57px" OnClick="Button81_Click1" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="Token Man" Width="261px" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Panel ID="PanelPayment0" runat="server" BackColor="Gray" Visible="False" Width="100%">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td class="auto-style36">
                                                                                    <asp:Panel ID="Drinks3" runat="server" BackColor="Gray">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td style="border-style: none; border-width: medium; border-color: #CCCCCC">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="left">
                                                                                                                <asp:Label ID="AlertLabel34" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">Items List</asp:Label>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <table class="auto-style4">
                                                                                                                    <tr>
                                                                                                                        <td align="right" class="auto-style39">&nbsp;</td>
                                                                                                                        <td align="left">&nbsp;</td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  idRecord, AmountRequest, OperationDay, operationMonth, operationYear, userAdded, recordStatus, requestStatus, dateAdded  FROM BearRequests Where requestStatus='unconfirmed' and recordStatus='recorded'  ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                                                                    <asp:Panel ID="Panel103" runat="server" BackColor="Gray">
                                                                                                        <asp:Label ID="RoleName" runat="server" Text="RoleName" Visible="False"></asp:Label>
                                                                                                    </asp:Panel>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="center">
                                                                                                                &nbsp;</td>
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
                                                                    <asp:GridView ID="gvInformation14" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="SqlDataSource2" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" OnSelectedIndexChanged="gvInformation5_SelectedIndexChanged" ShowFooter="True" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox71" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="35px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="35px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle BackColor="#244252" ForeColor="Navy" />
                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idRecord" SortExpression="idRecord">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="dateAdded" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="dateAdded ">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateAdded ">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="AmountRequest" HeaderText="Amount" SortExpression="AmountRequest">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox72" runat="server" AutoPostBack="True" BackColor="red" Font-Bold="False" ForeColor="White" Height="40px" OnCheckedChanged="CheckBox72_CheckedChanged" Text="Cancel" Width="140px" />
                                                                                </ItemTemplate>
                                                                                <FooterStyle BackColor="#244242" />
                                                                                <HeaderStyle BackColor="#244252" />
                                                                                <ItemStyle BackColor="#244242" Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#244252" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="IDS" DataTextField="idRecord" DataValueField="idRecord" Height="1px" Width="1px">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="IDS" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecord FROM BearRequests Where recordStatus='recorded' ORDER BY idRecord DESC"></asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Button ID="Button80" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White" Height="60px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="CONFIRM " Width="247px" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation15" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="SqlDataSource3" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" OnSelectedIndexChanged="gvInformation5_SelectedIndexChanged" ShowFooter="True" style="margin-left: 0px" Width="100%" PageSize="5">
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="dateAdded" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="dateAdded ">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateAdded ">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="AmountRequest" HeaderText="Amount" SortExpression="AmountRequest">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#333333" Font-Size="XX-Large" ForeColor="Orange" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#244252" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Panel ID="PanelCommand0" runat="server" BackColor="#244242" BorderStyle="Solid" BorderWidth="2px">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td align="center">
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  idRecord, AmountRequest, OperationDay, operationMonth, operationYear, userAdded, recordStatus, requestStatus, dateAdded  FROM BearRequests Where requestStatus='confirmed' and recordStatus='recorded'  ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center">
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
                </td>
            </tr>
        </table>
     
    </asp:Panel>
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>


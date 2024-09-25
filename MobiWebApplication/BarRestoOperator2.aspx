<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="BarRestoOperator2.aspx.cs" Inherits="MobiWebApplication.WebForm57" %>
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
        .auto-style38 {
            width: 204px;
        }
        .auto-style37 {
            width: 177px;
        }
        .auto-style39 {
            height: 20px;
        }
        .auto-style40 {
            width: 406px;
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
                    <asp:Panel ID="Panel89" runat="server" BackColor="DarkSlateGray" CssClass="Panel1Registration" Width="892px">
                        <br />
                        <table class="auto-style4">
                            <tr>
                                <td align="center">
                                    <asp:Button ID="Button77" runat="server" BackColor="DarkSlateGray" BorderStyle="Solid" CssClass="BUTTOMROUND" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Height="73px" OnClick="Button77_Click" onmouseout="this.style.backgroundColor='DarkSlateGray'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Log out" Width="136px" BorderWidth="2px" />
                                </td>
                            </tr>
                        </table>
                        <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="X-Large" ForeColor="White">
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                        <br />                       
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
                                                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#244242" DataSourceID="COMMAND_ID0" DataTextField="idCommand" DataValueField="idCommand" ForeColor="#244242" Height="1px" Width="1px">
                                                    </asp:DropDownList>
                                                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:SqlDataSource ID="idProduct0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [PriceSales] FROM [BarProducts]"></asp:SqlDataSource>
                                                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:SqlDataSource ID="Products" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [PriceSales] FROM [BarProducts]"></asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="COMMAND_ID0_Selecting" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                                                    <asp:Label ID="AlertLabel24" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <table class="auto-style4">
                                                        <tr>
                                                            <td align="center">
                                                                <asp:TextBox ID="TextBox9" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="46px" placeholder="TABLE NO" Width="257px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <asp:Button ID="Button38" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button38_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="NEW ORDER" Width="400px" />
                                                            </td>
                                                            <td align="center">
                                                                <asp:Button ID="Button94" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button94_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="KITCHEN ORDER" Width="400px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Panel ID="Drinks" runat="server" BackColor="Gray" CssClass="Panel1Registration" Visible="False" Width="887px">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td style="border-style: none; border-width: medium; border-color: #FFFFFF">
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td align="right" class="auto-style40">
                                                                                <asp:Label ID="AlertLabel18" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White">Reference No:</asp:Label>
                                                                            </td>
                                                                            <td align="left">
                                                                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text="Label" Visible="False"></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation5" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ServedDrink" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="productName" HeaderText="ITEM" SortExpression="productName">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                            <ItemStyle HorizontalAlign="Left" Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="quantity" FooterText="TOTAL:" HeaderText="QTY" SortExpression="quantity">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Total" HeaderText="TOTAL" SortExpression="Total">
                                                                            <FooterStyle ForeColor="Orange" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                    <asp:Panel ID="Panel90" runat="server" BackColor="#244242">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td align="left" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">
                                                                                    <asp:Label ID="AlertLabel17" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" CssClass="LABELINCREASE">Total:</asp:Label>
                                                                                </td>
                                                                                <td align="right" style="border-style: dashed none none none; border-top-width: medium; border-color: #FFFFFF">
                                                                                    <asp:FormView ID="FormView10" runat="server" DataSourceID="ServedDrinkTotal" EnableModelValidation="True">
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
                                                                                                            <asp:Label ID="NoLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Bind("Total","{0:0,000}") %>' CssClass="LABELINCREASE" />
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
                                                                    <asp:SqlDataSource ID="Command" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommand WHERE OperationDay=@OperationDay AND (Total &gt; 0) and requestStatus='unconfirmed' and userAdded=@userAdded  ORDER BY idCommand DESC">
                                                                         <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                             <asp:ControlParameter ControlID="Label2" Name="userAdded" PropertyName="Text" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>                                                                   
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td align="left">
                                                                                &nbsp;</td>
                                                                            <td align="right">
                                                                                &nbsp;</td>
                                                                        </tr>
                                                                    </table>
                                                                    <asp:SqlDataSource ID="ServedDrink" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestViewStock WHERE (idCommand = @idCommand) GROUP BY idCommand, productName, PriceSales, OperationDay, userAdded">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label4" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:Panel ID="Panel98" runat="server" BackColor="#244242" Visible="False">
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
                                                                                                            <asp:Label ID="AlertLabel25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#CCCCCC">Remain:</asp:Label>
                                                                                                        </td>
                                                                                                        <td style="text-align: left">
                                                                                                            <asp:Label ID="NoLabel3" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text='<%# Bind("Balance","{0:0,000}") %>' CssClass="LABELINCREASE" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </table>
                                                                                            </asp:Panel>
                                                                                        </ItemTemplate>
                                                                                    </asp:FormView>
                                                                                </td>
                                                                                <td align="center" class="auto-style37">
                                                                                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Height="52px" placeholder="PAID" Width="242px"></asp:TextBox>
                                                                                </td>
                                                                                <td align="center">
                                                                                    <asp:Button ID="Button73" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="59px" OnClick="Button73_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Orange'" Text="SAVE PAYMENT" Width="282px" />
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="3">
                                                                                    <asp:SqlDataSource ID="RemainOnPay" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Total - Paid AS Balance FROM BarCommand WHERE  idCommand=@idCommand  AND OperationDay=@OperationDay  AND (Total &gt; 0) ">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="Label4" Name="idCommand" PropertyName="Text" />
                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                    <asp:Label ID="AlertLabel26" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White"></asp:Label>
                                                                                    <asp:Label ID="AlertLabel27" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                    <asp:SqlDataSource ID="ServedDrinkTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM [BarRequestViewStock] WHERE ([idCommand] = @idCommand)">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label4" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <asp:Panel ID="PanelList2" runat="server" Visible="False" BorderColor="#333333" BorderWidth="4px">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td align="right">
                                                                                <table class="auto-style4">
                                                                                    <tr>
                                                                                        <td align="left">
                                                                                            <asp:Button ID="Button78" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button78_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Back" Width="300px" />
                                                                                        </td>
                                                                                        <td align="right">
                                                                                            <asp:Button ID="Button37" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button37_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Submit" Width="300px" />
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
                                                                    <asp:Panel ID="Drinks0" runat="server" BackColor="#333333" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="AlertLabel12" runat="server" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange" CssClass="LABELINCREASE">Bar</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="Number" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                                                    <asp:SqlDataSource ID="ProductsSkol" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, PriceSales, quantityStock, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0)  ORDER BY productName">
                                                                                        <SelectParameters>
                                                                                            <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" GridLines="Horizontal" OnRowDataBound="gvInformation3_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                                        <Columns>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox ID="CheckBox2" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" OnCheckedChanged="CheckBox2_CheckedChanged1" />
                                                                                                    </ItemTemplate>
                                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="productName" HeaderText="DRUNKS&amp;FOOD" SortExpression="productName">
                                                                                            <ControlStyle Font-Size="XX-Large" Width="500px" />
                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                            <ItemStyle Font-Size="XX-Large" HorizontalAlign="Left" Width="300px" Font-Bold="False" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                            <ItemStyle HorizontalAlign="Right" Font-Bold="False" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="quantityStock" SortExpression="quantityStock">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                            <ItemStyle HorizontalAlign="Right" ForeColor="Orange" Font-Bold="False" />
                                                                                            </asp:BoundField>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="AlertLabel30" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">Resto</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="ProductsBralirwa" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0) ORDER BY productName">
                                                                                        <SelectParameters>
                                                                                            <asp:Parameter DefaultValue="2" Name="idDrinkCategory" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:GridView ID="gvInformation6" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsBralirwa" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation6_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                                        <Columns>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox ID="CheckBox5" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="productName" HeaderText="DRUNKS&amp;FOOD" SortExpression="productName">
                                                                                            <ControlStyle Font-Size="XX-Large" Width="300px" />
                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                            <ItemStyle Font-Size="XX-Large" HorizontalAlign="Left" Width="300px" Font-Bold="False" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                             <HeaderStyle HorizontalAlign="Right" />
                                                                                            <ItemStyle HorizontalAlign="Right" Font-Bold="False" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="quantityStock" SortExpression="quantityStock">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                            <ItemStyle HorizontalAlign="Right" ForeColor="Orange" Font-Bold="False" />
                                                                                            </asp:BoundField>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="TextBox8" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    &nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="AlertLabel31" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">Kitchen</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="auto-style39">
                                                                                    <asp:SqlDataSource ID="Uncountable0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales, PricePurchase, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0) ORDER BY productName">
                                                                                        <SelectParameters>
                                                                                            <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:GridView ID="gvInformation8" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Uncountable0" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                                        <Columns>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox ID="CheckBox6" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="productName" HeaderText="DRUNKS&amp;FOOD" SortExpression="productName">
                                                                                            <ControlStyle Font-Size="XX-Large" Width="300px" />
                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                            <ItemStyle Font-Bold="False" Font-Size="XX-Large" HorizontalAlign="Left" Width="300px" />
                                                                                            </asp:BoundField>
                                                                                            <asp:BoundField DataField="PriceSales" SortExpression="PriceSales">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                            </asp:BoundField>  
                                                                                              <asp:BoundField DataField="quantityStock" SortExpression="quantityStock">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                                            <ItemStyle HorizontalAlign="Right" ForeColor="Orange" Font-Bold="False" />
                                                                                            </asp:BoundField>                                                                                        
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="TextBox10" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="" Width="157px"></asp:TextBox>
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
                                                    <asp:Panel ID="PanelCommand0" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="2px">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="AlertLabel28" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="White" Visible="False">Pending Requests</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation4" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation4_RowDataBound" style="margin-left: 0px" Width="100%" Visible="False">
                                                                        <Columns>
                                                                           <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False"  HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Center" />
                                                                                            </asp:BoundField>                                                                           
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="TableeNo" HeaderText="TableNo" SortExpression="TableeNo">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Balance" HeaderText="Remain" SortExpression="Balance">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button40" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button40_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="150px" />
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
                                                                    <asp:Label ID="AlertLabel22" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="White">Sales Payment</asp:Label>
                                                                    <asp:GridView ID="gvInformation7" runat="server" AutoGenerateColumns="False" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command1" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation7_RowDataBound" ShowFooter="True" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="TableeNo" HeaderText="TableNo" SortExpression="TableeNo">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Total" FooterText="Paid:" HeaderText="Total" SortExpression="Total">
                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Paid" HeaderText="Paid" SortExpression="Paid">
                                                                            <FooterStyle Font-Bold="True" Font-Size="XX-Large" ForeColor="Orange" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Balance" HeaderText="Remain" SortExpression="Balance">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                <ItemStyle BackColor="#244242" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button41" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button41_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="VIEW" Width="150px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Orange" />
                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
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
                                                                    <asp:SqlDataSource ID="Command1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandB WHERE  OperationDay=@OperationDay   AND userAdded =@userAdded AND (Total &gt; 0) and requestStatus='confirmed' ORDER BY idCommand DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                            <asp:ControlParameter ControlID="Label2" Name="userAdded" PropertyName="Text" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:Label ID="AlertLabel32" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="White">Sales Items</asp:Label>
                                                                    <asp:SqlDataSource ID="Command2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandB WHERE  OperationDay=@OperationDay  AND (Total &gt; 0) and requestStatus='unconfirmed' ORDER BY idCommand DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:GridView ID="GridClientPayment3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#333333" GridLines="None" Width="100%">
                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <EditRowStyle BackColor="#999999" />
                                                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                            <HeaderStyle Font-Bold="True" HorizontalAlign="Left" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="quantity" HeaderText="Qty" SortExpression="quantity">
                                                                            <HeaderStyle Font-Bold="True" HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="Price" SortExpression="PriceSales">
                                                                            <HeaderStyle Font-Bold="True" HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                            <HeaderStyle Font-Bold="True" HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <asp:SqlDataSource ID="ProductsSkol1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idProduct, productName, quantityStock, PriceSales, PricePurchase, idDrinkCategory FROM BarProducts WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock &gt; 0) ORDER BY productName">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="4" Name="idDrinkCategory" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="Drinks2" runat="server" BackColor="#333333" BorderStyle="None" Visible="False">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td class="auto-style40">
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td align="left">
                                                                                <asp:Button ID="Button88" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button88_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="BACK" Width="300px" />
                                                                            </td>
                                                                            <td align="right">
                                                                                <asp:Button ID="Button93" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button93_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Submit" Width="266px" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation17" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol1" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox72" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                <ItemStyle CssClass="input" HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="ITEMS" SortExpression="productName">
                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                             <asp:BoundField DataField="quantityStock" HeaderText="Quantity" SortExpression="quantityStock">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" ForeColor="Orange" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox45" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="38px" placeholder="" Width="170px"></asp:TextBox>
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
                                                                        <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                    </asp:GridView>
                                                                    <asp:GridView ID="gvInformation13" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Uncountable" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox71" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" OnCheckedChanged="CheckBox71_CheckedChanged" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                <ItemStyle CssClass="input" HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="ITEMS" SortExpression="productName">
                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:TextBox ID="TextBox44" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="38px" placeholder="" Width="170px"></asp:TextBox>
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
                                                                        <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="Uncountable" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName] ,quantityStock, PriceSales,PricePurchase,idDrinkCategory FROM [BarProducts] WHERE ([idDrinkCategory] = @idDrinkCategory)   Order by [productName]">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="ServedDrink1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay,requestStatus,userAdded FROM BarRequestViewStock WHERE (OperationDay = @OperationDay) and (requestStatus='confirmed') and (userAdded=@userAdded) GROUP BY  productName,requestStatus,userAdded, PriceSales, OperationDay">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                            <asp:ControlParameter ControlID="Label2" Name="userAdded" PropertyName="Text" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
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
        </table>
     
    </asp:Panel>
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>



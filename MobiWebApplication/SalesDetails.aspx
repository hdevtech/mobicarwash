<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="WebForm55.aspx.cs" Inherits="MobiWebApplication.WebForm55" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style33 {
            width: 418px;
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
        .auto-style34 {
            height: 40px;
        }
        .ChkBoxClassok1 {}
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="PanelAll" runat="server">
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#244242" DataSourceID="COMMAND_ID0" DataTextField="idCommand" DataValueField="idCommand" ForeColor="#244242" Height="1px" Width="16px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="idProduct0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                    <asp:SqlDataSource ID="Products" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                    <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="Button38" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="52px" OnClick="Button38_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="CREATE NEW COMMAND" Width="487px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Drinks" runat="server" BackColor="Gray" Visible="False">
                        <table class="auto-style4">
                            <tr>
                                <td style="border-style: none none dashed none; border-width: medium; border-color: gray">
                                    <asp:Label ID="AlertLabel18" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">ITEMS LIST</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="gvInformation5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="0px" CellPadding="6" DataSourceID="ServedDrink" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation5_RowDataBound" style="margin-left: 0px" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="S/N">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                              <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                            </asp:BoundField>
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
                                            <asp:BoundField DataField="productName" HeaderText="ITEM" SortExpression="productName">
                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                            <HeaderStyle HorizontalAlign="Left" />
                                            <ItemStyle HorizontalAlign="Left" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Price" HeaderText="PRICE" SortExpression="Price">
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
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="red" Font-Bold="False" ForeColor="White" Height="31px" OnCheckedChanged="CheckBox12_CheckedChanged" Width="34px" CssClass="ChkBoxClassok1" />
                                                </ItemTemplate>
                                                <FooterStyle BackColor="#244242" />
                                                <HeaderStyle BackColor="#244242" />
                                                <ItemStyle BackColor="#244242" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="#CCCCCC" />
                                        <AlternatingRowStyle BackColor="#244242" ForeColor="#CCCCCC" />
                                    </asp:GridView>
                                    <asp:Panel ID="Panel90" runat="server" BackColor="#244242">
                                        <table class="auto-style4">
                                            <tr>
                                                <td align="left" class="auto-style33" style="border-style: dashed none none none; border-width: medium; border-color: #CCCCCC">
                                                    <asp:Label ID="AlertLabel17" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange">TOTAL:</asp:Label>
                                                </td>
                                                <td align="right" style="border-style: dashed none none none; border-top-width: medium; border-color: #CCCCCC">
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
                                                                            <asp:Label ID="NoLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Bind("Total","{0:0,000}") %>' />
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
                                    <asp:SqlDataSource ID="Command" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommand WHERE  OperationDay=@OperationDay  AND (Total &gt; 0) ORDER BY idCommand DESC">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <table class="auto-style4">
                                        <tr>
                                            <td align="center">
                                                <asp:Button ID="Button70" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="43px"  onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="ADD ON LIST" Width="182px" />
                                                <asp:Button ID="Button71" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="43px"  onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="SHOW  INVOICE" Width="182px" />
                                                <asp:Button ID="Button72" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="43px"  onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="HIDE  INVOICE" Visible="False" Width="182px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:Panel ID="Panel98" runat="server" BackColor="#244242">
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
                                                                                        <asp:Label ID="NoLabel3" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Bind("Balance","{0:0,000}") %>' />
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </asp:Panel>
                                                                    </ItemTemplate>
                                                                </asp:FormView>
                                                            </td>
                                                            <td align="center" class="auto-style37">
                                                                <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="Orange" Height="38px" placeholder="AMOUNT PAID" Width="192px"></asp:TextBox>
                                                            </td>
                                                            <td align="center">
                                                                 
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <asp:SqlDataSource ID="RemainOnPay" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Total - Paid AS Balance FROM BarCommand WHERE  idCommand=@idCommand  AND OperationDay=@OperationDay  AND (Total &gt; 0) ">
                                                                    <SelectParameters>
                                                                        <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" />
                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                    </SelectParameters>
                                                                </asp:SqlDataSource>
                                                                <asp:Label ID="AlertLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Orange">AlertLabel0</asp:Label>
                                                                <asp:Label ID="AlertLabel1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">AlertLabel1</asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:SqlDataSource ID="ServedDrink" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,idRecord, SUM(Price * quantity) AS Total, SUM(quantity) AS quantity, productName, Price, OperationDay,idProduct, userAdded FROM BarRequestView WHERE (idCommand = @idCommand) GROUP BY idCommand, productName,idProduct, Price,idRecord, OperationDay, userAdded">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="ServedDrinkTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * Price) AS Total FROM [BarServedDrinkView] WHERE ([idCommand] = @idCommand)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="PanelList2" runat="server" BorderColor="#333333" BorderWidth="4px" Visible="False">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <table class="auto-style4">
                                        <tr>
                                            <td align="center">
                                                <asp:Button ID="Button37" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="49px" OnClick="Button37_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="SUBMIT" Width="266px" />
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
                                                <td align="center" class="auto-style34">
                                                    <asp:Label ID="AlertLabel12" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange">LIST OF PRODUCTS</asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:SqlDataSource ID="ProductsSkol" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName],quantityStock, [Price]  FROM [BarProducts]">
                                                    </asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="Number" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" style="margin-left: 0px" Width="100%">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="CheckBox2" runat="server" BackColor="Gray" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="31px"  onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="34px" OnCheckedChanged="CheckBox2_CheckedChanged" />
                                                                </ItemTemplate>
                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                            <FooterStyle ForeColor="#244242" Width="10px" />
                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                            <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="productName" HeaderText="PRODUCTS NAMES" SortExpression="productName">
                                                            <ControlStyle  Width="500px" />
                                                            <HeaderStyle HorizontalAlign="Left" Width="500px" Wrap="True" />
                                                            <ItemStyle  HorizontalAlign="Left" Width="500px" Font-Bold="False" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="Price" HeaderText="PRICE" SortExpression="Price">
                                                            <FooterStyle ForeColor="#244242" />
                                                            <ControlStyle Font-Size="Large" Width="250px" />
                                                            <HeaderStyle HorizontalAlign="Left" Width="250px" Wrap="True"/>
                                                            <ItemStyle HorizontalAlign="Left" Width="250px" Wrap="True" Font-Bold="False"/>
                                                            </asp:BoundField>
                                                             <asp:BoundField DataField="quantityStock" HeaderText="QUANTITY" SortExpression="quantityStock">
                                                            <FooterStyle ForeColor="#244242" />
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                            </asp:BoundField>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:DropDownList ID="DropDownList35" runat="server" BackColor="#244242" CssClass="BUTTOMNUMBER" DataSourceID="Number" DataTextField="Number" DataValueField="Number" Font-Names="Tahoma" Font-Size="Large" ForeColor="White" Width="120px" Font-Bold="False" Height="35px">
                                                                    </asp:DropDownList>
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
                    <asp:Panel ID="PanelCommand" runat="server" BackColor="#006666" BorderColor="#CCCCCC" BorderStyle="None" Width="100%">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style34">
                                    <asp:Label ID="AlertLabel19" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange">LIST OF COMMANDS</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" ForeColor="White">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="gvInformation4" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Command" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal"   style="margin-left: 0px" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                            <FooterStyle ForeColor="#244242" />
                                            <ItemStyle Font-Size="Medium" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="userAdded" HeaderText="OPERATOR" SortExpression="userAdded">
                                            <ItemStyle Font-Size="Medium" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Time" DataFormatString="{0:hh\:mm}" HeaderText="TIME" SortExpression="Time">
                                            <ItemStyle Font-Size="Medium" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="status" HeaderText="STATUS" SortExpression="status">
                                            <FooterStyle ForeColor="#244242" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Total" HeaderText="TOTAL" SortExpression="Total">
                                            <FooterStyle ForeColor="#244242" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Paid" HeaderText="PAID" SortExpression="Paid">
                                            <FooterStyle ForeColor="#244242" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <ItemStyle HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="CheckBox4" runat="server" AutoPostBack="True" BackColor="Gray" CausesValidation="True" CssClass="ChkBoxClassok1" EnableTheming="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Smaller" ForeColor="Navy" Height="31px" OnCheckedChanged="CheckBox4_CheckedChanged" style="font-size:large;  margin:0px; " Width="32px" />
                                                </ItemTemplate>
                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Drinks1" runat="server" BackColor="#CCCCCC" Visible="False" Width="250px">
                        <table class="auto-style4">
                            <tr>
                                <td style="border-style: none none dashed none; border-width: thin; border-color: #000000">
                                    <asp:Label ID="AlertLabel20" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black">INVOICE</asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="gvInformation10" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" CellPadding="6" DataSourceID="ServedDrink0" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal"  style="margin-left: 0px" Width="100%">
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
                                            <asp:BoundField DataField="Price" HeaderText="PRICE" SortExpression="Price">
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
                                    <asp:Panel ID="Panel92" runat="server" BackColor="White">
                                        <table class="auto-style4">
                                            <tr>
                                                <td align="left" style="border-style: dashed none none none; border-width: medium; border-color: #FFFFFF">
                                                    <asp:Label ID="AlertLabel21" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black">TOTAL:</asp:Label>
                                                </td>
                                                <td align="right" style="border-style: dashed none none none; border-top-width: medium; border-color: #FFFFFF">
                                                    <asp:FormView ID="FormView11" runat="server" DataSourceID="ServedDrinkTotal0" EnableModelValidation="True">
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
                                            <td align="center">
                                                <asp:Button ID="Button69" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="43px" OnClientClick="doPrintInoice()" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="PRINT" Width="119px" />
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:SqlDataSource ID="ServedDrink0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, SUM(Price * quantity) AS Total, SUM(quantity) AS quantity, productName, Price, OperationDay, userAdded FROM BarRequestView WHERE (idCommand = @idCommand) GROUP BY idCommand, productName, Price, OperationDay, userAdded">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                                    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                                    <asp:SqlDataSource ID="ServedDrinkTotal0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * Price) AS Total FROM [BarServedDrinkView] WHERE ([idCommand] = @idCommand)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel100" runat="server">
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

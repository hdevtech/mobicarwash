<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerToolNew.Master" AutoEventWireup="true" CodeBehind="ProductPhisicalStock.aspx.cs" Inherits="MobiWebApplication.WebForm66" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            width: 6px;
        }
        .auto-style7 {
            height: 32px;
        }
        .auto-style8 {
            width: 185px;
        }
        .auto-style9 {
            width: 13px;
        }
        .auto-style10 {
            height: 155px;
        }
        .auto-style209 {}
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

    <asp:Panel ID="Panel1" runat="server">
         <script>
             function doPrintdailyRPT() {
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
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:Panel ID="PanelList2" runat="server" BorderStyle="None">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <asp:Panel ID="Drinks0" runat="server" BackColor="#333333" BorderStyle="None">
                                        <table class="auto-style4">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:SqlDataSource ID="ProductsSkol" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, PriceSales, quantityStock, Expr1,(quantityStock-Expr1)as Difference,idDrinkCategory FROM BarProducts5 WHERE (idDrinkCategory = @idDrinkCategory)   ORDER BY productName">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <b style="text-align: center"><span style="color: #000099">
                                                    <asp:SqlDataSource ID="Historic" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT        TOP (200) idRecord, idProduct, quantity, dateRecorded, OperationDay, operationMonth, operationYear, userAdded, recordStatus,productName FROM   BarPhyisicalStockView WHERE (idProduct = @idProduct)  ORDER BY dateRecorded DESC">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="Label6" Name="idProduct" PropertyName="Text" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="HistoricNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT COUNT(productName) AS NoItems FROM BarPhyisicalStockView3 WHERE (OperationDay = @OperationDay)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    </span></b>
                                                    <asp:SqlDataSource ID="Number" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">
                                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT dateAdded, OperationDay FROM DetailSales WHERE (dateAdded = OperationDay) ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                    <b style="text-align: center"><span style="color: #000099">
                                                    <asp:SqlDataSource ID="Historic1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT productName FROM BarPhyisicalStockView WHERE (OperationDay = @OperationDay)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    </span></b>
                                                    <asp:SqlDataSource ID="ProductsSkolNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  count(productName) as NoItemTotal FROM BarProducts5 WHERE (idDrinkCategory = @idDrinkCategory) ">
                                                        <SelectParameters>
                                                            <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <asp:Label ID="Label6" runat="server" Text="9000" Visible="False"></asp:Label>
                                                    <b style="text-align: center"><span style="color: #000099">
                                                    <asp:SqlDataSource ID="Historic0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT         productName FROM   BarPhyisicalStockView WHERE (idProduct = @idProduct) ">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="Label6" Name="idProduct" PropertyName="Text" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    </span></b>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">
                                                    <table class="auto-style4">
                                                        <tr>
                                                            <td colspan="5" class="auto-style10">
                                                                <asp:Panel ID="Panel3" runat="server" BackColor="White" Width="822px" Visible="False">
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label ID="AlertLabel30" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Black" Font-Size="Medium">BAR PHYISICAL STOCK</asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="True" BackColor="White" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource4" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Large" ForeColor="Black">
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:GridView ID="gvInformation4" runat="server" AutoGenerateColumns="False" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataKeyNames="idProduct" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black" style="margin-left: 0px" Width="100%">
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="Sno">
                                                                                            <ItemTemplate>
                                                                                                <%# Container.DataItemIndex + 1 %>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle Font-Bold="False" />
                                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="productName" HeaderText="Items" SortExpression="productName">
                                                                                        <ControlStyle Font-Size="Large" Width="200px" />
                                                                                        <HeaderStyle HorizontalAlign="Left" Width="200px" Wrap="True" />
                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="200px" />
                                                                                        </asp:BoundField>
                                                                                        <asp:BoundField DataField="quantityStock" HeaderText="Physical" SortExpression="quantityStock">
                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                        </asp:BoundField>
                                                                                        <asp:BoundField DataField="Expr1" HeaderText="System" SortExpression="Expr1">
                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                        </asp:BoundField>
                                                                                        <asp:BoundField DataField="Difference" HeaderText="Difference" SortExpression="Difference">
                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                        </asp:BoundField>
                                                                                    </Columns>
                                                                                    <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                                                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="Black" />
                                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="black" />
                                                                                    <RowStyle BackColor="White" Font-Bold="True" ForeColor="Black" />
                                                                                    <AlternatingRowStyle BackColor="White" ForeColor="Black" />
                                                                                </asp:GridView>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Button ID="Button86" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Daily Update" Width="67%" OnClick="Button86_Click" />
                                                            </td>
                                                            <td class="auto-style8">
                                                                <asp:Button ID="Button87" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Print" Width="100%" OnClientClick="doPrintdailyRPT()" Visible="False" />
                                                            </td>
                                                            <td class="auto-style9">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td style="text-align: right"><b style="text-align: center"><span style="color: #000099">
                                                                <asp:FormView ID="FormView3" runat="server" DataSourceID="ProductsSkolNo" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" OnPageIndexChanging="FormView3_PageIndexChanging">
                                                                    <EditItemTemplate>
                                                                        productName:
                                                                        <asp:TextBox ID="productNameTextBox2" runat="server" Text='<%# Bind("productName") %>' />
                                                                        <br />
                                                                        <asp:LinkButton ID="UpdateButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                    </EditItemTemplate>
                                                                    <InsertItemTemplate>
                                                                        productName:
                                                                        <asp:TextBox ID="productNameTextBox3" runat="server" Text='<%# Bind("productName") %>' />
                                                                        <br />
                                                                        <asp:LinkButton ID="InsertButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton1" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                    </InsertItemTemplate>
                                                                    <ItemTemplate>
                                                                        Total Items:
                                                                        <asp:Label ID="productNameLabel1" runat="server" ForeColor="Orange" Text='<%# Eval("NoItemTotal") %>' />
                                                                        <br />
                                                                    </ItemTemplate>
                                                                </asp:FormView>
                                                                </span></b></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource4" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Large" ForeColor="White">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td class="auto-style8">
                                                                <asp:Button ID="Button88" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button88_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Refresh" Width="100%" />
                                                            </td>
                                                            <td class="auto-style9">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td style="text-align: right"><b style="text-align: center"><span style="color: #000099">
                                                                <asp:FormView ID="FormView2" runat="server" DataSourceID="HistoricNo" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White">
                                                                    <EditItemTemplate>
                                                                        productName:
                                                                        <asp:TextBox ID="productNameTextBox0" runat="server" Text='<%# Bind("productName") %>' />
                                                                        <br />
                                                                        <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                    </EditItemTemplate>
                                                                    <InsertItemTemplate>
                                                                        productName:
                                                                        <asp:TextBox ID="productNameTextBox1" runat="server" Text='<%# Bind("productName") %>' />
                                                                        <br />
                                                                        <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                    </InsertItemTemplate>
                                                                    <ItemTemplate>
                                                                        Updated Items:
                                                                        <asp:Label ID="productNameLabel0" runat="server" ForeColor="Orange" Text='<%# Eval("NoItems") %>' />
                                                                        <br />
                                                                    </ItemTemplate>
                                                                </asp:FormView>
                                                                </span></b></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">
                                                    <table class="auto-style4" valign="top">
                                                        <tr>
                                                            <td valign="top" style="text-align: center">
                                                                <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataKeyNames="idProduct" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation3_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation3_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
                                                                    <Columns>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="25px" />
                                                                            </ItemTemplate>
                                                                            <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                            <ItemStyle CssClass="input" HorizontalAlign="Left" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                        <FooterStyle ForeColor="#244242" Width="10px" />
                                                                        <HeaderStyle Width="10px" Wrap="True" />
                                                                        <ItemStyle Font-Size="Smaller" ForeColor="#244242" HorizontalAlign="Center" Width="10px" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="productName" HeaderText="Items" SortExpression="productName">
                                                                        <ControlStyle Font-Size="Large" Width="200px" />
                                                                        <HeaderStyle HorizontalAlign="Left" Width="200px" Wrap="True" />
                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="200px" />
                                                                        </asp:BoundField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="87px"></asp:TextBox>
                                                                            </ItemTemplate>
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle HorizontalAlign="Right" />
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="Button37" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button37_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="Update" Width="80px" />
                                                                            </ItemTemplate>
                                                                            <ItemStyle CssClass="input" Font-Bold="False" HorizontalAlign="Left" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="quantityStock" HeaderText="Physical" SortExpression="quantityStock">
                                                                        <FooterStyle ForeColor="#244242" />
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle Font-Bold="False" ForeColor="White" HorizontalAlign="Center" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Expr1" HeaderText="System" SortExpression="Expr1">
                                                                        <FooterStyle ForeColor="#244242" />
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle Font-Bold="False" ForeColor="White" HorizontalAlign="Center" />
                                                                        </asp:BoundField>
                                                                        <asp:BoundField DataField="Difference" HeaderText="Difference" SortExpression="Difference">
                                                                        <FooterStyle ForeColor="#244242" />
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle Font-Bold="False" ForeColor="White" HorizontalAlign="Center" />
                                                                        </asp:BoundField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="Button38" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button38_Click" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="Historic" Width="80px" />
                                                                            </ItemTemplate>
                                                                            <ItemStyle CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                    <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                    <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                    <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                </asp:GridView>
                                                                <asp:Button ID="Button89" runat="server" BackColor="Gray" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button89_Click1" onmouseout="this.style.backgroundColor='SandyBrown'" Gray="this.style.backgroundColor='DarkSlateGray'" Text="Submit All" Width="39%" />
                                                            </td>
                                                            <td class="auto-style6" valign="top">
                                                                <table class="auto-style4">
                                                                    <tr>
                                                                        <td class="auto-style7"><b style="text-align: center"><span style="color: #000099">
                                                                            <asp:FormView ID="FormView1" runat="server" DataSourceID="Historic0" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" OnPageIndexChanging="FormView1_PageIndexChanging">
                                                                                <EditItemTemplate>
                                                                                    productName:
                                                                                    <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    productName:
                                                                                    <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    Item:
                                                                                    <asp:Label ID="productNameLabel" runat="server" Text='<%# Bind("productName") %>' />
                                                                                    <br />
                                                                                </ItemTemplate>
                                                                            </asp:FormView>
                                                                            </span></b></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td><b style="text-align: center"><span style="color: #000099">
                                                                            <asp:GridView ID="GridClientPayment4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Historic" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="GridClientPayment4_RowDataBound" Width="100%" OnSelectedIndexChanged="GridClientPayment4_SelectedIndexChanged">
                                                                                <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                <PagerStyle BackColor="#244242" ForeColor="White" HorizontalAlign="Center" />
                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                <EditRowStyle BackColor="#999999" />
                                                                                <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded">
                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                    <ItemStyle Font-Bold="False" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="dateRecorded">
                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                    <ItemStyle Font-Bold="False" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded">
                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                    <ItemStyle Font-Bold="False" />
                                                                                    </asp:BoundField>
                                                                                </Columns>
                                                                            </asp:GridView>
                                                                            <asp:DataList ID="DataList1" runat="server" DataSourceID="Historic1" Width="100%">
                                                                                <ItemTemplate>
                                                                                    <b style="text-align: center"><span style="color: #000099">
                                                                                    <asp:SqlDataSource ID="HistoricGrop" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT TOP (200) idRecord, idProduct, quantity, dateRecorded, OperationDay, operationMonth, operationYear, userAdded, recordStatus, productName FROM BarPhyisicalStockView WHERE (productName = @productName) AND (OperationDay = @OperationDay) ORDER BY dateRecorded DESC">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="ProductName" Name="productName" PropertyName="Text" />
                                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                    </span>
                                                                                    <asp:Panel ID="Panel2" runat="server" BorderColor="Gray" BorderStyle="Solid" BorderWidth="1px">
                                                                                        <b style="text-align: center"><span style="color: #000099">
                                                                                        <asp:Label ID="ProductName" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Orange" Text='<%# Eval("productName") %>'></asp:Label>
                                                                                        <asp:GridView ID="GridClientPayment4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="HistoricGrop" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="GridClientPayment4_RowDataBound" ShowHeader="False" Width="100%">
                                                                                            <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                            <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                            <PagerStyle BackColor="#244242" ForeColor="White" HorizontalAlign="Center" />
                                                                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                            <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                            <EditRowStyle BackColor="#999999" />
                                                                                            <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                            <Columns>
                                                                                                <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded">
                                                                                                <HeaderStyle Font-Bold="False" />
                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="dateRecorded" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="dateRecorded">
                                                                                                <HeaderStyle Font-Bold="False" />
                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                                                                                <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                </asp:BoundField>
                                                                                                <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded">
                                                                                                <HeaderStyle Font-Bold="False" />
                                                                                                <ItemStyle Font-Bold="False" />
                                                                                                </asp:BoundField>
                                                                                            </Columns>
                                                                                        </asp:GridView>
                                                                                        </span></b>
                                                                                    </asp:Panel>
                                                                                    </b>
                                                                                </ItemTemplate>
                                                                            </asp:DataList>
                                                                            </span></b></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">
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
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

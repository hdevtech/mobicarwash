<%@ Page Title="" Language="C#" MasterPageFile="~/Ndal.Master" AutoEventWireup="true" CodeBehind="Operator.aspx.cs" Inherits="MobiWebApplication.WebForm49" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
        }
        .auto-style29
        {
            width: 125px;
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
        .auto-style13
        {
            width: 5px;
        }
        .auto-style33
        {
            height: 82px;
        }
        .auto-style35
        {
            width: 242px;
        }
        .auto-style36
        {
            text-align: center;
            }
        .auto-style37
        {
            width: 3px;
        }
        .auto-style38
        {
            width: 4px;
        }
        .auto-style41
        {
            width: 123px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="PanelOperator" runat="server">
        <table class="auto-style4">
            <tr>
                <td class="auto-style33">
                    <asp:Panel ID="Panel2" runat="server" BackColor="Gray" CssClass="Panel1Registration" Width="886px">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style29">
                                    <asp:Button ID="Button52" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Service" Width="128px" />
                                </td>
                                <td class="auto-style30">
                                    <asp:Button ID="Button32" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button32_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Mobile" Width="140px" />
                                </td>
                                <td class="auto-style31">
                                    <asp:Button ID="Button33" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Expenses" Width="134px" />
                                </td>
                                <td class="auto-style32">
                                    <asp:Button ID="Button35" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Staff Credit" Width="149px" OnClick="Button35_Click" />
                                </td>
                                <td class="auto-style13">
                                    <asp:Button ID="Button36" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px"  onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Client Payment" Width="130px" />
                                </td>
                                <td class="auto-style13">
                                    <asp:Button ID="Button34" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px"  onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Reports" Width="95px" />
                                </td>
                                <td class="auto-style13">
                                    <asp:Button ID="Button37" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="32px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Log out" Width="82px" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="PanelAll" runat="server" CssClass="PanelHomeLogin" BackColor="#006666">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Panel ID="PanelBuying" runat="server">
                                        <table class="auto-style4">
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="PanBuyingSelec" runat="server">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td valign="top">
                                                                    <asp:Panel ID="ServiceDervery" runat="server">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td class="auto-style37">
                                                                                    <asp:SqlDataSource ID="SupplierView" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [SupplierName], [Contact], [IdSupplier], [DateRegistered], [status] FROM [ViewSupplier]"></asp:SqlDataSource>
                                                                                    <asp:Panel ID="Panel5" runat="server">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="TextBox39" runat="server" Visible="False" Width="203px"></asp:TextBox>
                                                                                                </td>
                                                                                                <td>&nbsp;</td>
                                                                                                <td>&nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                                <td class="auto-style35">
                                                                                    <asp:Label ID="AlertLabel" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="auto-style37">
                                                                                    <asp:GridView ID="gvInformation1" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SupplierView" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="599px" BorderStyle="Solid">
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
                                                                                            <asp:BoundField DataField="SupplierName" HeaderText="Supplier" SortExpression="SupplierName" />
                                                                                            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                                                                                            <asp:BoundField DataField="IdSupplier" SortExpression="IdSupplier" />
                                                                                        </Columns>
                                                                                    </asp:GridView>
                                                                                </td>
                                                                                <td class="auto-style36" valign="top">
                                                                                    <asp:TextBox ID="TextBox37" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Old Price" ReadOnly="True" Visible="False" Width="218px"></asp:TextBox>
                                                                                    <asp:TextBox ID="TextBox38" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Old Price" ReadOnly="True" Visible="False" Width="218px"></asp:TextBox>
                                                                                </td>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="auto-style37">
                                                                                    <asp:Panel ID="Panel4" runat="server">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td><span style="color: #000099"><span style="font-size: small">
                                                                                                    <asp:TextBox ID="TextBox11" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="37px" Width="248px"></asp:TextBox>
                                                                                                    </span></span></td>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button53" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button53_Click1" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="A" Width="145px" />
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:Button ID="Button41" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="B" Width="145px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                                <td class="auto-style36" valign="top">&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                                <td class="auto-style38" valign="top">&nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="PanBuyingSelec0" runat="server">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td valign="top">
                                                                    <asp:Panel ID="ServiceDervery0" runat="server">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td class="auto-style41">
                                                                                    <asp:SqlDataSource ID="SupplierView0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [SupplierName], [Contact], [IdSupplier], [DateRegistered], [status] FROM [ViewSupplier]"></asp:SqlDataSource>
                                                                                    <span style="color: #000099"><span style="font-size: small">
                                                                                    <asp:TextBox ID="TextBox46" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="43px" Width="248px"></asp:TextBox>
                                                                                    <asp:TextBox ID="TextBox43" runat="server" BackColor="#006666" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="37px" Width="248px"></asp:TextBox>
                                                                                    </span></span>
                                                                                    <asp:Panel ID="Panel6" runat="server">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="TextBox40" runat="server" Visible="False" Width="81px"></asp:TextBox>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="TextBox45" runat="server" Visible="False" Width="81px"></asp:TextBox>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="TextBox44" runat="server" Visible="False" Width="81px"></asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                                <td class="auto-style35">
                                                                                    <asp:Label ID="AlertLabel0" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="auto-style41" valign="top">
                                                                                    <asp:Panel ID="Panel10" runat="server" BackColor="Gray">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td class="auto-style29" valign="top">
                                                                                                    <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BorderColor="#999966" BorderStyle="Solid" CellPadding="8" DataSourceID="Items" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="210px">
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
                                                                                                                    <asp:CheckBox ID="CheckBox8" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox8_CheckedChanged" />
                                                                                                                </ItemTemplate>
                                                                                                                <FooterStyle BackColor="White" />
                                                                                                                <HeaderStyle BackColor="Orange" />
                                                                                                                <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="idItem" HeaderText="N/S" SortExpression="idItem" />
                                                                                                            <asp:BoundField DataField="Item" HeaderText="IMBAHO" SortExpression="Item" />
                                                                                                        </Columns>
                                                                                                    </asp:GridView>
                                                                                                </td>
                                                                                                <td align="center" class="auto-style30" valign="top">
                                                                                                    <asp:GridView ID="gvInformation2" runat="server" AutoGenerateColumns="False" BorderColor="#999966" BorderStyle="Solid" CellPadding="8" DataSourceID="ProductPrice" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="210px">
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
                                                                                                                    <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox7_CheckedChanged" />
                                                                                                                </ItemTemplate>
                                                                                                                <FooterStyle BackColor="White" />
                                                                                                                <HeaderStyle BackColor="Orange" />
                                                                                                                <ItemStyle BackColor="#006666" HorizontalAlign="Center" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="IdProduct" HeaderText="N/S" SortExpression="IdProduct" />
                                                                                                            <asp:BoundField DataField="productName" HeaderText="Size" SortExpression="productName" />
                                                                                                        </Columns>
                                                                                                    </asp:GridView>
                                                                                                </td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="auto-style29">&nbsp;</td>
                                                                                                <td align="center" class="auto-style30">&nbsp;</td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="auto-style29">&nbsp;</td>
                                                                                                <td class="auto-style30">&nbsp;</td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="auto-style29">&nbsp;</td>
                                                                                                <td class="auto-style30">&nbsp;</td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                        <asp:SqlDataSource ID="Items" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idItem], [Item] FROM [Items]"></asp:SqlDataSource>
                                                                                    </asp:Panel>
                                                                                    <asp:SqlDataSource ID="ProductPrice" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [productName], [IdProduct], [Item] FROM [ProductPrice] WHERE ([idItem] = @idItem)">
                                                                                        <SelectParameters>
                                                                                            <asp:ControlParameter ControlID="TextBox40" Name="idItem" PropertyName="Text" Type="String" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                </td>
                                                                                <td class="auto-style36" valign="top" colspan="2">
                                                                                    <asp:Panel ID="Panel9" runat="server" BackColor="Gray" CssClass="Panel1Registration" Width="405px">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td class="auto-style29">&nbsp;</td>
                                                                                                <td align="center" class="auto-style30">
                                                                                                    <asp:TextBox ID="TextBox41" runat="server" BackColor="Gray" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Old Price" Width="179px"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="auto-style29">&nbsp;</td>
                                                                                                <td align="center" class="auto-style30">
                                                                                                    <asp:TextBox ID="TextBox42" runat="server" BackColor="Gray" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" ForeColor="Navy" Height="16px" placeholder="Old Price" Width="179px"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="auto-style29">&nbsp;</td>
                                                                                                <td class="auto-style30">&nbsp;</td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="auto-style29">&nbsp;</td>
                                                                                                <td class="auto-style30">
                                                                                                    <asp:Panel ID="Panel7" runat="server">
                                                                                                        <table class="auto-style4">
                                                                                                            <tr>
                                                                                                                <td>&nbsp;</td>
                                                                                                                <td>
                                                                                                                    <asp:Button ID="Button54" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClick="Button53_Click1" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="Save" Width="96px" />
                                                                                                                </td>
                                                                                                                <td>
                                                                                                                    <asp:Button ID="Button55" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="Navy" Height="32px" OnClientClick="return confirm ('Are you sure you want to UPDATE ?');" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="Detete" Width="91px" />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </td>
                                                                                                <td class="auto-style31">&nbsp;</td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="auto-style41">
                                                                                    &nbsp;</td>
                                                                                <td class="auto-style36" valign="top">&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                                <td class="auto-style38" valign="top">&nbsp;</td>
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
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
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
            <tr>
                <td>
                    <asp:Panel ID="Panel3" runat="server">
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


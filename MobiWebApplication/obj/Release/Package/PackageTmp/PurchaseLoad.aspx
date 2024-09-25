<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="PurchaseLoad.aspx.cs" Inherits="MobiWebApplication.WebForm62" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style26
        {
            width: 82%;
        }
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style215 {
            width: 95px;
        }
        .auto-style216 {
            height: 20px;
        }
        .auto-style209 {}
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <table class="auto-style4">
        <tr>
            <td>
                                <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                                 </td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="Panel1" runat="server" BackColor="#244242">
                    <table class="auto-style4">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5" colspan="3">
                                <asp:Panel ID="Drinks0" runat="server" BackColor="#333333" BorderStyle="None">
                                    <table class="auto-style4">
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button92" runat="server" BackColor="#333333" BorderStyle="None" CssClass="auto-style209" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button92_Click" onmouseout="this.style.backgroundColor='#333333'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Log Out" Width="45%" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button75" runat="server" BackColor="#006666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="60px" OnClick="Button75_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='Orange'" Text="Submit" Width="319px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button80" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#333333'" onmouseover="this.style.backgroundColor='#006666'" Text="BAR" Width="320px" />
                                                <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Visible="False" Width="100%">
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
                                                        <asp:BoundField DataField="productName" HeaderText="ITEMS" SortExpression="productName">
                                                        <ControlStyle Font-Size="Large" Width="300px" />
                                                        <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Left" Width="300px" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="PriceSales" HeaderText="S-PRICE" SortExpression="PriceSales">
                                                        <FooterStyle ForeColor="#244242" />
                                                        <HeaderStyle HorizontalAlign="Right" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="QUANTITY">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox26" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="130px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Right" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="P-PRICE">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="150px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Left" />
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
                                                <asp:Button ID="Button81" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button81_Click" onmouseout="this.style.backgroundColor='#333333'" onmouseover="this.style.backgroundColor='#006666'" Text="RESTO" Width="320px" />
                                                <asp:GridView ID="gvInformation6" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="ProductsBralirwa" EnableModelValidation="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Visible="False" Width="100%">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" OnCheckedChanged="CheckBox5_CheckedChanged" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="25px" />
                                                            </ItemTemplate>
                                                            <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                            <ItemStyle CssClass="input" HorizontalAlign="Left" />
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
                                                        <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                        <FooterStyle ForeColor="#244242" />
                                                        <HeaderStyle HorizontalAlign="Right" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="QUANTITY">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox25" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="130px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Right" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="P-PRICE">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox8" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="150px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Left" />
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
                                                <asp:Button ID="Button82" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button82_Click" onmouseout="this.style.backgroundColor='#333333'" onmouseover="this.style.backgroundColor='#006666'" Text="KITCHEN" Width="320px" />
                                                <asp:GridView ID="gvInformation8" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="Uncountable" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Visible="False" Width="100%">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox6" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" OnCheckedChanged="CheckBox6_CheckedChanged" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="25px" />
                                                            </ItemTemplate>
                                                            <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                            <ItemStyle CssClass="input" HorizontalAlign="Left" />
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
                                                        <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                        <FooterStyle ForeColor="#244242" />
                                                        <HeaderStyle HorizontalAlign="Right" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="QUANTITY">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox27" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="130px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Right" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="P-PRICE">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox43" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="150px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Left" />
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
                                            <td class="auto-style216">
                                                <asp:Button ID="Button93" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button93_Click" onmouseout="this.style.backgroundColor='#333333'" onmouseover="this.style.backgroundColor='#006666'" Text="OTHERS" Width="320px" />
                                                <asp:GridView ID="gvInformation9" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="ProductOthers" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Visible="False" Width="100%">
                                                    <Columns>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox7" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" OnCheckedChanged="CheckBox7_CheckedChanged" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="25px" />
                                                            </ItemTemplate>
                                                            <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                            <ItemStyle CssClass="input" HorizontalAlign="Left" />
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
                                                        <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                        <FooterStyle ForeColor="#244242" />
                                                        <HeaderStyle HorizontalAlign="Right" />
                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="QUANTITY">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox45" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="130px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Right" />
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="P-PRICE">
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="TextBox46" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="150px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <HeaderStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Left" />
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
                                                <asp:SqlDataSource ID="ProductsBralirwa" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory)  ORDER BY productName">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="2" Name="idDrinkCategory" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:SqlDataSource ID="Number" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                <asp:SqlDataSource ID="ProductsSkol" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, PriceSales, quantityStock, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory)   ORDER BY productName" OnSelecting="ProductsSkol_Selecting">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:SqlDataSource ID="ProductOthers" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="ProductsSkol_Selecting" SelectCommand="SELECT idProduct, productName, PriceSales, quantityStock, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory)   ORDER BY productName">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="4" Name="idDrinkCategory" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="Button94" runat="server" BackColor="#006666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="60px" OnClick="Button94_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='Orange'" Text="VIEW" Width="319px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:SqlDataSource ID="Uncountable" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName] ,quantityStock, PriceSales,PricePurchase,idDrinkCategory FROM [BarProducts] WHERE ([idDrinkCategory] = @idDrinkCategory)   Order by [productName]">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:SqlDataSource ID="Uncountable0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales, PricePurchase, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0) ORDER BY productName">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style215">
                                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Panel ID="Panel3" runat="server">
                                    <asp:GridView ID="GridClientPayment3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="idRecord" AllowPaging="True" Enabled="False" Visible="False" PageSize="50" OnSelectedIndexChanged="GridClientPayment3_SelectedIndexChanged">
                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="Orange" ForeColor="Navy"  HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                        <Columns>
                                             <asp:BoundField DataField="idRecord" HeaderText="Sno" SortExpression="idRecord">
                                            <HeaderStyle Font-Bold="False" />
                                            <ItemStyle Font-Bold="False" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="dateRecorderd" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorderd" >
                                                                                                                  <HeaderStyle Font-Bold="False" />
                                                                                                                 <ItemStyle Font-Bold="False" />
                                                                                                                </asp:BoundField>
                                            <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                            <HeaderStyle Font-Bold="False" />
                                            <ItemStyle Font-Bold="False" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
                                             <FooterStyle Font-Size="X-Large" />
                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                            </asp:BoundField>
                                             <asp:BoundField DataField="userAdded" HeaderText="userAdded" SortExpression="userAdded">
                                            <HeaderStyle Font-Bold="False" />
                                            <ItemStyle Font-Bold="False" />
                                            </asp:BoundField>
                                             <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button41" runat="server" BackColor="Orange" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='Gray'" Text="Delete" Width="85px" BorderStyle="None" Height="32px" OnClick="Button41_Click" Font-Bold="True" />
                                                                                </ItemTemplate>                                                                                
                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="ServedDrink1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  [idRecord], [quantity], [price],[quantity]*[price] as Total, [dateRecorderd], [OperationDay], [operationMonth], [operationYear], [userAdded], [recordStatus], [productName], [idProduct] FROM [BarPurchaseView2] ORDER BY [idRecord] DESC" OnSelecting="ServedDrink1_Selecting"></asp:SqlDataSource>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" BackColor="#244242" Visible="False">
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox44" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="30px" placeholder="New Item" Width="449px"></asp:TextBox>
                            </td>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style5">
                                <asp:Button ID="Button79" runat="server" BackColor="#006666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="60px" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='Orange'" Text="Insert" Width="213px" OnClick="Button79_Click" />
                            </td>
                            <td class="auto-style5"></td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                
                                                                            <asp:DataList ID="DataList5" runat="server" DataSourceID="ServedDrinkGroup" Width="100%" Font-Names="Tahoma" Font-Size="Large">
                                                                                <ItemTemplate>
                                                                                    <asp:Panel ID="Panel102" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                                                        <table class="auto-style26">
                                                                                            <tr>
                                                                                                <td>
                                                                                                    <table class="auto-style26">
                                                                                                        <tr>
                                                                                                            <td align="center" style="font-weight: 700" valign="top">
                                                                                                                <asp:Label ID="Month" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Text='<%# Eval("operationMonth") %>'></asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td align="center" style="font-weight: 700" valign="top">
                                                                                                                <asp:Button ID="Button80" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="BAR" Width="320px" />
                                                                                                                <asp:GridView ID="GridClientPayment3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrinkMonth2" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="845px">
                                                                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                    <EditRowStyle BackColor="#999999" />
                                                                                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                    <Columns>
                                                                                                                        <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                                        <HeaderStyle Font-Bold="False" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                                                                                                        <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
                                                                                                                        <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                                        <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="userAdded" HeaderText="userAdded" SortExpression="userAdded">
                                                                                                                        <HeaderStyle Font-Bold="False" />
                                                                                                                        <ItemStyle Font-Bold="False" />
                                                                                                                        </asp:BoundField>
                                                                                                                    </Columns>
                                                                                                                </asp:GridView>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td style="font-weight: 700" valign="top">
                                                                                                                <table class="auto-style213">
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMonth2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity) AS quantity, price, SUM(quantity * price) AS Total, userAdded, idDrinkCategory, productName FROM BarPurchaseView2 WHERE (operationMonth = @operationMonth) AND (idDrinkCategory = '1') GROUP BY userAdded, idDrinkCategory, productName, price">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[price]) as Total FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and (idDrinkCategory='1')">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView17" runat="server" DataSourceID="ServedDrinkMontho0" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox11" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton5" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox12" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton5" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel103" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
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
                                                                                                                        <td colspan="4">
                                                                                                                            <asp:Button ID="Button81" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="RESTO" Width="320px" />
                                                                                                                            <asp:GridView ID="GridClientPayment4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrinkMonth3" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="845px">
                                                                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                <EditRowStyle BackColor="#999999" />
                                                                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                <Columns>
                                                                                                                                    <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="userAdded" HeaderText="userAdded" SortExpression="userAdded">
                                                                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                </Columns>
                                                                                                                            </asp:GridView>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMonth3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]) AS quantity,  price,SUM([quantity]*price) as Total,  [userAdded],idDrinkCategory, [productName] FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and (idDrinkCategory='2') GROUP BY [userAdded],idDrinkCategory, [productName],price ">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[price]) as Total FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and (idDrinkCategory='2')">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView18" runat="server" DataSourceID="ServedDrinkMontho1" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox13" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton6" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox14" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton6" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton6" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel104" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel6" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
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
                                                                                                                        <td colspan="4">
                                                                                                                            <asp:Button ID="Button82" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="KITCHEN" Width="320px" />
                                                                                                                            <asp:GridView ID="GridClientPayment5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrinkMonth4" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="845px">
                                                                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                <EditRowStyle BackColor="#999999" />
                                                                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                <Columns>
                                                                                                                                    <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="userAdded" HeaderText="userAdded" SortExpression="userAdded">
                                                                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                </Columns>
                                                                                                                            </asp:GridView>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[price]) as Total FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and  (idDrinkCategory='3')

">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMonth4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]) AS quantity,  price,SUM([quantity]*price) as Total,  [userAdded],idDrinkCategory, [productName] FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and (idDrinkCategory='3') GROUP BY [userAdded],idDrinkCategory, [productName],price ">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView19" runat="server" DataSourceID="ServedDrinkMontho2" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox15" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton7" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox16" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton7" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton7" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel105" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel7" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
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
                                                                                                                        <td colspan="4">
                                                                                                                            <asp:Button ID="Button83" runat="server" BackColor="#006666" BorderColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="45px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="OTHERS" Width="320px" />
                                                                                                                            <asp:GridView ID="GridClientPayment6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrinkMonth5" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#333333" GridLines="None" style="margin-right: 3px" Width="845px">
                                                                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                                                                <EditRowStyle BackColor="#999999" />
                                                                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                                                                                <Columns>
                                                                                                                                    <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                                                    <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                    <asp:BoundField DataField="userAdded" HeaderText="userAdded" SortExpression="userAdded">
                                                                                                                                    <HeaderStyle Font-Bold="False" />
                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                    </asp:BoundField>
                                                                                                                                </Columns>
                                                                                                                            </asp:GridView>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <td colspan="4">
                                                                                                                            <table class="auto-style4">
                                                                                                                                <tr>
                                                                                                                                    <td>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMontho4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[price]) as Total FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and  (idDrinkCategory='4')

">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                        <asp:SqlDataSource ID="ServedDrinkMonth5" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]) AS quantity,  price,SUM([quantity]*price) as Total,  [userAdded],idDrinkCategory, [productName] FROM [BarPurchaseView2] where  (operationMonth=@operationMonth) and (idDrinkCategory='4') GROUP BY [userAdded],idDrinkCategory, [productName],price ">
                                                                                                                                            <SelectParameters>
                                                                                                                                                <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                            </SelectParameters>
                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                    </td>
                                                                                                                                    <td align="right">
                                                                                                                                        <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Sub-Total</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                        <asp:FormView ID="FormView20" runat="server" DataSourceID="ServedDrinkMontho4" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                            <EditItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox17" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="UpdateButton8" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton8" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </EditItemTemplate>
                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                No:
                                                                                                                                                <asp:TextBox ID="NoTextBox18" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                <br />
                                                                                                                                                <asp:LinkButton ID="InsertButton8" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton8" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                            </InsertItemTemplate>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:Panel ID="Panel106" runat="server">
                                                                                                                                                    <table class="auto-style26">
                                                                                                                                                        <tr>
                                                                                                                                                            <td style="text-align: right">&nbsp;</td>
                                                                                                                                                            <td style="text-align: left">
                                                                                                                                                                <asp:Label ID="NoLabel8" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
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
                                                                                                                        <td >
                                                                                                                            <asp:SqlDataSource ID="ServedDrinkMontho3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM([quantity]*[price]) as Total FROM [BarPurchaseView2] where  (operationMonth=@operationMonth)">
                                                                                                                                <SelectParameters>
                                                                                                                                    <asp:ControlParameter ControlID="Month" Name="operationMonth" PropertyName="Text" />
                                                                                                                                </SelectParameters>
                                                                                                                            </asp:SqlDataSource>
                                                                                                                        </td>
                                                                                                                        <td>
                                                                                                                            &nbsp;</td>
                                                                                                                        <td align="right">
                                                                                                                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Larger" ForeColor="White">Grand-Total</asp:Label>
                                                                                                                        </td>
                                                                                                                        <td align="left">
                                                                                                                            <asp:FormView ID="FormView16" runat="server" DataSourceID="ServedDrinkMontho3" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
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
                                                                                                                                                    <asp:Label ID="NoLabel4" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
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
                                                                                </ItemTemplate>
                                                                            </asp:DataList>
                
            </td>
        </tr>
        <tr>
            <td>
                                    <asp:SqlDataSource ID="ServedDrinkGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT distinct [operationMonth] FROM [BarPurchaseView2] "></asp:SqlDataSource>
                                </td>
        </tr>
        <tr>
            <td>
                                                                                                                                                    <asp:SqlDataSource ID="KitchenProduct" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [ProductNames] FROM [KitchenProduct]"></asp:SqlDataSource>
                                                                                                                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                                                                                                    <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                                                                                                                                                    <asp:Label ID="RoleName" runat="server" Text="RoleName" Visible="False"></asp:Label>
                                                                                                                                                    </td>
        </tr>
    </table>
</asp:Content>

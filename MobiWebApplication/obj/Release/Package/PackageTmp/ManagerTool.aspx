    <%@ Page Title="" Language="C#" MasterPageFile="~/ManagerToolNew.Master" AutoEventWireup="true" CodeBehind="ManagerTool.aspx.cs" Inherits="MobiWebApplication.WebForm61" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerWea.aspx.cs" Inherits="MobiWebApplication.WebForm59" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 100%;
            margin-right: 0px;
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
            height: 43px;
        }
        .auto-style38 {
            width: 354px;
            height: 43px;
        }
        .auto-style39 {
            width: 417px;
        }
        .auto-style40 {
            height: 20px;
        }
        .auto-style41 {
            height: 52px;
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
        .auto-style389 {
            height: 21px;
        }
        .auto-style391 {
            width: 281px;
        }
        .auto-style393 {
            width: 237px;
        }
        .auto-style402 {
            width: 136px;
        }
        .auto-style403 {
            width: 135px;
            text-align: right;
        }
        .auto-style404 {
            height: 43px;
        }
        .style128
        {
            height: 20px;
        }
        .auto-style405 {
            height: 52px;
        }
        .auto-style407 {
            height: 248px;
        }
        .auto-style412 {
            height: 52px;
            }
        .auto-style414 {
            width: 7px;
        }
        .auto-style415 {
            width: 220px;
        }
        .auto-style416 {
            width: 96px;
        }
        .auto-style417 {
            width: 159px;
        }
        .auto-style45
        {
            width: 100%;
            height: 19px;
        }
        .auto-style238 {
            text-align: center;
        }
        .auto-style235 {
            height: 20px;
            text-align: center;
        }
        .auto-style418 {
            height: 12px;
            width: 329px;
        }
        .auto-style422 {
            height: 44px;
        }
        .auto-style423 {
            width: 237px;
            height: 44px;
        }
        .auto-style425 {
            height: 16px;
        }
        .auto-style427 {
            width: 136px;
            height: 44px;
        }
        .auto-style428 {
            width: 281px;
            height: 44px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     `&nbsp;&nbsp;<asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
     <asp:Panel ID="Panel108" runat="server">
         <asp:Panel ID="Panel106" runat="server" BackColor="Gray" BorderStyle="None" BorderWidth="5px" Width="100%">
             <table class="auto-style213">
                 <tr>
                     <td>
                         <table class="auto-style4">
                             <tr>
                                 <td>
                                     <asp:Button ID="Button85" runat="server" BackColor="SandyBrown" BorderStyle="None" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Expenses" Width="100%" OnClick="Button79_Click" CssClass="auto-style209" />
                                 </td>
                                 <td>
                                     <asp:Button ID="Button84" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button84_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Stock Request " Width="100%" />
                                 </td>
                                 <td>
                                     <asp:Button ID="Button86" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button86_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Kitchen Order" Width="100%" />
                                 </td>
                                 <td>
                                     <asp:Button ID="Button87" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button87_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Stock Update " Width="100%" />
                                 </td>
                                 <td>
                                     <asp:Button ID="Button102" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button102_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Served Vehicle" Width="100%" />
                                 </td>
                                 <td>
                                     <asp:Button ID="Button97" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button97_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Refresh" Width="100%" />
                                 </td>
                                 <td>
                                     <asp:Button ID="Button92" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="auto-style209" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="40px" OnClick="Button92_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Log Out" Width="100%" />
                                 </td>
                             </tr>
                         </table>
                     </td>
                 </tr>
             </table>
         </asp:Panel>
     </asp:Panel>
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
          <script>
              function doPrintKitchen() {
                  var prtContent = document.getElementById('<%= Drink2.ClientID %>');
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
          function doPrintINVO() {
              var prtContent = document.getElementById('<%= INVO.ClientID %>');
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
                                                    <asp:Panel ID="PanelCommand" runat="server" BackColor="#333333" BorderColor="#CCCCCC" BorderStyle="None" Width="100%">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td class="auto-style34">
                                                                    <asp:Panel ID="Panel89" runat="server" BackColor="DarkSlateGray" Width="100%">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <table class="auto-style4">
                                                                                        <tr>
                                                                                            <td valign="top">
                                                                                                <asp:Panel ID="PanelAll2" runat="server"  BorderStyle="None">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td style="text-align: center" class="auto-style425">
                                                                                                               
                                                                                                               
                                                                                                               
                                                                                                                &nbsp;</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                              
                                                                                                                <asp:Panel ID="Panel116" runat="server">
                                                                                                                    <asp:SqlDataSource ID="Command0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommand WHERE (Total &gt; 0) ORDER BY idCommand DESC"></asp:SqlDataSource>
                                                                                                                    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" Visible="False"></asp:TextBox>
                                                                                                                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                                                                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="Orange" Text="Label" Visible="False"></asp:Label>
                                                                                                                    <asp:SqlDataSource ID="ServedDrinkTotal0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM BarRequestViewStock WHERE (idCommand = @idCommand)">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    <asp:TextBox ID="TextBox45" runat="server" OnTextChanged="TextBox45_TextChanged" Visible="False">0</asp:TextBox>
                                                                                                                    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                                                                                                                    <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                                                                                                                    <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                                                                                                                    <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                                                                                                                    <asp:SqlDataSource ID="TableNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo FROM BarCommandB WHERE idCommand=@idCommand ">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    <asp:SqlDataSource ID="Remarks" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCommand], [Remarks] FROM [BarCommandB] WHERE ([idCommand] = @idCommand)">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                    <asp:SqlDataSource ID="ServedDrink0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,requestStatus, PriceSales, OperationDay, userAdded FROM BarRequestViewStock WHERE (idCommand = @idCommand) and (requestStatus='confirmed') GROUP BY idCommand,requestStatus, productName, PriceSales, OperationDay, userAdded">
                                                                                                                        <SelectParameters>
                                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                                        </SelectParameters>
                                                                                                                    </asp:SqlDataSource>
                                                                                                                </asp:Panel>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td style="text-align: center">
                                                                                                                <asp:Panel ID="Panel114" runat="server" BackColor="#244242">
                                                                                                                    <table class="auto-style4">
                                                                                                                        <tr>
                                                                                                                            <td colspan="2" style="text-align: center">
                                                                                                                                <table class="auto-style4">
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            <asp:Panel ID="PanelList2" runat="server" BorderStyle="None" Visible="False">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <table class="auto-style4">
                                                                                                                                                                <tr>
                                                                                                                                                                    <td align="center">
                                                                                                                                                                        <table class="auto-style4">
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="left">
                                                                                                                                                                                    <asp:Button ID="Button89" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button89_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="Back" Width="289px" />
                                                                                                                                                                                </td>
                                                                                                                                                                                <td align="right">
                                                                                                                                                                                    <asp:Button ID="Button75" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button75_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="Submit" Width="289px" />
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
                                                                                                                                                            <asp:Panel ID="Drinks0" runat="server" BackColor="#333333" BorderStyle="None">
                                                                                                                                                                <table class="auto-style4">
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td>
                                                                                                                                                                            <asp:Label ID="AlertLabel12" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">BAR</asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                                            <asp:SqlDataSource ID="ProductsSkol" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, PriceSales, quantityStock, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0)  ORDER BY productName">
                                                                                                                                                                                <SelectParameters>
                                                                                                                                                                                    <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                                                </SelectParameters>
                                                                                                                                                                            </asp:SqlDataSource>
                                                                                                                                                                            <asp:SqlDataSource ID="Number" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                                                                                                                                            <asp:Button ID="Button100" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="41px" OnClick="Button100_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Reset Stock" Width="163px" />
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td>
                                                                                                                                                                            <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation3_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation3_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
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
                                                                                                                                                                                    <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                                    <HeaderStyle HorizontalAlign="Right" />
                                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                                    <asp:BoundField DataField="quantityStock" HeaderText="QUANTITY" SortExpression="quantityStock">
                                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                                    <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                                    <asp:TemplateField>
                                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                                            <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                                                            <asp:Label ID="AlertLabel13" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">RESTO</asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                                            <asp:SqlDataSource ID="ProductsBralirwa" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0) ORDER BY productName">
                                                                                                                                                                                <SelectParameters>
                                                                                                                                                                                    <asp:Parameter DefaultValue="2" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                                                </SelectParameters>
                                                                                                                                                                            </asp:SqlDataSource>
                                                                                                                                                                            <asp:Button ID="Button99" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="41px" OnClick="Button99_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Reset Stock" Width="163px" />
                                                                                                                                                                            <asp:FormView ID="FormView39" runat="server" DataSourceID="ServedDrink2" EnableModelValidation="True" style="margin-left: 0px" Visible="False">
                                                                                                                                                                                <EditItemTemplate>
                                                                                                                                                                                    No:
                                                                                                                                                                                    <asp:TextBox ID="NoTextBox15" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                    <asp:LinkButton ID="UpdateButton35" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton35" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                </EditItemTemplate>
                                                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                                                    No:
                                                                                                                                                                                    <asp:TextBox ID="NoTextBox16" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                    <asp:LinkButton ID="InsertButton35" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton35" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                                                <ItemTemplate>
                                                                                                                                                                                    <asp:Panel ID="Panel120" runat="server">
                                                                                                                                                                                        <table class="auto-style26">
                                                                                                                                                                                            <tr>
                                                                                                                                                                                                <td style="text-align: right">&nbsp;</td>
                                                                                                                                                                                                <td style="text-align: left">
                                                                                                                                                                                                    <asp:Label ID="NoLabel7" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="Orange" Text='<%# Eval("userAdded") %>' />
                                                                                                                                                                                                </td>
                                                                                                                                                                                            </tr>
                                                                                                                                                                                        </table>
                                                                                                                                                                                    </asp:Panel>
                                                                                                                                                                                </ItemTemplate>
                                                                                                                                                                            </asp:FormView>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td>
                                                                                                                                                                            <asp:GridView ID="gvInformation6" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="ProductsBralirwa" EnableModelValidation="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation6_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" style="margin-left: 0px" Width="100%">
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
                                                                                                                                                                                    <asp:BoundField DataField="quantityStock" HeaderText="QUANTITY" SortExpression="quantityStock">
                                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                                    <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                                    <asp:TemplateField>
                                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                                            <asp:TextBox ID="TextBox8" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                                            <asp:Button ID="Button106" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="41px" OnClick="Button106_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Reset Stock" Width="163px" />
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td>
                                                                                                                                                                            <asp:SqlDataSource ID="Uncountable" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName] ,quantityStock, PriceSales,PricePurchase,idDrinkCategory FROM [BarProducts] WHERE ([idDrinkCategory] = @idDrinkCategory)   Order by [productName]">
                                                                                                                                                                                <SelectParameters>
                                                                                                                                                                                    <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                                                </SelectParameters>
                                                                                                                                                                            </asp:SqlDataSource>
                                                                                                                                                                            <asp:Label ID="AlertLabel81" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">OTHERS</asp:Label>
                                                                                                                                                                            <asp:SqlDataSource ID="Uncountable1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales, PricePurchase, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0) ORDER BY productName">
                                                                                                                                                                                <SelectParameters>
                                                                                                                                                                                    <asp:Parameter DefaultValue="4" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                                                </SelectParameters>
                                                                                                                                                                            </asp:SqlDataSource>
                                                                                                                                                                            <asp:SqlDataSource ID="Uncountable0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales, PricePurchase, idDrinkCategory FROM BarProducts2 WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  &gt; 0) ORDER BY productName">
                                                                                                                                                                                <SelectParameters>
                                                                                                                                                                                    <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                                                </SelectParameters>
                                                                                                                                                                            </asp:SqlDataSource>
                                                                                                                                                                            <table class="auto-style4">
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="text-align: left">
                                                                                                                                                                                        <asp:GridView ID="gvInformation18" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="Uncountable1" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation8_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation8_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
                                                                                                                                                                                            <Columns>
                                                                                                                                                                                                <asp:TemplateField>
                                                                                                                                                                                                    <ItemTemplate>
                                                                                                                                                                                                        <asp:CheckBox ID="CheckBox76" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="25px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="25px" />
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
                                                                                                                                                                                                <asp:BoundField DataField="quantityStock" HeaderText="QUANTITY" SortExpression="quantityStock">
                                                                                                                                                                                                <FooterStyle ForeColor="#244242" />
                                                                                                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                                                <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                                                                                </asp:BoundField>
                                                                                                                                                                                                <asp:TemplateField>
                                                                                                                                                                                                    <ItemTemplate>
                                                                                                                                                                                                        <asp:TextBox ID="TextBox51" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                                                                    <td style="text-align: center">
                                                                                                                                                                                        <asp:Label ID="AlertLabel29" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">KITCHEN</asp:Label>
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="text-align: left">
                                                                                                                                                                                        <asp:Button ID="Button98" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="41px" OnClick="Button98_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Silver'" Text="Reset Stock" Width="163px" />
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td>
                                                                                                                                                                                        <asp:GridView ID="gvInformation8" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="Uncountable0" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation8_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation8_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
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
                                                                                                                                                                                                <asp:BoundField DataField="quantityStock" HeaderText="QUANTITY" SortExpression="quantityStock">
                                                                                                                                                                                                <FooterStyle ForeColor="#244242" />
                                                                                                                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                                                <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                                                                                </asp:BoundField>
                                                                                                                                                                                                <asp:TemplateField>
                                                                                                                                                                                                    <ItemTemplate>
                                                                                                                                                                                                        <asp:TextBox ID="TextBox43" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                        <td align="left" >
                                                                                                                                            
                                                                                                                                            <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Large" ForeColor="White" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="20%">
                                                                                                                                            </asp:DropDownList>
                                                                                                                                            
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                             <asp:Panel ID="Panel18549" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel5Registration">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:Label ID="AlertLabel77" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Silver">SALES </asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:GridView ID="gvInformation11" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command1" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation11_RowDataBound" OnSelectedIndexChanged="gvInformation11_SelectedIndexChanged1" style="margin-left: 0px" Width="100%">
                                                                                                                                                                <Columns>
                                                                                                                                                                    <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
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
                                                                                                                                                                    <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="CreatedOn" SortExpression="Time">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="PaidOn" SortExpression="dateAdded">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
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
                                                                                                                                                                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:TemplateField>
                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                            <asp:Button ID="Button37" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button37_Click2" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="70px" />
                                                                                                                                                                        </ItemTemplate>
                                                                                                                                                                        <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                                                                        <ItemStyle CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                                                    </asp:TemplateField>
                                                                                                                                                                </Columns>
                                                                                                                                                                <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                                                                <SelectedRowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                                                                                                            </asp:GridView>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                            <asp:Panel ID="Panel18553" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel5Registration" Height="800px" ScrollBars="Vertical">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:Label ID="AlertLabel78" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Silver">SERVED VEHICLE</asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                                                                                                                                                                <Columns>
                                                                                                                                                                    <asp:BoundField DataField="dateRecorded" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="dateRecorded">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Name" HeaderText="Owner" SortExpression="Name">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Phone" HeaderText="Contact No" SortExpression="Phone">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Payment" HeaderText="Pay By" SortExpression="Payment">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                </Columns>
                                                                                                                                                                <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                                                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                                                                                                            </asp:GridView>
                                                                                                                                                            <asp:DropDownList ID="DropDownList20" runat="server" AutoPostBack="True" BackColor="#244242" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Large" ForeColor="White" Height="1px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="1px">
                                                                                                                                                            </asp:DropDownList>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                            <asp:Panel ID="Panel18554" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel5Registration">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:Label ID="AlertLabel72" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Silver">SALES ITEMS</asp:Label>
                                                                                                                                                            <asp:GridView ID="GridClientPayment3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ServedDrink1" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="100%">
                                                                                                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                                                                                                <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <EditRowStyle BackColor="#999999" />
                                                                                                                                                                <AlternatingRowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <Columns>
                                                                                                                                                                    <asp:TemplateField HeaderText="Sno">
                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                                                                                                        </ItemTemplate>
                                                                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:TemplateField>
                                                                                                                                                                    <asp:BoundField DataField="productName" HeaderText="Product" SortExpression="productName">
                                                                                                                                                                    <HeaderStyle Font-Bold="True" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
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
                                                                                                                                                        <td align="right">
                                                                                                                                                            <asp:FormView ID="FormView37" runat="server" DataSourceID="ServedDrinkTotal1" EnableModelValidation="True">
                                                                                                                                                                <EditItemTemplate>
                                                                                                                                                                    Payment:
                                                                                                                                                                    <asp:TextBox ID="PaymentTextBox5" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    <asp:LinkButton ID="UpdateButton32" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton32" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                </EditItemTemplate>
                                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                                    Payment:
                                                                                                                                                                    <asp:TextBox ID="PaymentTextBox6" runat="server" Text='<%# Bind("Payment") %>' />
                                                                                                                                                                    <br />
                                                                                                                                                                    <asp:LinkButton ID="InsertButton32" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton32" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                                <ItemTemplate>
                                                                                                                                                                    <asp:Panel ID="Panel112" runat="server">
                                                                                                                                                                        <table>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td style="text-align: right">
                                                                                                                                                                                    <asp:Label ID="Label78" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text="TOTAL:"></asp:Label>
                                                                                                                                                                                </td>
                                                                                                                                                                                <td style="text-align: left">
                                                                                                                                                                                    <asp:Label ID="PaymentLabel2" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("Total") %>' />
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
                                                                                                                <asp:Panel ID="Panel18550" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel5Registration" Height="800px" ScrollBars="Vertical">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:Label ID="AlertLabel82" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Silver">UNPAID </asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:GridView ID="gvInformation19" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command2" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation19_RowDataBound" OnSelectedIndexChanged="gvInformation11_SelectedIndexChanged1" style="margin-left: 0px" Width="100%" AllowPaging="True" PageSize="50">
                                                                                                                                                                <Columns>
                                                                                                                                                                    <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">
                                                                                                                                                                    <ItemStyle Font-Bold="False" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="CreatedOn" SortExpression="Time">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                     <asp:BoundField DataField="Paidd" HeaderText="Paid" SortExpression="Paidd">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Paid" HeaderText="Repaid" SortExpression="Paid">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:TemplateField>
                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                            <asp:Button ID="Button122" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button122_Click" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="70px" />
                                                                                                                                                                        </ItemTemplate>
                                                                                                                                                                        <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                                                                        <ItemStyle CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                                                    </asp:TemplateField>
                                                                                                                                                                </Columns>
                                                                                                                                                                <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <PagerStyle BackColor="#333333" Font-Size="XX-Large" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                                                <SelectedRowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                                                                                                            </asp:GridView>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            <asp:Panel ID="Panel18551" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="Panel5Registration">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:Label ID="AlertLabel83" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Silver">REPAID </asp:Label>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:GridView ID="gvInformation20" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command3" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation11_RowDataBound" OnSelectedIndexChanged="gvInformation11_SelectedIndexChanged1" style="margin-left: 0px" Width="100%" AllowPaging="True" PageSize="5">
                                                                                                                                                                <Columns>
                                                                                                                                                                    <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
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
                                                                                                                                                                    <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="CreatedOn" SortExpression="Time">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="PaidOn" SortExpression="dateAdded">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                     <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Left" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="PaidNew" HeaderText="Paid" SortExpression="PaidNew">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                                                                                                                                                                    <FooterStyle ForeColor="#244242" />
                                                                                                                                                                    <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                                                    <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                                    </asp:BoundField>
                                                                                                                                                                    <asp:TemplateField>
                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                            <asp:Button ID="Button123" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="26px" OnClick="Button123_Click" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="70px" />
                                                                                                                                                                        </ItemTemplate>
                                                                                                                                                                        <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                                                                        <ItemStyle CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                                                    </asp:TemplateField>
                                                                                                                                                                </Columns>
                                                                                                                                                                <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                              <PagerStyle BackColor="#333333" Font-Size="XX-Large" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                                                <SelectedRowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                                <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                                                                                <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                                                                                                            </asp:GridView>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            &nbsp;</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td valign="top" class="auto-style407">
                                                                                                                                            &nbsp;</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td valign="top" align="right">
                                                                                                                                            &nbsp;</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td align="right" style="text-align: center" valign="top">
                                                                                                                                            <asp:Panel ID="Drinks3" runat="server" BackColor="#333333" BorderStyle="None">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td style="text-align: center">
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
                                                                                                                                    <tr>
                                                                                                                                        <td align="right" valign="top">&nbsp;</td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td colspan="2">
                                                                                                                                &nbsp;</td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, [Repetition ], Price, PayedCash, Payment, Name, dateRecorded, code,Phone, userAdded FROM WebDetailsDataView WHERE (OperationDay = @OperationDay) ORDER BY dateRecorded DESC">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                                    </SelectParameters>
                                                                                                                                </asp:SqlDataSource>
                                                                                                                                <asp:SqlDataSource ID="ServedDrink2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT userAdded, requestStatus FROM BarRequestViewStock WHERE (OperationDay = @OperationDay) AND (requestStatus = 'confirmed') AND (idCommand = @idCommand)">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                                        <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" />
                                                                                                                                    </SelectParameters>
                                                                                                                                </asp:SqlDataSource>
                                                                                                                                <asp:SqlDataSource ID="ServedDrink1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay,requestStatus FROM BarRequestViewStock WHERE (OperationDay = @OperationDay) and (requestStatus='confirmed') GROUP BY  productName,requestStatus, PriceSales, OperationDay">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                                    </SelectParameters>
                                                                                                                                </asp:SqlDataSource>
                                                                                                                                <asp:SqlDataSource ID="ServedDrinkTotal1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  SUM(PriceSales * quantity) AS Total FROM BarRequestViewStock WHERE (OperationDay = @OperationDay) and (requestStatus='confirmed')">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                                                                                    </SelectParameters>
                                                                                                                                </asp:SqlDataSource>
                                                                                                                            </td>
                                                                                                                            <td>
                                                                                                                                &nbsp;</td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </asp:Panel>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Label ID="AlertLabel79" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Silver" Visible="False">Pending Sales</asp:Label>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:GridView ID="gvInformation4" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation4_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation4_SelectedIndexChanged" style="margin-left: 0px" Visible="False" Width="100%">
                                                                                                                    <Columns>
                                                                                                                        <asp:BoundField DataField="idCommand" HeaderText="Ref No" SortExpression="idCommand">
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
                                                                                                                                <asp:Button ID="Button40" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="26px" OnClick="Button40_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="100px" />
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
                                                                                                                <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="Gray" DataSourceID="COMMAND_ID0" DataTextField="idCommand" DataValueField="idCommand" ForeColor="Gray" Height="1px" Width="1px">
                                                                                                                </asp:DropDownList>
                                                                                                                <asp:SqlDataSource ID="idProduct0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                                                                                                                <asp:Panel ID="Drinks2" runat="server" BackColor="#333333" BorderStyle="None" Visible="False">
                                                                                                                    <table class="auto-style4">
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style40">
                                                                                                                                <table class="auto-style4">
                                                                                                                                    <tr>
                                                                                                                                        <td align="left" colspan="2" style="text-align: center">
                                                                                                                                            <asp:Panel ID="Drink2" runat="server" BackColor="White" Visible="False">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>&nbsp;</td>
                                                                                                                                                        <td valign="top">
                                                                                                                                                            <table class="auto-style4">
                                                                                                                                                                <tr>
                                                                                                                                                                    <td>
                                                                                                                                                                        <asp:Panel ID="Panel121" runat="server">
                                                                                                                                                                            <table style="width: 387px; margin-right: 0px;">
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                                        <asp:Label ID="Label92" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="MAÏSHA  CAFE  "></asp:Label>
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                                        <asp:FormView ID="FormView44" runat="server" DataSourceID="KitchenOrders1" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Width="100%" OnPageIndexChanging="FormView44_PageIndexChanging">
                                                                                                                                                                                            <EditItemTemplate>
                                                                                                                                                                                                dateAdded:
                                                                                                                                                                                                <asp:TextBox ID="dateAddedTextBox0" runat="server" Text='<%# Bind("dateAdded") %>' />
                                                                                                                                                                                                <br />
                                                                                                                                                                                                Time:
                                                                                                                                                                                                <asp:TextBox ID="TimeTextBox0" runat="server" Text='<%# Bind("Time") %>' />
                                                                                                                                                                                                <br />
                                                                                                                                                                                                <asp:LinkButton ID="UpdateButton37" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                                                &nbsp;<asp:LinkButton ID="UpdateCancelButton37" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                            </EditItemTemplate>
                                                                                                                                                                                            <InsertItemTemplate>
                                                                                                                                                                                                dateAdded:
                                                                                                                                                                                                <asp:TextBox ID="dateAddedTextBox1" runat="server" Text='<%# Bind("dateAdded") %>' />
                                                                                                                                                                                                <br />
                                                                                                                                                                                                Time:
                                                                                                                                                                                                <asp:TextBox ID="TimeTextBox1" runat="server" Text='<%# Bind("Time") %>' />
                                                                                                                                                                                                <br />
                                                                                                                                                                                                <asp:LinkButton ID="InsertButton37" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                                                &nbsp;<asp:LinkButton ID="InsertCancelButton37" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                            </InsertItemTemplate>
                                                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                                                Date:
                                                                                                                                                                                                <asp:Label ID="dateAddedLabel0" runat="server" Text='<%# Bind("dateAdded", "{0:d/MM/yyyy}") %>' />
                                                                                                                                                                                                <br />
                                                                                                                                                                                                Time:
                                                                                                                                                                                                <asp:Label ID="TimeLabel0" runat="server" Text='<%# Bind("Time", "{0:HH:mm}") %>' />
                                                                                                                                                                                                <br />
                                                                                                                                                                                            </ItemTemplate>
                                                                                                                                                                                        </asp:FormView>
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                                        <asp:Label ID="Label91" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" Text="00000000000000000000000000"></asp:Label>
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                                        <asp:Label ID="Label98" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Kitchen Order:"></asp:Label>
                                                                                                                                                                                        <asp:DropDownList ID="DropDownList16" runat="server" AutoPostBack="True" BackColor="White" CssClass="BUTTOMNUMBERR" DataSourceID="KitchenOrders0" DataTextField="idCommand" DataValueField="idCommand" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="Black" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged">
                                                                                                                                                                                        </asp:DropDownList>
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                                        <asp:GridView ID="gvInformation16" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="KitchenOrders" EnableModelValidation="True" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation5_RowDataBound" style="margin-left: 0px" Width="100%">
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
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                                <tr>
                                                                                                                                                                                    <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                                        <asp:Panel ID="Panel122" runat="server" Width="100%">
                                                                                                                                                                                            <table class="auto-style4">
                                                                                                                                                                                                <tr>
                                                                                                                                                                                                    <td class="auto-style414" style="border-style: dotted none dotted none; border-color: #000000 #FFFFFF #000000 #FFFFFF; text-align: right; border-top-width: thin; border-bottom-width: thin;">
                                                                                                                                                                                                        <table class="auto-style4">
                                                                                                                                                                                                            <tr>
                                                                                                                                                                                                                <td style="text-align: left">
                                                                                                                                                                                                                    <asp:Label ID="Label103" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Staff:"></asp:Label>
                                                                                                                                                                                                                </td>
                                                                                                                                                                                                                <td class="auto-style416" style="text-align: left">
                                                                                                                                                                                                                    <asp:Label ID="Names" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Names"></asp:Label>
                                                                                                                                                                                                                </td>
                                                                                                                                                                                                            </tr>
                                                                                                                                                                                                        </table>
                                                                                                                                                                                                    </td>
                                                                                                                                                                                                    <td style="border-width: thin; border-color: #000000 #FFFFFF #000000 #FFFFFF; text-align: left; border-top-style: dotted; border-bottom-style: dotted;">
                                                                                                                                                                                                        <table class="auto-style4">
                                                                                                                                                                                                            <tr>
                                                                                                                                                                                                                <td class="auto-style415" style="text-align: right">
                                                                                                                                                                                                                    <asp:Label ID="Label105" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" Text="000000000000000"></asp:Label>
                                                                                                                                                                                                                    <asp:Label ID="Label104" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Total:"></asp:Label>
                                                                                                                                                                                                                </td>
                                                                                                                                                                                                                <td style="text-align: right">
                                                                                                                                                                                                                    <asp:FormView ID="FormView40" runat="server" DataSourceID="ServedDrinkKitchenTotal" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                                                                                                        <EditItemTemplate>
                                                                                                                                                                                                                            No:
                                                                                                                                                                                                                            <asp:TextBox ID="NoTextBox17" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                                                            <br />
                                                                                                                                                                                                                            <asp:LinkButton ID="UpdateButton36" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton36" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                                                        </EditItemTemplate>
                                                                                                                                                                                                                        <InsertItemTemplate>
                                                                                                                                                                                                                            No:
                                                                                                                                                                                                                            <asp:TextBox ID="NoTextBox18" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                                                            <br />
                                                                                                                                                                                                                            <asp:LinkButton ID="InsertButton36" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton36" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                                                        </InsertItemTemplate>
                                                                                                                                                                                                                        <ItemTemplate>
                                                                                                                                                                                                                            <asp:Panel ID="Panel123" runat="server">
                                                                                                                                                                                                                                <table class="auto-style26">
                                                                                                                                                                                                                                    <tr>
                                                                                                                                                                                                                                        <td style="text-align: left">
                                                                                                                                                                                                                                            <asp:Label ID="NoLabel8" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Black" Text='<%# Eval("Total") %>' />
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
                                                                                                                                                                                        </asp:Panel>
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                            </table>
                                                                                                                                                                        </asp:Panel>
                                                                                                                                                                    </td>
                                                                                                                                                                </tr>
                                                                                                                                                                <tr>
                                                                                                                                                                    <td>
                                                                                                                                                                        <asp:SqlDataSource ID="KitchenOrders" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecord, idProduct, idCommand, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, PriceSales, OperationDay, userAdded FROM BarRequestViewFood WHERE idCommand=@idCommand  GROUP BY idCommand, idRecord, productName, idProduct, PriceSales, OperationDay, userAdded">
                                                                                                                                                                            <SelectParameters>
                                                                                                                                                                                <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" />
                                                                                                                                                                            </SelectParameters>
                                                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                                                        <asp:SqlDataSource ID="KitchenOrders1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [dateAdded], [Time] FROM [BarCommand] WHERE ([idCommand] = @idCommand)">
                                                                                                                                                                            <SelectParameters>
                                                                                                                                                                                <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" Type="Int32" />
                                                                                                                                                                            </SelectParameters>
                                                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                                                    </td>
                                                                                                                                                                </tr>
                                                                                                                                                                <tr>
                                                                                                                                                                    <td>
                                                                                                                                                                        <asp:SqlDataSource ID="KitchenOrders0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand FROM BarRequestViewFood WHERE idCommand=@idCommand  ">
                                                                                                                                                                            <SelectParameters>
                                                                                                                                                                                <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" />
                                                                                                                                                                            </SelectParameters>
                                                                                                                                                                        </asp:SqlDataSource>
                                                                                                                                                                    </td>
                                                                                                                                                                </tr>
                                                                                                                                                            </table>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </asp:Panel>
                                                                                                                                        </td>
                                                                                                                                        <td align="left" style="text-align: center">&nbsp;</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td align="left">
                                                                                                                                            <asp:Button ID="Button88" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="50px" OnClick="Button88_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="BACK" Width="200px" />
                                                                                                                                            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td align="right">
                                                                                                                                            <asp:Button ID="Button105" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="50px" OnClick="Button105_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Orange'" Text="View Stock Orders" Width="250px" />
                                                                                                                                            <asp:Button ID="Button104" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="50px" OnClick="Button104_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Orange'" Text="View Kitchen Orders" Width="250px" />
                                                                                                                                        </td>
                                                                                                                                        <td align="right">
                                                                                                                                            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                                                                                                            <asp:Button ID="Button91" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button91_Click" OnClientClick="doPrintKitchen()" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Orange'" Text="Submit " Width="200px" />
                                                                                                                                            <asp:Button ID="Button93" runat="server" BackColor="#666666" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button93_Click" onmouseout="this.style.backgroundColor='#666666'" onmouseover="this.style.backgroundColor='Orange'" Text="Submit" Width="200px" />
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                       
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:GridView ID="gvInformation17" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol1" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Visible="False" Width="100%">
                                                                                                                                    <Columns>
                                                                                                                                        <asp:TemplateField>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:CheckBox ID="CheckBox75" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="26px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
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
                                                                                                                                        <asp:BoundField DataField="quantityStock" HeaderText="QUANTITY" SortExpression="quantityStock">
                                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                                                                                        <ItemStyle Font-Bold="True" ForeColor="Orange" HorizontalAlign="Center" />
                                                                                                                                        </asp:BoundField>
                                                                                                                                        <asp:TemplateField>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:TextBox ID="TextBox50" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                <asp:GridView ID="gvInformation13" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Uncountable" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Width="100%" OnSelectedIndexChanged="gvInformation13_SelectedIndexChanged" ShowHeader="False">
                                                                                                                                    <Columns>
                                                                                                                                        <asp:TemplateField>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:CheckBox ID="CheckBox71" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="26px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
                                                                                                                                            </ItemTemplate>
                                                                                                                                            <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                                                                            <ItemStyle  CssClass="input" HorizontalAlign="Left" />
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
                                                                                                                                        <asp:BoundField DataField="PriceSales" HeaderText="PRICEE" SortExpression="PriceSales">
                                                                                                                                        <FooterStyle ForeColor="#244242" />
                                                                                                                                        <HeaderStyle HorizontalAlign="Right" />
                                                                                                                                        <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                                                                                        </asp:BoundField>
                                                                                                                                        <asp:TemplateField>
                                                                                                                                            <ItemTemplate>
                                                                                                                                                <asp:TextBox ID="TextBox44" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                <asp:Panel ID="MainStore" runat="server">
                                                                                                                                    <table class="auto-style4">
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:SqlDataSource ID="ProductsSkol1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idProduct, productName, quantityStock, PriceSales, PricePurchase, idDrinkCategory FROM BarProducts WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock &gt; 0) ORDER BY productName">
                                                                                                                                                    <SelectParameters>
                                                                                                                                                        <asp:Parameter DefaultValue="4" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                    </SelectParameters>
                                                                                                                                                </asp:SqlDataSource>
                                                                                                                                                <asp:Label ID="AlertLabel74" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">BAR</asp:Label>
                                                                                                                                                <asp:SqlDataSource ID="ProductsSkol0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idProduct, productName, quantityStock, PriceSales, PricePurchase, idDrinkCategory FROM BarProducts WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock &gt; 0) ORDER BY productName">
                                                                                                                                                    <SelectParameters>
                                                                                                                                                        <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                    </SelectParameters>
                                                                                                                                                </asp:SqlDataSource>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:GridView ID="gvInformation14" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol0" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Width="100%">
                                                                                                                                                    <Columns>
                                                                                                                                                        <asp:TemplateField>
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <asp:CheckBox ID="CheckBox72" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="26px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
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
                                                                                                                                                        <asp:BoundField DataField="quantityStock" SortExpression="quantityStock" HeaderText="QUANTITY">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <ItemStyle HorizontalAlign="Center" ForeColor="Orange" Font-Bold="True" />
                                                                                            </asp:BoundField>
                                                                                                                                                        <asp:TemplateField>
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <asp:TextBox ID="TextBox46" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                                <asp:Label ID="AlertLabel75" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">RESTO</asp:Label>
                                                                                                                                                <asp:SqlDataSource ID="ProductsBralirwa0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idProduct, productName, quantityStock, PriceSales FROM BarProducts WHERE (idDrinkCategory = @idDrinkCategory) AND (quantityStock  !=0) ORDER BY productName">
                                                                                                                                                    <SelectParameters>
                                                                                                                                                        <asp:Parameter DefaultValue="2" Name="idDrinkCategory" Type="Int32" />
                                                                                                                                                    </SelectParameters>
                                                                                                                                                </asp:SqlDataSource>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <asp:GridView ID="gvInformation15" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsBralirwa0" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Width="100%">
                                                                                                                                                    <Columns>
                                                                                                                                                        <asp:TemplateField>
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <asp:CheckBox ID="CheckBox73" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok1" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="26px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="26px" />
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
                                                                                                                                                        <asp:BoundField DataField="quantityStock" SortExpression="quantityStock" HeaderText="QUANTITY">
                                                                                            <FooterStyle ForeColor="#244242" />
                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                            <ItemStyle HorizontalAlign="Center" ForeColor="Orange" Font-Bold="True" />
                                                                                            </asp:BoundField>
                                                                                                                                                        <asp:TemplateField>
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <asp:TextBox ID="TextBox47" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="27px" placeholder="" Width="157px"></asp:TextBox>
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
                                                                                                                                    </table>
                                                                                                                                </asp:Panel>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:SqlDataSource ID="Expenses" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idExpenses], [amount], [dateAdded], [DetailsExpense], [OperationDay], [operationMonth], [operationYear], [dateOccur], [userAdded] FROM [ExpensesReports2] WHERE ([OperationDay] = @OperationDay)">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                                                                    </SelectParameters>
                                                                                                                                </asp:SqlDataSource>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </asp:Panel>
                                                                                                                <asp:Label ID="AlertLabel73" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Silver" Visible="False">Pending Requests from Seller</asp:Label>
                                                                                                                <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </asp:Panel>
                                                                                            </td>
                                                                                            <td valign="top" >
                                                                                                <asp:Panel ID="Panel110" runat="server">
                                                                                                    <table class="auto-style4">
                                                                                                       
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Panel ID="PanelPayment" runat="server" BackColor="#006666" Visible="False" Width="100%">
                                                                                                                    <table class="auto-style4">
                                                                                                                        <tr>
                                                                                                                            <td align="center">
                                                                                                                                <asp:Panel ID="Drinks1" runat="server" BackColor="White" Visible="False" Width="100%" Height="100%">
                                                                                                                                    <table class="auto-style4">
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                &nbsp;</td>
                                                                                                                                            <td valign="top">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:Panel ID="Panel115" runat="server">
                                                                                                                                                                <table style="width: 387px">
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:Label ID="Label83" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="MAÏSHA  CAFE  "></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:Label ID="Label81" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="MOMO Code:"></asp:Label>
                                                                                                                                                                            <asp:Label ID="Label82" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" Text="600500"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:Label ID="Label79" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Contact No:"></asp:Label>
                                                                                                                                                                            <asp:Label ID="Label80" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="0788341573"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:FormView ID="FormView45" runat="server" DataSourceID="KitchenOrders2" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Width="100%">
                                                                                                                                                                                <EditItemTemplate>
                                                                                                                                                                                    dateAdded:
                                                                                                                                                                                    <asp:TextBox ID="dateAddedTextBox2" runat="server" Text='<%# Bind("dateAdded") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                    Time:
                                                                                                                                                                                    <asp:TextBox ID="TimeTextBox2" runat="server" Text='<%# Bind("Time") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                    <asp:LinkButton ID="UpdateButton38" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton38" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                </EditItemTemplate>
                                                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                                                    dateAdded:
                                                                                                                                                                                    <asp:TextBox ID="dateAddedTextBox3" runat="server" Text='<%# Bind("dateAdded") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                    Time:
                                                                                                                                                                                    <asp:TextBox ID="TimeTextBox3" runat="server" Text='<%# Bind("Time") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                    <asp:LinkButton ID="InsertButton38" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton38" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                                                <ItemTemplate>
                                                                                                                                                                                    Date:
                                                                                                                                                                                    <asp:Label ID="dateAddedLabel1" runat="server" Text='<%# Bind("dateAdded", "{0:d/MM/yyyy}") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                    Time:
                                                                                                                                                                                    <asp:Label ID="TimeLabel1" runat="server" Text='<%# Bind("Time", "{0:HH:mm}") %>' />
                                                                                                                                                                                    <br />
                                                                                                                                                                                </ItemTemplate>
                                                                                                                                                                            </asp:FormView>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td  style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:Label ID="Label88" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" Text="00000000000000000000000000"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Pro. Invoice No:"></asp:Label>
                                                                                                                                                                            <asp:Label ID="InvoiceNo" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="InvoiceNo" Visible="False"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:GridView ID="gvInformation10" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" CellPadding="2" DataSourceID="ServedDrink0" EnableModelValidation="True" Font-Bold="False" Font-Names="Agency FB" Font-Size="Medium" ForeColor="Black" GridLines="None" OnRowDataBound="gvInformation5_RowDataBound" style="margin-left: 0px" Width="100%">
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
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                                            <asp:Panel ID="Panel118" runat="server" Width="100%">
                                                                                                                                                                                <table class="auto-style4">
                                                                                                                                                                                    <tr>
                                                                                                                                                                                        <td style="border-style: dotted none dotted none; border-color: #000000 #FFFFFF #000000 #FFFFFF; text-align: right; border-top-width: thin; border-bottom-width: thin;" class="auto-style414">
                                                                                                                                                                                            <asp:Label ID="Label87" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" Text="00000000000000000000000000"></asp:Label>
                                                                                                                                                                                            <asp:Label ID="Label86" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" Text="TOTAL:"></asp:Label>
                                                                                                                                                                                        </td>
                                                                                                                                                                                        <td style="border-width: thin; border-color: #000000 #FFFFFF #000000 #FFFFFF; text-align: left; border-top-style: dotted; border-bottom-style: dotted;">
                                                                                                                                                                                            <asp:FormView ID="FormView11" runat="server" DataSourceID="ServedDrinkTotal" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
                                                                                                                                                                                                <EditItemTemplate>
                                                                                                                                                                                                    No:
                                                                                                                                                                                                    <asp:TextBox ID="NoTextBox13" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                                    <br />
                                                                                                                                                                                                    <asp:LinkButton ID="UpdateButton34" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton34" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                                </EditItemTemplate>
                                                                                                                                                                                                <InsertItemTemplate>
                                                                                                                                                                                                    No:
                                                                                                                                                                                                    <asp:TextBox ID="NoTextBox14" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                                    <br />
                                                                                                                                                                                                    <asp:LinkButton ID="InsertButton34" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton34" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                                </InsertItemTemplate>
                                                                                                                                                                                                <ItemTemplate>
                                                                                                                                                                                                    <asp:Panel ID="Panel119" runat="server">
                                                                                                                                                                                                        <table class="auto-style26">
                                                                                                                                                                                                            <tr>
                                                                                                                                                                                                                <td style="text-align: left">
                                                                                                                                                                                                                    <asp:Label ID="NoLabel6" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Black" Text='<%# Eval("Total") %>' />
                                                                                                                                                                                                                </td>
                                                                                                                                                                                                            </tr>
                                                                                                                                                                                                        </table>
                                                                                                                                                                                                    </asp:Panel>
                                                                                                                                                                                                </ItemTemplate>
                                                                                                                                                                                            </asp:FormView>
                                                                                                                                                                                        </td>
                                                                                                                                                                                    </tr>
                                                                                                                                                                                    <tr>
                                                                                                                                                                                        <td colspan="2" style="border-top: thin dotted #000000; border-bottom: thin dotted #000000; text-align: center; border-color: #FFFFFF; border-style: none;">
                                                                                                                                                                                            <asp:Label ID="Label90" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" Text="00000000000000000000000000"></asp:Label>
                                                                                                                                                                                        </td>
                                                                                                                                                                                    </tr>
                                                                                                                                                                                    <tr>
                                                                                                                                                                                        <td colspan="2" style="border-top: thin dotted #000000; border-bottom: thin dotted #000000; text-align: center; border-color: #FFFFFF; border-style: none;">
                                                                                                                                                                                            <asp:Label ID="Label89" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" Text="Thank you for coming"></asp:Label>
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
                                                                                                                                                            &nbsp;</td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <asp:SqlDataSource ID="KitchenOrders2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [dateAdded], [Time] FROM [BarCommand] WHERE ([idCommand] = @idCommand)">
                                                                                                                                                                <SelectParameters>
                                                                                                                                                                    <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                                                                                </SelectParameters>
                                                                                                                                                            </asp:SqlDataSource>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                </table>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                    
                                                                                                                                </asp:Panel>
                                                                                                                                <asp:Panel ID="Panel117" runat="server" BackColor="White" Visible="False" Width="800px">
                                                                                                                                                            <asp:Button ID="Button69" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="43px" OnClientClick="doPrintInoice()" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="PRINT" Width="119px" Visible="False" />
                                                                                                                                                            </asp:Panel>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:Panel ID="Drinks" runat="server" BackColor="#006666" Visible="False" Width="100%">
                                                                                                                                    <table class="auto-style4">
                                                                                                                                        <tr>
                                                                                                                                            <td style="border-style: none; border-width: medium; border-color: #CCCCCC">
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td align="left">
                                                                                                                                                            <table>
                                                                                                                                                                <tr>
                                                                                                                                                                    <td align="right">
                                                                                                                                                                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange" Text="Label" Visible="False"></asp:Label>
                                                                                                                                                                    </td>
                                                                                                                                                                    <td align="left" class="auto-style403">
                                                                                                                                                                        &nbsp;</td>
                                                                                                                                                                </tr>
                                                                                                                                                            </table>
                                                                                                                                                        </td>
                                                                                                                                                        <td>
                                                                                                                                                            <table style="margin-left: 77px">
                                                                                                                                                                <tr>
                                                                                                                                                                    <td align="right" class="auto-style39">
                                                                                                                                                                        <asp:Label ID="AlertLabel26" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="White">Table No:</asp:Label>
                                                                                                                                                                    </td>
                                                                                                                                                                    <td align="left">
                                                                                                                                                                        <asp:FormView ID="FormView16" runat="server" DataSourceID="TableNo" EnableModelValidation="True" Height="30px" style="margin-left: 0px">
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
                                                                                                                                                                                                <asp:Label ID="NoLabel4" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("TableeNo") %>' />
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
                                                                                                                                                <asp:GridView ID="gvInformation5" runat="server" AutoGenerateColumns="False" BackColor="#006666" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="1" EnableModelValidation="True" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Small" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" OnSelectedIndexChanged="gvInformation5_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
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
                                                                                                                                                        <ItemStyle Font-Size="XX-Small" ForeColor="#006666" HorizontalAlign="Left" />
                                                                                                                                                        </asp:BoundField>
                                                                                                                                                        <asp:TemplateField>
                                                                                                                                                            <ItemTemplate>
                                                                                                                                                                <asp:CheckBox ID="CheckBox70" runat="server"  CausesValidation="True" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" Font-Size="Small" />
                                                                                                                                                            </ItemTemplate>
                                                                                                                                                            <HeaderStyle BackColor="#244242" ForeColor="Navy" />
                                                                                                                                                            <ItemStyle BackColor="#006666" CssClass="input" HorizontalAlign="Left" />
                                                                                                                                                        </asp:TemplateField>
                                                                                                                                                        <asp:BoundField DataField="idRecord" SortExpression="idRecord">
                                                                                                                                                        <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                        <ItemStyle Font-Size="XX-Small" ForeColor="#006666" HorizontalAlign="Left" />
                                                                                                                                                        </asp:BoundField>
                                                                                                                                                        <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                                                                                                        <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                                                                        <HeaderStyle HorizontalAlign="Left" />
                                                                                                                                                        <ItemStyle Font-Size="XX-Small" ForeColor="#006666" HorizontalAlign="Left" />
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
                                                                                                                                                                <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="Orange" Font-Bold="False" ForeColor="Navy" OnCheckedChanged="CheckBox12_CheckedChanged" Text="Cancel" Width="90px" style="height: 20px" />
                                                                                                                                                            </ItemTemplate>
                                                                                                                                                            <FooterStyle BackColor="#244242" />
                                                                                                                                                            <HeaderStyle BackColor="#244242" />
                                                                                                                                                            <ItemStyle  Font-Bold="False" HorizontalAlign="Center" />
                                                                                                                                                        </asp:TemplateField>
                                                                                                                                                    </Columns>
                                                                                                                                                    <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                    <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                                                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                                                                    <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                                                                                    <AlternatingRowStyle BackColor="#006666" ForeColor="White" />
                                                                                                                                                </asp:GridView>
                                                                                                                                                <asp:Panel ID="Panel90" runat="server" BackColor="#006666">
                                                                                                                                                    <table class="auto-style4">
                                                                                                                                                        <tr>
                                                                                                                                                            <td align="center" class="auto-style412" style="border-style: none; border-width: medium; border-color: #CCCCCC" colspan="2">
                                                                                                                                                                <asp:FormView ID="FormView10" runat="server" DataSourceID="ServedDrinkTotal" EnableModelValidation="True" Font-Names="Bahnschrift" style="margin-left: 0px">
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
                                                                                                                                                                                    <td style="text-align: right">
                                                                                                                                                                                        <asp:Label ID="AlertLabel17" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Total:</asp:Label>
                                                                                                                                                                                    </td>
                                                                                                                                                                                    <td style="text-align: left">
                                                                                                                                                                                        <asp:Label ID="NoLabel" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="Orange" Text='<%# Bind("Total","{0:0,000}") %>' />
                                                                                                                                                                                    </td>
                                                                                                                                                                                </tr>
                                                                                                                                                                            </table>
                                                                                                                                                                        </asp:Panel>
                                                                                                                                                                    </ItemTemplate>
                                                                                                                                                                </asp:FormView>
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                        <tr>
                                                                                                                                                            <td align="left" class="auto-style405" style="border-style: none; border-width: medium; border-color: #CCCCCC" colspan="2">
                                                                                                                                                                <asp:Panel ID="Panel98" runat="server" BackColor="#244242">
                                                                                                                                                                    <table class="auto-style4">
                                                                                                                                                                        <tr>
                                                                                                                                                                            <td align="left" class="auto-style38">
                                                                                                                                                                                <asp:FormView ID="FormView15" runat="server" DataSourceID="RemainOnPay" EnableModelValidation="True" style="margin-left: 0px" Width="100%">
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
                                                                                                                                                                                                        <asp:Label ID="AlertLabel23" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="#CCCCCC">Remain:</asp:Label>
                                                                                                                                                                                                    </td>
                                                                                                                                                                                                    <td style="text-align: left">
                                                                                                                                                                                                        <asp:Label ID="NoLabel3" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="Orange" Text='<%# Bind("Balance","{0:0,000}") %>' />
                                                                                                                                                                                                    </td>
                                                                                                                                                                                                </tr>
                                                                                                                                                                                            </table>
                                                                                                                                                                                        </asp:Panel>
                                                                                                                                                                                    </ItemTemplate>
                                                                                                                                                                                </asp:FormView>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td align="center" class="auto-style37">
                                                                                                                                                                                <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="Orange" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="Orange" Height="43px" placeholder="AMOUNT" Width="150px" Font-Size="X-Large"></asp:TextBox>
                                                                                                                                                                                <asp:TextBox ID="TextBox53" runat="server" BackColor="#244242" BorderColor="Orange" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Orange" Height="43px" placeholder="CREDIT" Visible="False" Width="150px"></asp:TextBox>
                                                                                                                                                                            </td>
                                                                                                                                                                            <td align="right" class="auto-style404">
                                                                                                                                                                                <asp:Button ID="Button73" runat="server" BackColor="Orange" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="46px" OnClick="Button73_Click1" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="SAVE " Width="150px" OnClientClick="return confirm ('Are you sure you want to CONFIRM PAYMENT ?');" />
                                                                                                                                                                                <asp:Button ID="Button121" runat="server" BackColor="Orange" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="X-Large" ForeColor="Navy" Height="46px" OnClick="Button121_Click1" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="REPAY" Width="160px" OnClientClick="return confirm ('Are you sure you want to CONFIRM CREDIT PAYMENT ?');" />
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                                                                                                        <tr>
                                                                                                                                                                            <td colspan="3">
                                                                                                                                                                                <asp:FormView ID="FormView38" runat="server" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" DataSourceID="Remarks" EnableModelValidation="True" Height="30px" style="margin-left: 0px" Visible="False" Width="100%">
                                                                                                                                                                                    <EditItemTemplate>
                                                                                                                                                                                        No:
                                                                                                                                                                                        <asp:TextBox ID="NoTextBox11" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                        <br />
                                                                                                                                                                                        <asp:LinkButton ID="UpdateButton33" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                                                                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton33" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                    </EditItemTemplate>
                                                                                                                                                                                    <InsertItemTemplate>
                                                                                                                                                                                        No:
                                                                                                                                                                                        <asp:TextBox ID="NoTextBox12" runat="server" Text='<%# Bind("Total") %>' />
                                                                                                                                                                                        <br />
                                                                                                                                                                                        <asp:LinkButton ID="InsertButton33" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                                                                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton33" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                                                                                                    </InsertItemTemplate>
                                                                                                                                                                                    <ItemTemplate>
                                                                                                                                                                                        <asp:Panel ID="Panel113" runat="server">
                                                                                                                                                                                            <table class="auto-style26">
                                                                                                                                                                                                <tr>
                                                                                                                                                                                                    <td style="text-align: right">&nbsp;</td>
                                                                                                                                                                                                    <td style="text-align: left">
                                                                                                                                                                                                        <asp:Label ID="NoLabel5" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Text='<%# Eval("Remarks") %>' />
                                                                                                                                                                                                    </td>
                                                                                                                                                                                                </tr>
                                                                                                                                                                                            </table>
                                                                                                                                                                                        </asp:Panel>
                                                                                                                                                                                    </ItemTemplate>
                                                                                                                                                                                </asp:FormView>
                                                                                                                                                                                <asp:Label ID="AlertLabel0" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Orange">AlertLabel0</asp:Label>
                                                                                                                                                                                <asp:Label ID="AlertLabel1" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White">AlertLabel1</asp:Label>
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                                                                                                    </table>
                                                                                                                                                                </asp:Panel>
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                        <tr>
                                                                                                                                                            <td align="left" class="auto-style412" style="border-style: none; border-width: medium; border-color: #CCCCCC">
                                                                                                                                                                <asp:TextBox ID="TextBox48" runat="server" BackColor="#FFCCFF" BorderColor="#FFCCFF" BorderStyle="None" CssClass="BUTTOM" Font-Bold="False" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" Height="23px" placeholder="Add Remarks" TextMode="MultiLine" Visible="False" Width="76%"></asp:TextBox>
                                                                                                                                                                <asp:TextBox ID="TextBox52" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Bahnschrift" ForeColor="Orange" Height="43px" placeholder="CREDIT AMOUNT" Visible="False" Width="242px" Font-Size="X-Large"></asp:TextBox>
                                                                                                                                                            </td>
                                                                                                                                                            <td align="center" class="auto-style41" style="border-style: none; border-top-width: medium; border-color: #CCCCCC">
                                                                                                                                                                <asp:Button ID="Button95" runat="server" BackColor="Orange" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="46px" OnClick="Button95_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Add Remark" Visible="False" Width="100%" />
                                                                                                                                                                <asp:Button ID="Button108" runat="server" BackColor="Orange" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="46px" OnClick="Button108_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="Add Credit" Visible="False" Width="100%" />
                                                                                                                                                            </td>
                                                                                                                                                        </tr>
                                                                                                                                                    </table>
                                                                                                                                                </asp:Panel>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                        <tr>
                                                                                                                                            <td>
                                                                                                                                                <table class="auto-style4">
                                                                                                                                                    <tr>
                                                                                                                                                        <td align="center">
                                                                                                                                                            <asp:Button ID="Button74" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button74_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="CONFIRM" Width="107px" />
                                                                                                                                                            <asp:Button ID="Button70" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button70_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="ADDITION" Width="115px" />
                                                                                                                                                            <asp:Button ID="Button71" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button71_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="INVOICE" Visible="False" Width="96px" OnClientClick="doPrintInoice()" />
                                                                                                                                                            <asp:Button ID="Button72" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button72_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="HIDE " Visible="False" Width="95px" />
                                                                                                                                                            <asp:Button ID="Button90" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button90_Click2" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="EDIT" Visible="False" Width="82px" />
                                                                                                                                                            <asp:Button ID="Button96" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button96_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="REMARKS" Width="130px" />
                                                                                                                                                            <asp:Button ID="Button107" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Height="40px" OnClick="Button107_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="ADD CREDIT" Width="130px" Visible="False" />
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
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
                                                                                                                <asp:Panel ID="Expensess" runat="server" BackColor="#006666" Visible="False" Width="100%">
                                                                                                                    <table class="auto-style4">
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:Label ID="AlertLabel32" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White"></asp:Label>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td style="text-align: center">
                                                                                                                                <asp:TextBox ID="TextBox41" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="30px" placeholder="AMOUNT" Width="449px" OnTextChanged="TextBox41_TextChanged"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td style="text-align: center">
                                                                                                                                <asp:TextBox ID="TextBox42" runat="server" BackColor="#006666" BorderColor="White" BorderStyle="Solid" CssClass="BUTTOM" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="114px" placeholder="REMARK" TextMode="MultiLine" Width="449px"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td style="text-align: center">
                                                                                                                                <asp:Button ID="Button78" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button78_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="Submit" Width="289px" />
                                                                                                                                <asp:Button ID="Button80" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="50px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="Back" Width="181px" />
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>
                                                                                                                                <asp:GridView ID="gvInformation12" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Expenses" EnableModelValidation="True" Font-Bold="False" Font-Names="Bahnschrift" Font-Size="Medium" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation4_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation4_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
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
                                                                                                                                        <ItemStyle Font-Bold="False"  HorizontalAlign="Left" />
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
                                                                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [dateAdded] FROM [BarCommand] WHERE ([OperationDay] = @OperationDay)">
                                                                                                    <SelectParameters>
                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                                    </SelectParameters>
                                                                                                </asp:SqlDataSource>
                                                                                            </td>
                                                                                            <td>&nbsp;</td>
                                                                                        </tr>
                                                                                    </table>
                                                                                    </td>
                                                                            </tr>
                                                                        </table>
                                                                        <br />
                                                                    </asp:Panel>                                                                   
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style34">
                                                                    <asp:SqlDataSource ID="Number0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                                    <asp:Label ID="AlertLabel30" runat="server" CssClass="FONTSIZER" Font-Bold="True" Font-Names="Times New Roman" ForeColor="White"></asp:Label>
                                                                    <asp:SqlDataSource ID="SqlDataSourceDATE" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [dateRecorded] FROM [WebDetailsDataView] WHERE ([OperationDay] = @OperationDay)">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="ServedDrink" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestViewStock WHERE (idCommand = @idCommand)  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="ServedDrinkKitchenTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM BarRequestViewFood WHERE (idCommand = @idCommand)">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList1" Name="idCommand" PropertyName="SelectedValue" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="ServedDrinkTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM BarRequestViewStock WHERE (idCommand = @idCommand)">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="RemainOnPay" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Total - Paid AS Balance FROM BarCommand WHERE  idCommand=@idCommand  AND OperationDay=@OperationDay  AND (Total &gt; 0) ">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" />
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="DailySummaryBarResto" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT TOP (1) idDayCloser, DSalesAmount, DpaidLast, DPaidAmount, DExpenses, DUnpaid, OperationDay, DBalance FROM BarDailyClose WHERE (OperationDay = @OperationDay) ORDER BY idDayCloser DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="Products" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="RemainOnPay0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Total - Paid AS Balance FROM BarCommand WHERE  idCommand=@idCommand  AND OperationDay=@OperationDay  AND (Total &gt; 0) ">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label128" Name="idCommand" PropertyName="Text" />
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="Command" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idCommand,TableeNo, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandB WHERE OperationDay=@OperationDay AND (Total &gt; 0) and requestStatus='unconfirmed' ORDER BY idCommand DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="Command1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo,dateAdded, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandB WHERE  OperationDay=@OperationDay  AND (Total &gt; 0) and requestStatus='confirmed' ORDER BY idCommand DESC" OnSelecting="Command1_Selecting">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:Label ID="Label128" runat="server" Text="1000" Visible="False"></asp:Label>
                                                                    <asp:SqlDataSource ID="Command2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo,dateAdded, userAdded,Remarks, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth,Paidd, operationYear FROM BarCommandD WHERE  OperationDay != @OperationDay  AND (Total &gt; 0) and requestStatus='confirmed' AND Total != Paid AND Total != Paidd AND Total !=Paid + Paidd ORDER BY idCommand DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList20" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="Command3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,TableeNo,dateAdded, userAdded,Remarks, status, Time, Total, Paid, Paid + Paidd as PaidNew, operationMonth,Paidd,operationYear FROM BarCommandD WHERE  OperationDay != @OperationDay  AND (Total &gt; 0) and requestStatus='confirmed'  AND  Total =Paid + Paidd  ORDER BY idCommand DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList20" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                                <caption>
                                                                    <asp:Panel ID="Panel18552" runat="server" BackColor="#244242">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <asp:Panel ID="Panel4" runat="server" BackColor="#244242" Height="100%" Width="400px" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td colspan="2">
                                                                                                    <asp:Panel ID="Panel18548" runat="server" Width="130px">
                                                                                                                                <table class="auto-style242" >
                                                                                                                                    <tr>
                                                                                                                                        <td class="auto-style260">
                                                                                                                                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/Image/user-244.png" Width="40px" />
                                                                                                                                        </td>
                                                                                                                                        <td align="left">
                                                                                                                                            <asp:Label ID="Label129" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White" Text="Label"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td align="left">
                                                                                                                                            <asp:Button ID="Button101" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="43px" OnClick="Button101_Click" OnClientClick="doPrintKitchen()" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='#006666'" Text="PRINT" Visible="False" Width="119px" />
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </asp:Panel>
                                                                                                    </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="auto-style404" align="right" >
                                                                                                    <asp:TextBox ID="TextBox10" runat="server" BackColor="White" BorderStyle="None" ForeColor="Navy" Height="28px" placeholder="Table No" style="text-align: center" Width="180px" CssClass="BUTTOM"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="auto-style404" align="left" >
                                                                                                    <asp:Button ID="Button83" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="False" Font-Names="Tahoma" Font-Size="Large" ForeColor="Navy" Height="45px" OnClick="Button83_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="New Order" Width="120px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                                <td>
                                                                                    <asp:FormView ID="FormView35" runat="server" BackColor="#244242" BorderColor="#666666" BorderStyle="Solid" BorderWidth="1px" DataSourceID="DailySummaryBarResto" EnableModelValidation="True" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="White" style="text-align: left; margin-right: 0px" Width="100%" Height="100%">
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
                                                                                                                    <td align="center" class="auto-style389">
                                                                                                                        <asp:Panel ID="Panel105" runat="server">
                                                                                                                            <table class="auto-style339">
                                                                                                                                <tr>
                                                                                                                                    <td align="right" class="auto-style427">
                                                                                                                                        <asp:Label ID="AlertLabel48" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">SalesAmount:</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td align="left" class="auto-style428">
                                                                                                                                        <asp:Label ID="AlertLabel49" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("DSalesAmount", "{0:0,000}") %>'></asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td class="auto-style422" style="text-align: Right">
                                                                                                                                        <asp:Label ID="AlertLabel50" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Paid:</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td class="auto-style422" style="text-align: left">
                                                                                                                                        <asp:Label ID="AlertLabel51" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("DPaidAmount", "{0:0,000}") %>' />
                                                                                                                                    </td>
                                                                                                                                    <td align="right" class="auto-style423">
                                                                                                                                        <asp:Label ID="AlertLabel63" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Repay:</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td align="left" class="auto-style422">
                                                                                                                                        <asp:Label ID="AlertLabel62" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("DpaidLast", "{0:0,000}") %>' />
                                                                                                                                    </td>
                                                                                                                                    <td align="left" class="auto-style422" style="text-align: center"></td>
                                                                                                                                </tr>
                                                                                                                                <tr>
                                                                                                                                    <td align="right" class="auto-style402">
                                                                                                                                        <asp:Label ID="AlertLabel56" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Unpaid:</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td align="left" class="auto-style391">
                                                                                                                                        <asp:Label ID="AlertLabel57" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("DUnpaid", "{0:0,000}") %>' />
                                                                                                                                    </td>
                                                                                                                                    <td style="text-align: right">
                                                                                                                                        <asp:Label ID="AlertLabel58" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Expenses:</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td style="text-align: left">
                                                                                                                                        <asp:Label ID="AlertLabel59" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("DExpenses", "{0:0,000}") %>' />
                                                                                                                                    </td>
                                                                                                                                    <td align="right" class="auto-style393">
                                                                                                                                        <asp:Label ID="AlertLabel64" runat="server" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="Large" ForeColor="White">Balance:</asp:Label>
                                                                                                                                    </td>
                                                                                                                                    <td align="left">
                                                                                                                                        <asp:Label ID="AlertLabel61" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Bahnschrift" Font-Size="XX-Large" ForeColor="Orange" Text='<%# Eval("DBalance", "{0:0,000}") %>' />
                                                                                                                                    </td>
                                                                                                                                    <td align="left" style="text-align: center">&nbsp;</td>
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
                                                                                        </ItemTemplate>
                                                                                    </asp:FormView>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                    &nbsp;</caption>
                                                               
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM BarCommand WHERE (idCommand = @idCommand) ORDER BY dateAdded DESC">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="Label128" Name="idCommand" PropertyName="Text" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left">
                                                    <asp:Panel ID="Panel124" runat="server" Visible="False">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td class="auto-style232" colspan="8">
                                                                                                <asp:Panel ID="invoice" align="center" runat="server" BackColor="White">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:Panel ID="INVO" align="center" runat="server">
                                                                                                                    <table class="auto-style4">
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                            <td valign="top">
                                                                                                                                <table align="center" class="auto-style4">
                                                                                                                                    <tr>
                                                                                                                                        <td>
                                                                                                                                            <asp:Panel ID="Panel126" align="center" runat="server">
                                                                                                                                                <table style="width: 200px" align="left">
                                                                                                                                                    <tr>
                                                                                                                                                        <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                            <asp:Panel ID="Panel127" runat="server" Height="111px" Width="100%">
                                                                                                                                                                <table class="auto-style4" align="center">
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-bottom: thin dotted #FFFFFF; border-left-color: #FFFFFF;text-align: center; border-left-width: 0px; border-right-color: #FFFFFF; border-right-width: 0px; border-top-color: #FFFFFF; border-top-width: 0px;">
                                                                                                                                                                            <asp:Label ID="Label122" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="MOBICARWASH LTD"></asp:Label>
                                                                                                                                                                            &nbsp;</td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-bottom: thin dotted #FFFFFF; border-left-color: #FFFFFF;text-align: center; border-left-width: 0px; border-right-color: #FFFFFF; border-right-width: 0px; border-top-color: #FFFFFF; border-top-width: 0px;">
                                                                                                                                                                            <asp:Label ID="Label123" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Tin No:"></asp:Label>
                                                                                                                                                                            <asp:Label ID="Label124" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="107048761"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-bottom: thin dotted #FFFFFF; border-left-color: #FFFFFF;text-align: center; border-left-width: 0px; border-right-color: #FFFFFF; border-right-width: 0px; border-top-color: #FFFFFF; border-top-width: 0px;">
                                                                                                                                                                            <asp:Label ID="Label125" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:"></asp:Label>
                                                                                                                                                                            <asp:Label ID="Label126" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="0788341573"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td style="border-bottom: thin dotted #FFFFFF; border-left-color: #FFFFFF;text-align: center; border-left-width: 0px; border-right-color: #FFFFFF; border-right-width: 0px; border-top-color: #FFFFFF; border-top-width: 0px;">
                                                                                                                                                                            <asp:Label ID="Label121" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="MOMO Code:"></asp:Label>
                                                                                                                                                                            <asp:Label ID="Label120" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="700600"></asp:Label>
                                                                                                                                                                        </td>
                                                                                                                                                                    </tr>
                                                                                                                                                                    <tr>
                                                                                                                                                                        <td class="auto-style416" style="border-color: #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">&nbsp;</td>
                                                                                                                                                                    </tr>
                                                                                                                                                                </table>
                                                                                                                                                            </asp:Panel>
                                                                                                                                                        </td>
                                                                                                                                                    </tr>
                                                                                                                                                    <tr>
                                                                                                                                                        <td style="border-color: #FFFFFF #FFFFFF #000000 #FFFFFF; border-width: 0px 0px thin 0px; text-align: center; border-bottom-style: dotted;">
                                                                                                                                                            <table class="auto-style4">
                                                                                                                                                                <tr>
                                                                                                                                                                    <td class="auto-style417" style="text-align: right">
                                                                                                                                                                        <asp:Label ID="Label52" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="Black" Text="Service Order:"></asp:Label>
                                                                                                                                                                    </td>
                                                                                                                                                                    <td style="text-align: left">
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
                                                                                                                                                        <td style="border-bottom: thin dotted #000000; border-left-color: #FFFFFF; border-left-width: 0px; border-right-color: #FFFFFF; border-right-width: 0px; border-top-color: #FFFFFF; border-top-width: 0px;">
                                                                                                                                                            <asp:FormView ID="FormView42" runat="server" DataSourceID="SqlDataSReceivedVehicle2" EnableModelValidation="True" Font-Bold="True" Font-Size="Medium" style="text-align: center" Width="100%">
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
                                                                                                                                                                                    <asp:Label ID="Label43" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Plate No:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="PlateNumberLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("PlateNumber") %>' />
                                                                                                                                                                                </td>
                                                                                                                                                                            </tr>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="center" class="auto-style418">
                                                                                                                                                                                    <asp:Label ID="Label44" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Vehicle:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="brandLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("brand") %>' />
                                                                                                                                                                                </td>
                                                                                                                                                                            </tr>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                                                    <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Category:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="manufactureNameLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("manufactureName") %>' />
                                                                                                                                                                                </td>
                                                                                                                                                                            </tr>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="center" class="auto-style235">
                                                                                                                                                                                    <asp:Label ID="Label46" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Client:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="NameLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Name") %>' />
                                                                                                                                                                                </td>
                                                                                                                                                                            </tr>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                                                    <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Contact No:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="PhoneLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("Phone") %>' />
                                                                                                                                                                                </td>
                                                                                                                                                                            </tr>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                                                    <asp:Label ID="Label48" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Service:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="NameServiceLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("NameService") %>' />
                                                                                                                                                                                </td>
                                                                                                                                                                            </tr>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                                                    <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Staff:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="Washer" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("StaffName") %>' />
                                                                                                                                                                                </td>
                                                                                                                                                                            </tr>
                                                                                                                                                                            <tr>
                                                                                                                                                                                <td align="center" class="auto-style238">
                                                                                                                                                                                    <asp:Label ID="Label50" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text="Date:"></asp:Label>
                                                                                                                                                                                    <asp:Label ID="dateRecordedLabel" runat="server"  Font-Bold="True" Font-Names="Agency FB" Font-Size="Medium" Text='<%# Bind("dateRecorded") %>' />
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
                                                                                                                                            </asp:Panel>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:Label ID="Label112" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" ForeColor="White" Text="00000000000000000000000000"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: left">
                                                                                                                                            <asp:TextBox ID="TextBox49" runat="server" Visible="False"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </asp:Panel>
                                                                                                            </td>
                                                                                                            <td>&nbsp;</td>
                                                                                                        </tr>
                                                                                                        <tr>
                                                                                                            <td style="text-align: left">
                                                                                                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, NameService, Price, PayedCash, StaffName, Repetition, Payment, dateRecorded, idRecord,IdManufacture, idClient,Name FROM WebDetailsDataView WHERE (OperationDay = @OperationDay) ORDER BY idRecord DESC">
                                                                                                                    <SelectParameters>
                                                                                                                        <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                                                                                                    </SelectParameters>
                                                                                                                </asp:SqlDataSource>
                                                                                                                <asp:SqlDataSource ID="InvoNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idRecord] from [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                                                                    <SelectParameters>
                                                                                                                        <asp:ControlParameter ControlID="TextBox49" Name="idRecord" PropertyName="Text" Type="Int32" />
                                                                                                                    </SelectParameters>
                                                                                                                </asp:SqlDataSource>
                                                                                                                <asp:Button ID="Button103" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="43px" OnClick="Button103_Click" OnClientClick="doPrintINVO()" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='#006666'" Text="PRINT" Visible="False" Width="119px" />
                                                                                                                <asp:SqlDataSource ID="SqlDataSReceivedVehicle2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber],[brand],[manufactureName],[Name],[Phone], [NameService],StaffName,[Payment] ,[dateRecorded],[Price] FROM [WebDetailsDataView] WHERE ([idRecord] = @idRecord)">
                                                                                                                    <SelectParameters>
                                                                                                                        <asp:ControlParameter ControlID="TextBox49" Name="idRecord" PropertyName="Text" Type="Int32" />
                                                                                                                    </SelectParameters>
                                                                                                                </asp:SqlDataSource>
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
                                                                <td>
                                                                    <asp:GridView ID="gvServed" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource8" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnRowDataBound="gvServed_RowDataBound" Width="100%" Height="212px">
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
                                                                                    <asp:CheckBox ID="CheckBox74" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox74_CheckedChanged" />
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
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                     <asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource4" DataTextField="dateAdded" DataValueField="dateAdded" Font-Size="Large" ForeColor="White" Height="1px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="1px">
                                                                                                                </asp:DropDownList>
                                                                                                                <asp:DropDownList ID="DropDownList18" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Smaller" ForeColor="White" Height="1px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="1px">
                                                                                                                </asp:DropDownList>
                                                                                                                <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource9" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="Smaller" ForeColor="White" Height="1px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="1px">
                                                                                                                </asp:DropDownList>
                                                                                                                <asp:DropDownList ID="DropDownList19" runat="server" AutoPostBack="True" BackColor="DarkSlateGray" CssClass="BUTTOMNUMBER" DataSourceID="RemainOnPay0" DataTextField="Balance" DataValueField="Balance" Font-Size="Smaller" ForeColor="#333333" Height="1px" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged" Width="1px">
                                                                                                                </asp:DropDownList>
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
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>


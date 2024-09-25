<%@ Page Title="" Language="C#" MasterPageFile="~/BarRestoOperator.Master" AutoEventWireup="true" CodeBehind="BarRestoManagerWee.aspx.cs" Inherits="MobiWebApplication.WebForm58" %>
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
        .auto-style33 {
            width: 418px;
        }
        .auto-style34 {
            height: 40px;
        }
        .auto-style36 {
        }
        .auto-style37 {
            width: 177px;
        }
        .auto-style38 {
            width: 204px;
        }
        .auto-style39 {
            width: 417px;
            height: 20px;
        }
        .auto-style40 {
            height: 20px;
        }
        .auto-style235
        {
            width: 96%;
        }
        .auto-style240
        {
            text-align: left;
        }
        .auto-style241
        {
            text-align: right;
            width: 114px;
            font-weight: bold;
        }
        .auto-style243
        {
            color: #000000;
        }
        .auto-style242
        {
            text-align: left;
            font-weight: bold;
        }
        .auto-style244
        {
            text-align: left;
            font-weight: bold;
            color: #000000;
        }
        .auto-style245
        {
            width: 99%;
        }
        .auto-style254
    {
        height: 20px;
        text-align: right;
    }
    .auto-style255
    {
        height: 20px;
        text-align: left;
    }
        .auto-style247
        {
            text-align: right;
        }
        .auto-style339
        {
            width: 100%;
        }
        .auto-style213
        {
            width: 100%;
            height: 21px;
        }
        .auto-style340 {
            width: 460px;
        }
        .auto-style341 {
            width: 460px;
            height: 77px;
        }
        .auto-style342 {
            height: 77px;
        }
        .auto-style343 {
            height: 136px;
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
                                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:Label ID="UserName" runat="server" Text="UserName" Visible="False"></asp:Label>
                                                    <asp:SqlDataSource ID="COMMAND_ID0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idCommand] FROM [BarCommand] ORDER BY [idCommand] DESC"></asp:SqlDataSource>
                                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                                    <asp:TextBox ID="TextBox4" runat="server" Visible="False" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Gray" DataSourceID="COMMAND_ID0" DataTextField="idCommand" DataValueField="idCommand" ForeColor="Gray" Height="1px" Width="1px">
                                                    </asp:DropDownList>
                                                    <asp:Panel ID="PanelCommand" runat="server" BackColor="#006666" BorderColor="#CCCCCC" BorderStyle="None" Width="100%">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Button ID="Button77" runat="server" BackColor="#006666" BorderStyle="Solid" BorderWidth="2px" CssClass="BUTTOMROUND" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Orange" Height="56px" OnClick="Button77_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='#006666'" Text="Log out" Width="160px" />
                                                                    <br />
                                                                    <br />
                                                                    <br />
                                                                    <asp:TextBox ID="TextBox10" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="1px" placeholder="TABLE NO" Visible="False" Width="1px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style34">
                                                                    <asp:DropDownList ID="DropDownList14" runat="server" AutoPostBack="True" BackColor="#006666" CssClass="BUTTOMNUMBER" DataSourceID="SqlDataSource2" DataTextField="OperationDay" DataValueField="OperationDay" Font-Size="X-Large" ForeColor="White">
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style34">
                                                                    <asp:Panel ID="PanelMain" runat="server" BackColor="Gray" BorderStyle="Solid" BorderWidth="5px" CssClass="PanelHomeLoginBarResto" Width="915px">
                                                                        <table class="auto-style213">
                                                                            <tr>
                                                                                <td>
                                                                                    <table class="auto-style4">
                                                                                        <tr>
                                                                                            <td class="auto-style340">
                                                                                                <asp:Button ID="Button87" runat="server" BackColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="73px" OnClick="Button87_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Physical Stock" Width="100%" CausesValidation="False" CssClass="auto-style209" />
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Button ID="Button84" runat="server" BackColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="73px" OnClick="Button84_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Sales Historic" Width="100%" CssClass="auto-style209" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style341">
                                                                                                <asp:Button ID="Button85" runat="server" BackColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="73px" OnClick="Button85_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Given Purchase Order" Width="100%" CssClass="auto-style209" />
                                                                                            </td>
                                                                                            <td class="auto-style342">
                                                                                                <asp:Button ID="Button86" runat="server" BackColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="73px" OnClick="Button86_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Given Orders" Width="100%" CssClass="auto-style209" Font-Underline="False" />
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td class="auto-style340">
                                                                                                <asp:Button ID="Button88" runat="server" BackColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="73px" OnClick="Button88_Click" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Text="Billard Requests" Width="100%" CssClass="auto-style209" />
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:Button ID="Button89" runat="server" BackColor="#006666" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="73px" onmouseout="this.style.backgroundColor='#006666'" onmouseover="this.style.backgroundColor='DarkSlateGray'" Width="100%" CssClass="auto-style209" OnClick="Button89_Click" Text="Product Sales Historic" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </asp:Panel>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Panel ID="PanelPayment" runat="server" BackColor="Gray">
                                                                        <table class="auto-style4">
                                                                            <tr>
                                                                                <td align="left" colspan="2">
                                                                                    <asp:Panel ID="Drinks1" runat="server" BackColor="White" Visible="False" Width="100%" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td style="border-style: none; border-width: thin; border-color: #000000">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="left">
                                                                                                                <asp:Panel ID="Panel44" runat="server" BorderStyle="Groove" Font-Bold="True" ForeColor="Black" Width="392px">
                                                                                                                    <table class="auto-style235">
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                            <td class="auto-style240" colspan="2">
                                                                                                                                <asp:Panel ID="Panel46" runat="server" CssClass="auto-style243" Font-Bold="True" Font-Names="Segoe Script" Font-Size="Large">
                                                                                                                                    <strong>MOBI CAR WASH KGL LTD</strong></asp:Panel>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                            <td class="auto-style241"><span class="auto-style243">TIN No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span></td>
                                                                                                                            <td class="auto-style242">107048761</span></td>
                                                                                                                            </span>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                            <td class="auto-style241"><span class="auto-style243">Contact No&nbsp;&nbsp;&nbsp; :</span></td>
                                                                                                                            <td class="auto-style242">+250788317651</td>
                                                                                                                            </span>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                            <td class="auto-style241"><span class="auto-style243">A/C No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span></td>
                                                                                                                            <td class="auto-style244">4013200496810</td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                            <td class="auto-style241"><span class="auto-style243">BANK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span></td>
                                                                                                                            <td class="auto-style244">EQUITY BANK</td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>&nbsp;</td>
                                                                                                                            <td class="auto-style241"><span class="auto-style243">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span></td>
                                                                                                                            <td class="auto-style242">GASABO-KIMIRONKO</span></td>
                                                                                                                            </span>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </asp:Panel>
                                                                                                            </td>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="TextBox58" runat="server" BorderStyle="None" Visible="False" Width="500px"></asp:TextBox>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="border-style: none; border-width: thin; border-color: #000000">
                                                                                                    &nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="border-style: none; border-width: thin; border-color: #000000">
                                                                                                    <asp:Label ID="AlertLabel20" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black">REQUESTED ITEMS </asp:Label>
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td style="border-style: none; border-width: thin; border-color: #000000">&nbsp;</td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td align="center">
                                                                                                    <asp:GridView ID="gvInformation10" runat="server" AutoGenerateColumns="False" BackColor="Black" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="6" DataSourceID="ServedDrink0" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" Font-Size="Medium" ForeColor="Black" OnRowDataBound="gvInformation5_RowDataBound" style="margin-left: 0px" Width="100%">
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
                                                                                                            <asp:BoundField DataField="quantity" FooterText="TOTAL:" HeaderText="QTY" SortExpression="quantity">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                                                            </asp:BoundField>  
                                                                                                             <asp:BoundField DataField="UnitName" HeaderText="UNIT" SortExpression="UnitName">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Center" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
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
                                                                                                                    &nbsp;</td>
                                                                                                                <td align="right" style="border-style: dashed none none none; border-top-width: medium; border-color: #FFFFFF">
                                                                                                                    <asp:SqlDataSource ID="Command0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommand WHERE (Total &gt; 0) ORDER BY idCommand DESC"></asp:SqlDataSource>
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
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td>
                                                                                                                <asp:TextBox ID="TextBox59" runat="server" BorderStyle="None" Visible="False" Width="437px"></asp:TextBox>
                                                                                                            </td>
                                                                                                            <td align="right">
                                                                                                                <asp:Panel ID="Panel53" runat="server" BorderStyle="Groove" Font-Bold="True" ForeColor="Black" Width="443px">
                                                                                                                    <table class="auto-style245">
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style254">prepared By</td>
                                                                                                                            <td class="auto-style255">.......................................</td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style247">Date&nbsp;</td>
                                                                                                                            <td class="auto-style240">.......................................</td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td class="auto-style247">Signature</td>
                                                                                                                            <td class="auto-style240">.......................................</td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </asp:Panel>
                                                                                                            </td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="center">
                                                                                                                &nbsp;</td>
                                                                                                        </tr>
                                                                                                    </table>
                                                                                                    <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                                                                                                    <asp:SqlDataSource ID="ServedDrink0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity) AS quantity, productName,UnitName, requestStatus, OperationDay, userAdded FROM BarRequestViewStockB WHERE (idCommand = @idCommand) AND (requestStatus = 'confirmed') GROUP BY idCommand, requestStatus, productName, OperationDay,UnitName, userAdded">
                                                                                                        <SelectParameters>
                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                        </SelectParameters>
                                                                                                    </asp:SqlDataSource>
                                                                                                    <asp:TextBox ID="TextBox9" runat="server" Visible="False"></asp:TextBox>
                                                                                                    <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                                                                                                    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                                                                                                    <asp:SqlDataSource ID="ServedDrinkTotal0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM [BarServedDrinkView] WHERE ([idCommand] = @idCommand)">
                                                                                                        <SelectParameters>
                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                        </SelectParameters>
                                                                                                    </asp:SqlDataSource>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top">
                                                                                    <asp:Button ID="Button69" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="61px" OnClientClick="doPrintInoice()" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="PRINT" Visible="False" Width="210px" OnClick="Button69_Click" />
                                                                                </td>
                                                                                <td align="right" valign="top">&nbsp;</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td valign="top" class="auto-style40">
                                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Orange" Text="Label" Visible="False"></asp:Label>
                                                                                </td>
                                                                                <td class="auto-style40"></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="auto-style36" colspan="2">
                                                                                    <asp:Panel ID="Drinks" runat="server" BackColor="Gray" Visible="False">
                                                                                        <table class="auto-style4">
                                                                                            <tr>
                                                                                                <td style="border-style: none; border-width: medium; border-color: #CCCCCC">
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="left" class="auto-style34">
                                                                                                                <asp:Label ID="AlertLabel18" runat="server" CssClass="LABELINCREASE" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">Item List</asp:Label>
                                                                                                            </td>
                                                                                                            <td class="auto-style34">
                                                                                                                <table class="auto-style4">
                                                                                                                    <tr>
                                                                                                                        <td align="right" class="auto-style39">
                                                                                                                            </td>
                                                                                                                        <td align="left" class="auto-style40">
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
                                                                                                    <asp:GridView ID="gvInformation5" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" OnSelectedIndexChanged="gvInformation5_SelectedIndexChanged" style="margin-left: 0px" Width="100%" ShowFooter="True">
                                                                                                        <Columns>
                                                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                                                <ItemTemplate>
                                                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                                                </ItemTemplate>
                                                                                                                <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                                                            </asp:TemplateField>
                                                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Left" />
                                                                                                            </asp:BoundField>
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:CheckBox ID="CheckBox70" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
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
                                                                                                            <asp:BoundField DataField="productName" HeaderText="Item" SortExpression="productName">
                                                                                                            <FooterStyle ForeColor="White" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                                            <ItemStyle HorizontalAlign="Left" Font-Bold="False" />
                                                                                                            </asp:BoundField>                                                                                                            
                                                                                                            <asp:BoundField DataField="quantity" FooterText="TOTAL:" HeaderText="QTY" SortExpression="quantity">
                                                                                                            <FooterStyle ForeColor="#244242" HorizontalAlign="Right" />
                                                                                                            <HeaderStyle HorizontalAlign="Center" />
                                                                                                            <ItemStyle HorizontalAlign="Center" Font-Bold="False" />
                                                                                                            </asp:BoundField>                                                                                                           
                                                                                                            <asp:TemplateField>
                                                                                                                <ItemTemplate>
                                                                                                                    <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="True" BackColor="red" Font-Bold="False" ForeColor="White" Height="40px" OnCheckedChanged="CheckBox12_CheckedChanged" Text="Cancel" Width="140px" />
                                                                                                                </ItemTemplate>
                                                                                                                <FooterStyle BackColor="#244242" />
                                                                                                                <HeaderStyle BackColor="#244242" />
                                                                                                                <ItemStyle BackColor="#244242" HorizontalAlign="Center" Font-Bold="False" />
                                                                                                            </asp:TemplateField>
                                                                                                        </Columns>
                                                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                                                        <HeaderStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                                    </asp:GridView>
                                                                                                    <asp:Panel ID="Panel90" runat="server" BackColor="Gray">
                                                                                                        <table class="auto-style4">
                                                                                                            <tr>
                                                                                                                <td align="left" class="auto-style33" style="border-style: none; border-width: medium; border-color: #CCCCCC">
                                                                                                                    <asp:Label ID="AlertLabel17" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#333333" CssClass="LABELINCREASE">Total:</asp:Label>
                                                                                                                </td>
                                                                                                                <td align="right" style="border-style: none; border-top-width: medium; border-color: #CCCCCC">
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
                                                                                                                                            <asp:Label ID="NoLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" ForeColor="#333333" Text='<%# Bind("Total","{0:0,000}") %>' CssClass="LABELINCREASE" />
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
                                                                                                    <table class="auto-style4">
                                                                                                        <tr>
                                                                                                            <td align="center">
                                                                                                                <asp:Button ID="Button74" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="60px" OnClick="Button74_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="CONFIRM LIST" Width="265px" />
                                                                                                                <asp:Button ID="Button70" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="60px" OnClick="Button70_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="ADDITION" Width="182px" Visible="False" />
                                                                                                                <asp:Button ID="Button71" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="60px" OnClick="Button71_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="SHOW  LIST" Width="249px" />
                                                                                                                <asp:Button ID="Button72" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="60px" OnClick="Button72_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#006666'" Text="HIDE  LIST" Visible="False" Width="217px" />
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
                                                                                                                                <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Agency FB" Font-Size="XX-Large" ForeColor="Orange" Height="38px" placeholder="PAID" Width="192px"></asp:TextBox>
                                                                                                                            </td>
                                                                                                                            <td align="center">
                                                                                                                                <asp:Button ID="Button73" runat="server" BackColor="SandyBrown" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Navy" Height="49px" OnClick="Button73_Click" onmouseout="this.style.backgroundColor='SandyBrown'" onmouseover="this.style.backgroundColor='Orange'" Text="SAVE " Width="153px" />
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td colspan="3">
                                                                                                                                <asp:SqlDataSource ID="RemainOnPay" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT Total - Paid AS Balance FROM BarCommand WHERE  idCommand=@idCommand  AND OperationDay=@OperationDay  AND (Total &gt; 0) ">
                                                                                                                                    <SelectParameters>
                                                                                                                                        <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" />
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
                                                                                                    <asp:SqlDataSource ID="ServedDrink" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand,idRecord, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName,idProduct, PriceSales, OperationDay, userAdded,requestStatus FROM BarRequestView WHERE (idCommand = @idCommand)  and requestStatus='unconfirmed' GROUP BY idCommand,requestStatus, productName,idProduct, PriceSales,idRecord, OperationDay, userAdded">
                                                                                                        <SelectParameters>
                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
                                                                                                        </SelectParameters>
                                                                                                    </asp:SqlDataSource>
                                                                                                    <asp:SqlDataSource ID="ServedDrinkTotal" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(quantity * PriceSales) AS Total FROM [BarServedDrinkView] WHERE ([idCommand] = @idCommand)">
                                                                                                        <SelectParameters>
                                                                                                            <asp:ControlParameter ControlID="Label6" Name="idCommand" PropertyName="Text" Type="Int32" />
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
                                                                                                    <asp:GridView ID="gvInformation14" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation5_RowDataBound" OnSelectedIndexChanged="gvInformation5_SelectedIndexChanged" ShowFooter="True" style="margin-left: 0px" Width="100%">
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
                                                                                                                    <asp:CheckBox ID="CheckBox71" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
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
                                                                                                                    <asp:CheckBox ID="CheckBox72" runat="server" AutoPostBack="True" BackColor="red" Font-Bold="False" ForeColor="White" Height="40px" OnCheckedChanged="CheckBox72_CheckedChanged" Text="Cancel" Width="140px" />
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
                                                                                                                <asp:Button ID="Button80" runat="server" BackColor="#244242" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="60px" OnClick="Button80_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Orange'" Text="CONFIRM LIST" Width="247px" />
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
                                                                <td class="auto-style343">
                                                                    <asp:SqlDataSource ID="Command" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandC WHERE (OperationDay = @OperationDay) AND (requestStatus = 'unconfirmed') ORDER BY idCommand DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT OperationDay, dateAdded FROM DetailSales ORDER BY dateAdded DESC"></asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="Command1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top (30) idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandC WHERE  requestStatus='confirmed' ORDER BY idCommand DESC"></asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="Unit" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [IdUnit], [UnitName] FROM [BarProductsUnit]"></asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="AlertLabel24" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="White">Pending Purchase Order</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation4" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation4_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" OnSelectedIndexChanged="gvInformation4_SelectedIndexChanged" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <ItemStyle Font-Size="Small" ForeColor="#244242" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Large" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">                                                                           
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}"  HeaderText="Time" SortExpression="Time">                                                                            
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Time" SortExpression="Time">                                                                          
                                                                            <ItemStyle Font-Bold="False" />
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
                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="AlertLabel35" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="White">Pending  Orders</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation12" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command2" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="Horizontal" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                            <FooterStyle ForeColor="#006666" />
                                                                            <ItemStyle Font-Size="Small" ForeColor="#244242" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Large" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">
                                                                            <ItemStyle Font-Bold="False" Font-Size="XX-Large" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" Font-Size="XX-Large" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" Font-Size="XX-Large" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button78" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button78_Click" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="150px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle BackColor="#244242" ForeColor="Navy" />
                                                                                <ItemStyle BackColor="#244242" CssClass="input" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#244242" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <asp:SqlDataSource ID="Products" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [Price] FROM [BarProducts]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" bgcolor="#006666">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Panel ID="PanelCommand0" runat="server" BackColor="#244242" BorderStyle="Solid" BorderWidth="2px">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>
                                                                    <asp:Label ID="AlertLabel36" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="Orange" Visible="False">Confirmed Purchase Order</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation11" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation11_RowDataBound" style="margin-left: 0px" Width="100%" AllowPaging="True" Visible="False">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                            <FooterStyle ForeColor="#006666" />
                                                                            <ItemStyle Font-Size="Small" ForeColor="#244242" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Large" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="Time">
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button37" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px" OnClick="Button37_Click1" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="View" Width="150px" />
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
                                                                    <asp:Label ID="AlertLabel37" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" Font-Size="XX-Large" ForeColor="Orange" Visible="False">Given Orders</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:SqlDataSource ID="Command2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandA WHERE (OperationDay = @OperationDay) AND (Total &gt; 0) AND (requestStatus = 'unconfirmed') ORDER BY idCommand DESC" OnSelecting="Command2_Selecting">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="DropDownList14" Name="OperationDay" PropertyName="SelectedValue" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="Command3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top (60) idCommand, userAdded, status, Time, Total, Paid, Total - Paid AS Balance, operationMonth, operationYear FROM BarCommandA WHERE   (Total &gt; 0) and requestStatus='confirmed' ORDER BY idCommand DESC">
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation7" runat="server" AutoGenerateColumns="False" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idCommand" DataSourceID="Command3" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="None" style="margin-left: 0px" Width="100%" AllowPaging="True" Visible="False" OnSelectedIndexChanged="gvInformation7_SelectedIndexChanged">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="idCommand" SortExpression="idCommand">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#244242" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="S/N">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <FooterStyle ForeColor="#244242" />
                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                <ItemStyle Font-Bold="False" Font-Size="XX-Large" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                          <asp:BoundField DataField="userAdded" HeaderText="Seller" SortExpression="userAdded">                                                                            
                                                                            <ItemStyle Font-Bold="False" Font-Size="XX-Large"/>
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">                                                                          
                                                                            <ItemStyle Font-Bold="False" Font-Size="XX-Large"/>
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="Time">                                                                          
                                                                            <ItemStyle Font-Bold="False" Font-Size="XX-Large"/>
                                                                            </asp:BoundField>                                                                                                                                
                                                                            <asp:TemplateField>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Navy" />
                                                                                <ItemStyle  HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:Button ID="Button41" runat="server" BackColor="Gray" BorderStyle="None" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" Height="40px"  onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='Orange'" Text="VIEW" Width="150px" OnClick="Button41_Click1" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle BackColor="#333333" ForeColor="Orange" />
                                                                                <ItemStyle CssClass="input" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    <asp:Panel ID="PanelList2" runat="server" BorderColor="#666666" BorderWidth="4px" Visible="False">
                                                        <table class="auto-style4">
                                                            <tr>
                                                                <td>
                                                                    <table class="auto-style4">
                                                                        <tr>
                                                                            <td align="center">
                                                                                <table class="auto-style4">
                                                                                    <tr>
                                                                                        <td align="left">
                                                                                            <asp:Button ID="Button90" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button90_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Silver'" Text="Back" Width="266px" />
                                                                                        </td>
                                                                                        <td align="right">
                                                                                            <asp:Button ID="Button75" runat="server" BackColor="#244242" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="73px" OnClick="Button75_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='Silver'" Text="Submit" Width="266px" />
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
                                                                                <td>
                                                                                    <asp:Label ID="AlertLabel12" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">BAR</asp:Label>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:SqlDataSource ID="ProductsSkol" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName], [PriceSales],quantityStock, [idDrinkCategory] FROM [BarProducts2] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                                        <SelectParameters>
                                                                                            <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                                                        </SelectParameters>
                                                                                    </asp:SqlDataSource>
                                                                                    <asp:SqlDataSource ID="Number" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idNumber], [Number] FROM [BarNumberQty]"></asp:SqlDataSource>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:GridView ID="gvInformation3" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation3_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                                        <Columns>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox ID="CheckBox2" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" OnCheckedChanged="CheckBox2_CheckedChanged1" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
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
                                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                            <ItemStyle HorizontalAlign="Left" Width="300px" Font-Bold="False" />
                                                                                            </asp:BoundField>                                                                                                                                                                                    
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="TextBox7" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="" Width="120px"></asp:TextBox>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:DropDownList ID="DropDownList17" runat="server" AutoPostBack="True" BackColor="#244242" CssClass="BUTTOMNUMBER" DataSourceID="Unit" DataTextField="UnitName" DataValueField="IdUnit" Font-Size="X-Large" ForeColor="#CCCCCC" Height="38px" Width="120px">
                                                                                                    </asp:DropDownList>
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
                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                    </asp:GridView>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="AlertLabel30" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">RESTO</asp:Label>
                                                                                </td>
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
                                                                                <td>
                                                                                    <asp:GridView ID="gvInformation6" runat="server" AutoGenerateColumns="False" BackColor="#333333" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsBralirwa" EnableModelValidation="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvInformation6_RowDataBound" OnRowDeleting="gvInformation3_RowDeleting" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                                        <Columns>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:CheckBox ID="CheckBox5" runat="server" BackColor="#244242" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" OnCheckedChanged="CheckBox5_CheckedChanged" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
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
                                                                                            <ControlStyle Font-Size="Large" Width="300px" />
                                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                                            <ItemStyle HorizontalAlign="Left" Width="300px" Font-Bold="False" />
                                                                                            </asp:BoundField>                                                                                                                                                                                    
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="TextBox8" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="" Width="120px"></asp:TextBox>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                                            </asp:TemplateField>
                                                                                              <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:DropDownList ID="DropDownList16" runat="server" AutoPostBack="True" BackColor="#244242" CssClass="BUTTOMNUMBER" DataSourceID="Unit" DataTextField="UnitName" DataValueField="IdUnit" Font-Size="X-Large" ForeColor="#CCCCCC" Height="38px" Width="120px">
                                                                                                    </asp:DropDownList>
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
                                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                                    </asp:GridView>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td>
                                                                                    <asp:Label ID="AlertLabel31" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">Others </asp:Label>
                                                                                </td>
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
                                                                                <td>
                                                                                    <asp:GridView ID="gvInformation8" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataSourceID="Uncountable" EnableModelValidation="True" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="gvInformation3_RowDeleting" ShowHeader="False" style="margin-left: 0px" Width="100%">
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
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:TextBox ID="TextBox11" runat="server" BackColor="#244242" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CssClass="BUTTOMNUMBER" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="38px" placeholder="" Width="120px"></asp:TextBox>
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle HorizontalAlign="Center" />
                                                                                                <ItemStyle HorizontalAlign="Right" />
                                                                                            </asp:TemplateField>
                                                                                              <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:DropDownList ID="DropDownList15" runat="server" AutoPostBack="True" BackColor="#244242" CssClass="BUTTOMNUMBER" DataSourceID="Unit" DataTextField="UnitName" DataValueField="IdUnit" Font-Size="X-Large" ForeColor="#CCCCCC" Height="38px" Width="127px">
                                                                                                    </asp:DropDownList>
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
                                                <td align="left">
                                                    <asp:Panel ID="LoadingMainStore" runat="server" BackColor="#333333" Visible="False">
                                                        <table class="auto-style339">
                                                            <tr>
                                                                <td align="center">
                                                                    <b style="text-align: center"><span style="color: #000099">
                                                                    <asp:Label ID="AlertLabel68" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">Main Store Historic</asp:Label>
                                                                    <asp:GridView ID="GridClientPayment6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SalesPurchaseHistoric2" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" PageSize="12">
                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="Orange" Font-Size="XX-Large" ForeColor="Navy" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
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
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="OldQuantity" HeaderText="OpenStore" SortExpression="OldQuantity">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PurchaseQuantity" HeaderText="Load" SortExpression="PurchaseQuantity">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="SalesQuantity" HeaderText="Request" SortExpression="SalesQuantity">
                                                                            <ControlStyle Font-Size="X-Large" />
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="RemainQuantity" HeaderText="Remain" SortExpression="RemainQuantity">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" ReadOnly="True" SortExpression="dateRecorded">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded">
                                                                            <FooterStyle Font-Size="XX-Large" />
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="#006666" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#006666" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                    </span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center"><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:SqlDataSource ID="Historic" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idCommand, recordStatus, SUM(PriceSales * quantity) AS Total, SUM(quantity) AS quantity, productName, requestStatus, PriceSales, Time, userAdded,dateAdded ,idProduct FROM BarRequestViewStockHistoric WHERE (idProduct = @idProduct) GROUP BY idCommand,dateAdded ,requestStatus, recordStatus, productName, Time, PriceSales, userAdded, idProduct ORDER BY Time DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label7" Name="idProduct" PropertyName="Text" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    </span>
                                                                    <asp:SqlDataSource ID="SalesPurchaseHistoric1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecordHis, productName, idProduct, OldQuantity,MainStore, PurchaseQuantity, SalesQuantity, RemainQuantity, dateRecorded, OperationDay, operationMonth, operationYear, userAdded, recordStatuss FROM BarSalesPurchaseHistoricView WHERE (idProduct = @idProduct)    ORDER BY idRecordHis DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label7" Name="idProduct" PropertyName="Text" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <span style="color: #000099">
                                                                    <asp:SqlDataSource ID="SalesPurchaseHistoric2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT idRecordHis, productName, idProduct, OldQuantity, PurchaseQuantity, SalesQuantity, RemainQuantity, dateRecorded, OperationDay, operationMonth, operationYear, userAdded, recordStatuss FROM BarSalesPurchaseHistoricView2 WHERE (idProduct = @idProduct)    ORDER BY idRecordHis DESC">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="Label7" Name="idProduct" PropertyName="Text" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:Label ID="AlertLabel66" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">Sub Store Historic</asp:Label>
                                                                    <asp:GridView ID="GridClientPayment5" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SalesPurchaseHistoric1" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" Font-Size="Large" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" PageSize="12">
                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="Orange" Font-Size="XX-Large" ForeColor="Navy" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
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
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                             <asp:BoundField DataField="MainStore" HeaderText="MainStore" SortExpression="MainStore">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="OldQuantity" HeaderText="OpenStore" SortExpression="OldQuantity">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PurchaseQuantity" HeaderText="Request" SortExpression="PurchaseQuantity">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="SalesQuantity" HeaderText="Sold" SortExpression="SalesQuantity">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="RemainQuantity" HeaderText="Remain" SortExpression="RemainQuantity">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" ReadOnly="True" SortExpression="dateRecorded">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="#006666" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#006666" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                    </span>
                                                                    <asp:Label ID="AlertLabel65" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">Sales Historic</asp:Label>
                                                                    <span style="color: #000099">
                                                                    <asp:GridView ID="GridClientPayment4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="Historic" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" Font-Size="Large" ForeColor="Black" GridLines="None" OnRowDataBound="GridClientPayment4_RowDataBound" Width="100%" AllowPaging="True" PageSize="12">
                                                                        <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                        <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="Orange" Font-Size="XX-Large" ForeColor="Navy" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                        <EditRowStyle BackColor="#999999" />
                                                                        <AlternatingRowStyle BackColor="#244242" ForeColor="White" />
                                                                        <Columns>
                                                                            <asp:TemplateField HeaderText="Sno">
                                                                                <ItemTemplate>
                                                                                    <%# Container.DataItemIndex + 1 %>
                                                                                </ItemTemplate>
                                                                                <ItemStyle Font-Bold="False" HorizontalAlign="Center" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateAdded">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Time" DataFormatString="{0:HH\:mm}" HeaderText="Time" SortExpression="Time">
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
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="Price" SortExpression="PriceSales">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total">
                                                                            <HeaderStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="#006666" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#006666" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="recordStatus" SortExpression="recordStatus">
                                                                            <FooterStyle ForeColor="#006666" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="#006666" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="userAdded" HeaderText="Operator" ReadOnly="True" SortExpression="userAdded">
                                                                            <HeaderStyle Font-Bold="False" />
                                                                            <ItemStyle Font-Bold="False" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                    </span>
                                                                    <asp:Label ID="Label7" runat="server" Text="9000" Visible="False"></asp:Label>
                                                                    </b></td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Label ID="AlertLabel41" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White">Main Store Loading</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <table class="auto-style339">
                                                                        <tr>
                                                                            <td align="left">
                                                                                <asp:Button ID="Button81" runat="server" BackColor="Gray" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="60px" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#333333'" Text="Back" Width="300px" OnClick="Button81_Click" />
                                                                            </td>
                                                                            <td align="center">
                                                                                <b style="text-align: center">
                                                                                <asp:Button ID="Button91" runat="server" BackColor="Gray" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="60px" OnClick="Button91_Click" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#333333'" Text="REFRESH" Width="300px" />
                                                                                </b>
                                                                            </td>
                                                                            <td align="right">
                                                                                <asp:Button ID="Button79" runat="server" BackColor="Gray" BorderStyle="None" CssClass="Panel1Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="White" Height="60px" OnClick="Button79_Click" onmouseout="this.style.backgroundColor='Gray'" onmouseover="this.style.backgroundColor='#333333'" Text="Submit" Width="300px" Visible="False" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:SqlDataSource ID="ProductsSkol0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName],quantityStock, PriceSales,PricePurchase,idDrinkCategory  FROM [BarProductsView] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="1" Name="idDrinkCategory" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:Label ID="AlertLabel62" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">BAR</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation15" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="None" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol0" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="White" GridLines="None" ShowHeader="False" style="margin-left: 0px" Width="100%" OnSelectedIndexChanged="gvInformation15_SelectedIndexChanged" DataKeyNames="idProduct">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox18" runat="server" BackColor="DarkSlateGray" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle ForeColor="Navy" />
                                                                                <ItemStyle  CssClass="input" HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="DarkSlateGray" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="DarkSlateGray" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="PRODUCT" SortExpression="productName">
                                                                            <ControlStyle  Width="500px" />
                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Left" Width="300px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="quantityStock" HeaderText="STOCK" SortExpression="quantityStock">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Button ID="Button37" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Height="40px"  onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#CCCCCC'" Text="Historic" Width="100px" OnClick="Button37_Click2" />
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle  ForeColor="Navy" />
                                                                                                <ItemStyle  CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="#244242" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="#006666" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="DarkSlateGray" Font-Bold="True" ForeColor="Orange" />
                                                                       <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                        <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Label ID="AlertLabel63" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">RESTO</asp:Label>
                                                                    <asp:GridView ID="gvInformation16" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="None" BorderWidth="0px" CellPadding="4" DataSourceID="ProductsSkol1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="None" ShowHeader="False" style="margin-left: 0px" Width="100%" DataKeyNames="idProduct">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox73" runat="server" BackColor="DarkSlateGray" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle ForeColor="Navy" />
                                                                                <ItemStyle  CssClass="input" HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="DarkSlateGray" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="DarkSlateGray" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="PRODUCT" SortExpression="productName">
                                                                            <ControlStyle  Width="300px" />
                                                                            <HeaderStyle HorizontalAlign="Left" Width="300px" Wrap="True" />
                                                                            <ItemStyle Font-Bold="False"  HorizontalAlign="Left" Width="300px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="PriceSales" HeaderText="PRICE" SortExpression="PriceSales">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="quantityStock" HeaderText="STOCK" SortExpression="quantityStock">
                                                                            <FooterStyle ForeColor="#244242" />
                                                                            <HeaderStyle HorizontalAlign="Right" />
                                                                            <ItemStyle Font-Bold="False" ForeColor="Orange" HorizontalAlign="Right" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Button ID="Button37" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Height="40px"  onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#CCCCCC'" Text="Historic" Width="100px" OnClick="Button37_Click3" />
                                                                                                </ItemTemplate>
                                                                                                <HeaderStyle  ForeColor="Navy" />
                                                                                                <ItemStyle  CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="DarkSlateGray" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="DarkSlateGray" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="DarkSlateGray" Font-Bold="True" ForeColor="Orange" />
                                                                       <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                                        <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                    </asp:GridView>
                                                                    <asp:SqlDataSource ID="ProductsSkol1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName],quantityStock, PriceSales,PricePurchase,idDrinkCategory  FROM [BarProducts] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="2" Name="idDrinkCategory" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:SqlDataSource ID="ProductsBralirwa0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName] ,quantityStock, PriceSales,PricePurchase,idDrinkCategory FROM [BarProducts] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="3" Name="idDrinkCategory" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Label ID="AlertLabel64" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">KITCHEN</asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:GridView ID="gvInformation17" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idProduct" DataSourceID="ProductsBralirwa0" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="None" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox19" runat="server" BackColor="DarkSlateGray" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle ForeColor="Navy" />
                                                                                <ItemStyle CssClass="input" HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="DarkSlateGray" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="DarkSlateGray" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="PRODUCT" SortExpression="productName">
                                                                            <ControlStyle Width="300px" />
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
                                                                                    <asp:Button ID="Button37" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Height="40px" OnClick="Button37_Click4" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#CCCCCC'" Text="Historic" Width="100px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle ForeColor="Navy" />
                                                                                <ItemStyle CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="DarkSlateGray" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="DarkSlateGray" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="DarkSlateGray" Font-Bold="True" ForeColor="Orange" />
                                                                        <RowStyle BackColor="#244242" Font-Bold="True" ForeColor="White" />
                                                                        <AlternatingRowStyle BackColor="#333333" ForeColor="White" />
                                                                    </asp:GridView>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:Label ID="AlertLabel67" runat="server" CssClass="LABELINCREASE" Font-Bold="False" Font-Names="Tahoma" ForeColor="Orange">OTHERS</asp:Label>
                                                                    <asp:SqlDataSource ID="ProductsBralirwa1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idProduct], [productName] ,quantityStock, PriceSales,PricePurchase,idDrinkCategory FROM [BarProducts] WHERE ([idDrinkCategory] = @idDrinkCategory) Order by [productName]">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="4" Name="idDrinkCategory" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="gvInformation18" runat="server" AutoGenerateColumns="False" BackColor="DarkSlateGray" BorderColor="#333333" BorderStyle="Solid" BorderWidth="0px" CellPadding="4" DataKeyNames="idProduct" DataSourceID="ProductsBralirwa1" EnableModelValidation="True" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" GridLines="None" ShowHeader="False" style="margin-left: 0px" Width="100%">
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:CheckBox ID="CheckBox74" runat="server" BackColor="DarkSlateGray" CausesValidation="True" CssClass="ChkBoxClassok2" Font-Bold="True" Font-Names="Times New Roman" ForeColor="Navy" Height="40px" onclick="javascript:colorchange(this);" style="font-size: xx-large; margin: 0px;" Width="40px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle ForeColor="Navy" />
                                                                                <ItemStyle CssClass="input" HorizontalAlign="Left" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="idProduct" SortExpression="idProduct">
                                                                            <FooterStyle ForeColor="DarkSlateGray" Width="10px" />
                                                                            <HeaderStyle Width="10px" Wrap="True" />
                                                                            <ItemStyle Font-Size="XX-Small" ForeColor="DarkSlateGray" HorizontalAlign="Center" Width="10px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="productName" HeaderText="PRODUCT" SortExpression="productName">
                                                                            <ControlStyle Width="300px" />
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
                                                                                    <asp:Button ID="Button92" runat="server" BackColor="#244242" BorderStyle="None" Font-Bold="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Height="40px" OnClick="Button92_Click" onmouseout="this.style.backgroundColor='#244242'" onmouseover="this.style.backgroundColor='#CCCCCC'" Text="Historic" Width="100px" />
                                                                                </ItemTemplate>
                                                                                <HeaderStyle ForeColor="Navy" />
                                                                                <ItemStyle CssClass="input" Font-Bold="False" HorizontalAlign="Right" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <FooterStyle BackColor="DarkSlateGray" Font-Bold="True" ForeColor="Orange" />
                                                                        <PagerStyle BackColor="DarkSlateGray" ForeColor="Black" HorizontalAlign="Right" />
                                                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="DarkSlateGray" Font-Bold="True" ForeColor="Orange" />
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
    </ContentTemplate></asp:UpdatePanel>
</asp:Content>




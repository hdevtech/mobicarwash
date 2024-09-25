<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="InvoiceLong.aspx.cs" Inherits="MobiWebApplication.WebForm45" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="WebForm35.aspx.cs" Inherits="MobiWebApplication.WebForm35" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4
        {
            width: 95%;
            height: 119px;
        }
        .btnlogin
        {}
        .txtsearch
        {}
        .auto-style13
        {
            height: 71px;
            }
        .linkbtnhome
        {
            font-size: medium;
        }
        .auto-style19
        {
        }
        .style25
        {
            width: 296px;
        }
        .auto-style191
        {
            width: 322px;
        }
        .auto-style196
        {
        }
        .btnaddannce
        {}
        .auto-style219
        {
            width: 44px;
            height: 24px;
        }
        .auto-style220
        {
            height: 24px;
        }
        .auto-style228
        {
            height: 20px;
        }
        .auto-style234
        {
            height: 23px;
        }
        .auto-style235
        {
            width: 96%;
        }
        .auto-style236
        {
            width: 156px;
        }
        .BUTTOM
        {}
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
        .auto-style242
        {
            text-align: left;
            font-weight: bold;
        }
        .auto-style243
        {
            color: #000000;
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
        .auto-style246
        {
            height: 20px;
            width: 374px;
        }
        .auto-style247
        {
            text-align: right;
        }
        .auto-style248
        {
            text-align: right;
            width: 138px;
        }
        .auto-style249
        {
            width: 149px;
        }
        .auto-style250
        {
            width: 243px;
        }
        .auto-style251
        {
            width: 243px;
            height: 23px;
        }
        .auto-style252
        {
            width: 149px;
            height: 23px;
        }
        .auto-style253
    {
        width: 377px;
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
        .auto-style257
        {
            width: 483px;
        }
        .auto-style258 {
            text-align: right;
            width: 114px;
            font-weight: bold;
            height: 20px;
        }
        .auto-style259 {
            text-align: left;
            font-weight: bold;
            color: #000000;
            height: 20px;
        }
        .auto-style238 {
            height: 84px;
            width: 353px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
 
     <script>
         function doPrintdailyRPTT() {
             var prtContent = document.getElementById('<%= Panel43.ClientID %>');
             prtContent.border = 0; //set no border here
             WinPrint = window.open('', '', 'left=0,top=0,width=800,height=800,toolbar=0,scrollbars=1,status=0,resizable=1');
             WinPrint.document.write(prtContent.outerHTML);
             WinPrint.document.close();
             WinPrint.focus();
             WinPrint.print();
             //WinPrint.close();
         }
         </script>
    <asp:Panel ID="Panel1" runat="server" CssClass="txtSearch1">
        <table class="auto-style4">
            <tr>
                <td class="auto-style13" colspan="3" valign="top">
                    <asp:Panel ID="Panel26" runat="server" CssClass="Panel1Registration" BackColor="Gray">
                        <table class="auto-style4">
                            <tr>
                                <td>
                                    <asp:Panel ID="Panel31" runat="server">
                                        <table class="auto-style235">
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="TextBox54" runat="server" BackColor="White" BorderStyle="Solid" CssClass="BUTTOM" Height="12px"  placeholder="search...." Width="138px"></asp:TextBox>
                                                    <b style="text-align: center">
                                                    <asp:Label ID="Labelsave0" runat="server" ForeColor="#993300"></asp:Label>
                                                    </b>
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button7" runat="server" CssClass="BUTTOM" Height="31px" OnClick="Button7_Click" Text="Search" Width="63px" />
                                                </td>
                                                <td>
                                                    <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" ShowHeader="False" OnSelectedIndexChanged="GridView9_SelectedIndexChanged">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="check">
                                                                <HeaderTemplate>
                                                                    <asp:Button ID="Button43" runat="server" BackColor="#99FF99" BorderStyle="None" Font-Bold="True" ForeColor="Red" Height="31px" Text="Check" Width="69px" />
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox6_CheckedChanged1"/>
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
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td class="auto-style191">
                                    <b style="text-align: center"><span style="color: #000099">
                                    <asp:Panel ID="Panel11" runat="server" CssClass="PanelHomeLogin" Height="54px" Width="326px">
                                        <table class="style25">
                                            <tr>
                                                <td class="auto-style219" style="text-align: right; ">From</td>
                                                <td class="auto-style220" valign="top">
                                                    <asp:DropDownList ID="DropDownListD3" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListD3_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="DropDownListM3" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListM3_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="DropDownListYEAR3" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListYEAR3_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right; width: 44px;" valign="top">To</td>
                                                <td valign="top">
                                                    <asp:DropDownList ID="DropDownListD4" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListD4_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="DropDownListM4" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListM4_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="DropDownListYEAR4" runat="server" AutoPostBack="True" CssClass="txtsearch1" OnSelectedIndexChanged="DropDownListYEAR4_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                        <b style="text-align: center"><span style="color: #000099">
                                        <asp:SqlDataSource ID="SqlDataSReceivedVehicle1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT TOP (3) PlateNumber, dateAdded, idRecord, Name, Phone, NameService, dateRecorded FROM WebDetailsDataView WHERE (dateAdded &gt;= @dateAdded) AND (dateAdded &lt;= @dateAdded2) AND (PlateNumber = @PlateNumber) ORDER BY idRecord DESC">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Label1from0" DbType="Date" Name="dateAdded" PropertyName="Text" />
                                                <asp:ControlParameter ControlID="Label2to0" DbType="Date" Name="dateAdded2" PropertyName="Text" />
                                                <asp:Parameter Name="PlateNumber" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        </span></b>
                                    </asp:Panel>
                                    </span></b>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [idClient], [Name] FROM [CompanyVehicles]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style196">
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="auto-style257">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button44" runat="server" Height="49px" OnClick="Button6_Click1" OnClientClick="doPrintdailyRPTT()" Text="Print Details" Width="122px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style196" colspan="3">
                    <asp:Panel ID="Panel43" runat="server" BackColor="White" BorderStyle="Groove" Width="891px">
                        <table class="auto-style235">
                            <tr>
                                <td class="auto-style246">
                                    <asp:Panel ID="Panel44" runat="server" BorderStyle="Groove" Font-Bold="True" ForeColor="Black" Width="392px">
                                        <table class="auto-style235">
                                            <tr>
                                                <td align="center" colspan="3">
                                                    <asp:Panel ID="Panel45" runat="server">
                                                        &nbsp;</asp:Panel>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="3">
                                                    <img alt="" class="auto-style238" src="http://localhost:55333/Image/MOBILIGO.JPG" />
                                                </td>
                                            </tr>
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
                                <td class="auto-style228">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Panel ID="Panel47" runat="server" Width="309px">
                                        <table class="auto-style245">
                                            <tr>
                                                <td class="auto-style247">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style247">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style247">
                                                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource5" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" style="font-size: large">
                                                        <EditItemTemplate>
                                                            Name:
                                                            <asp:TextBox ID="NameTextBox1" runat="server" Text='<%# Bind("Name") %>' />
                                                            <br />
                                                            Phone:
                                                            <asp:TextBox ID="PhoneTextBox1" runat="server" Text='<%# Bind("Phone") %>' />
                                                            <br />
                                                            brand:
                                                            <asp:TextBox ID="brandTextBox1" runat="server" Text='<%# Bind("brand") %>' />
                                                            <br />
                                                            PlateNumber:
                                                            <asp:TextBox ID="PlateNumberTextBox1" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                            <br />
                                                            <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                            &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                        </EditItemTemplate>
                                                        <InsertItemTemplate>
                                                            Name:
                                                            <asp:TextBox ID="NameTextBox2" runat="server" Text='<%# Bind("Name") %>' />
                                                            <br />
                                                            Phone:
                                                            <asp:TextBox ID="PhoneTextBox2" runat="server" Text='<%# Bind("Phone") %>' />
                                                            <br />
                                                            brand:
                                                            <asp:TextBox ID="brandTextBox2" runat="server" Text='<%# Bind("brand") %>' />
                                                            <br />
                                                            PlateNumber:
                                                            <asp:TextBox ID="PlateNumberTextBox2" runat="server" Text='<%# Bind("PlateNumber") %>' />
                                                            <br />
                                                            <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                            &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                        </InsertItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Panel ID="Panel48" runat="server">
                                                                <table class="auto-style245">
                                                                    <tr>
                                                                        <td class="auto-style248">C<span class="auto-style243">lient Names :</span></td>
                                                                        <td class="auto-style240"><span class="auto-style243">
                                                                            <asp:Label ID="NameLabel0" runat="server" Text='<%# Bind("Name") %>' />
                                                                            </span></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style248"><span class="auto-style243">Contact No :</span></td>
                                                                        <td class="auto-style240"><span class="auto-style243">
                                                                            <asp:Label ID="PhoneLabel0" runat="server" Text='<%# Bind("Phone") %>' />
                                                                            </span></td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <br />
                                                        </ItemTemplate>
                                                    </asp:FormView>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="Panel49" runat="server">
                                        <table class="auto-style245">
                                            <tr>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="Panel50" runat="server" BorderStyle="Groove" BorderWidth="1px" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Width="851px">
                                                        <table class="auto-style245">
                                                            <tr>
                                                                <td class="auto-style251">INVOICE NO:</td>
                                                                <td class="auto-style234" style="text-align: right">FROM:</td>
                                                                <td class="auto-style252" style="text-align: left"><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:Label ID="Label1from0" runat="server" ForeColor="Black" Text="1/1/2014"></asp:Label>
                                                                    </span></b></td>
                                                                <td class="auto-style234" style="text-align: right">TO:</td>
                                                                <td class="auto-style234" style="text-align: left"><b style="text-align: center"><span style="color: #000099">
                                                                    <asp:Label ID="Label2to0" runat="server" ForeColor="Black" Text="1/1/2014"></asp:Label>
                                                                    </span></b></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="auto-style250">&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                                <td class="auto-style249">&nbsp;</td>
                                                                <td>&nbsp;</td>
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
                                <td colspan="2">
                                    <asp:Panel ID="Panel51" runat="server" ForeColor="Black">
                                        <table class="auto-style235">
                                            <tr>
                                                <td class="auto-style236">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                <td>
                                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, Price,PayedCash, NameService, (Price - PayedCash) AS balance, dateRecorded, Payment,dateAdded FROM WebDetailsDataView WHERE (Name = @Name) AND (Payment = 'Credit') AND (dateAdded &gt;= @dateAdded) AND (dateAdded &lt;= @dateAdded2) ORDER BY dateRecorded">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownList1" Name="Name" PropertyName="SelectedValue" Type="String" />
                                                            <asp:ControlParameter ControlID="Label1from0" DbType="Date" Name="dateAdded" PropertyName="Text" />
                                                            <asp:ControlParameter ControlID="Label2to0" DbType="Date" Name="dateAdded2" PropertyName="Text" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT Name, Phone, brand, PlateNumber FROM CompanyVehicles WHERE (Name = @Name)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="DropDownList1" Name="Name" PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" BorderStyle="Groove" BorderWidth="1px" DataSourceID="SqlDataSource4" EnableModelValidation="True"  ShowFooter="True" Width="821px" OnRowDataBound="GridView10_RowDataBound">
                                                        <Columns>
                                                            <asp:TemplateField HeaderText="Sno">
                                                                <ItemTemplate>
                                                                    <%# Container.DataItemIndex + 1 %>
                                                                </ItemTemplate>
                                                                <ItemStyle HorizontalAlign="Center" />
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                            <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand">
                                                            <HeaderStyle Height="30px" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" FooterText="GRAND TOTAL">
                                                            <FooterStyle Height="30px" Font-Bold="True" HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="balance" HeaderText="Service Price" SortExpression="balance">
                                                            <FooterStyle Font-Bold="True" Font-Names="Agency FB" Font-Size="Large" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                            <asp:BoundField DataField="dateAdded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Issued Date " SortExpression="dateAdded" >
                                                            <FooterStyle HorizontalAlign="Center" />
                                                            <ItemStyle HorizontalAlign="Center" />
                                                            </asp:BoundField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style236">&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:Panel ID="Panel52" runat="server">
                                        <table class="auto-style245">
                                            <tr>
                                                <td class="auto-style253">&nbsp;</td>
                                                <td rowspan="4">
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
                                            <tr>
                                                <td class="auto-style253">
                                                    <asp:TextBox ID="TextBox58" runat="server" BorderStyle="None" Visible="False" Width="339px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style253">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style253">&nbsp;</td>
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




<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ClientCreditStatus.aspx.cs" Inherits="MobiWebApplication.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 100%;
    }
        .style21
        {
            height: 38px;
            width: 153px;
            text-align:left;
            
        }
        .style22
        {
            height: 31px;
            width: 153px;
            text-align:left;
            
        }
        .style24
        {
            height: 30px;
            width: 153px;
            text-align:left;
            
        }
        .style30
        {
            height: 38px;
            width: 396px;
        }
        .style31
        {
            height: 31px;
            width: 396px;
        }
        .style33
        {
            height: 30px;
            width: 396px;
        }
        .style62
        {
            height: 32px;
            width: 153px;
            text-align: left;
        }
        .style68
        {
            height: 32px;
            width: 16%;
        }
        .style83
        {
            height: 28px;
            width: 153px;
            text-align: left;
        }
        .style84
        {
            height: 28px;
            width: 396px;
        }
        .style11
    {
        height: 23px;
        font-size:larger
    }
        .style87
        {
            height: 32px;
            width: 127px;
        }
        .style89
        {
            height: 28px;
            width: 127px;
        }
        .style90
        {
            height: 38px;
            width: 127px;
        }
        .style91
        {
            height: 31px;
            width: 127px;
        }
        .style92
        {
            height: 30px;
            width: 127px;
        }
        .style106
        {
            height: 74px;
            width: 127px;
        }
        .style107
        {
            height: 74px;
            width: 153px;
            text-align: left;
        }
        .style108
        {
            height: 74px;
            width: 396px;
           
           
        }
        .style110
        {
            height: 32px;
            width: 298px;
        }
        .style115
        {
            height: 8px;
            width: 127px;
        }
        .style116
        {
            height: 8px;
            width: 153px;
            text-align: left;
        }
        .style117
        {
            height: 8px;
            width: 396px;
        }
        .style118
        {
            width: 103%;
        height: 208px;
    }
        .style122
        {
            width: 910px;
        }
        .style123
        {
            height: 4px;
            width: 127px;
        }
        .style124
        {
            height: 4px;
            width: 153px;
            text-align: left;
        }
        .style125
        {
            height: 4px;
            width: 396px;
        }
        .style127
        {
            height: 20px;
            width: 153px;
        }
        .style128
        {
            height: 20px;
        }
        .style129
        {
            height: 20px;
            width: 127px;
        }
        .style130
        {
            height: 20px;
            width: 16%;
        }
        .style131
        {
            height: 20px;
            width: 298px;
        }
        .style132
        {
            height: 13px;
            width: 127px;
        }
        .style133
        {
            height: 13px;
            width: 153px;
        }
        .style134
        {
            height: 13px;
        }
        .style135
        {
            height: 13px;
            width: 16%;
        }
        .style136
        {
            height: 13px;
            width: 298px;
        }
        .style137
        {
            height: 32px;
            width: 140px;
        }
        .auto-style122
        {
            width: 101%;
            height: 59px;
        }
        .auto-style128
        {
            width: 775px;
            height: 99px;
        }
        .auto-style129
        {
            height: 99px;
        }
        .auto-style148
        {
            width: 775px;
        }
        .auto-style157
        {
            width: 47px;
            font-family:TeamViewer14;
            font-size:x-large;
        }
        .auto-style164
        {
            width: 775px;
            height: 67px;
        }
        .auto-style166
        {
            height: 67px;
        }
        .btnaddannce
        {}
        .auto-style170
        {
            width: 115%;
        }
        .auto-style171
        {
            width: 663px;
        }
        .auto-style158
        {
            width: 513px;
        }
        .auto-style175
        {
            width: 549px;
        }
        .auto-style176
        {
            width: 720px;
        }
        .auto-style179
        {
            width: 170px;
            height: 93px;
        }
        .auto-style180
        {
            width: 207px;
        }
        .auto-style182
        {
            width: 293px;
        }
        .auto-style183
        {
            width: 371px;
        }
        .auto-style184
        {
            width: 48px;
        }
        .auto-style186
        {
            width: 1298px;
        }
        .style25
        {
            width: 296px;
        }
        .auto-style219
        {
            width: 44px;
            height: 24px;
        }
        .auto-style220
        {
            height: 24px;
        }
        .auto-style221
        {
            width: 200px;
        }
        .auto-style222
        {
            width: 100%;
        }
        .auto-style223
        {
            width: 298px;
            height: 93px;
        }
        .auto-style225
        {
            width: 870px;
        }
        .auto-style226
        {
            height: 93px;
        }
        .auto-style227
        {
            width: 4px;
            height: 93px;
        }
        .auto-style228
        {
            width: 505px;
        }
        .auto-style229
        {
            width: 185px;
        }
        .auto-style230
        {
            width: 838px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
     <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate> 
     &nbsp;<script>
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
    <table >
        <tr>
            <td>
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table>
                        <tr>
                            <td  colspan="3">
                                <asp:Panel ID="Panel13" runat="server" BackColor="Gray" Visible="False">
                                    <table >
                                        <tr>
                                            <td class="auto-style223"><b style="text-align: center"><span style="color: #000099">
                                                <asp:Panel ID="Panel11" runat="server" CssClass="PanelHomeLogin">
                                                    <table class="style25">
                                                        <tr>
                                                            <td class="auto-style219" style="text-align: right; ">From</td>
                                                            <td class="auto-style220" valign="top">
                                                                <asp:DropDownList ID="DropDownListD3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownListM3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownListYEAR3" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="text-align: right; width: 44px;" valign="top">To</td>
                                                            <td valign="top">
                                                                <asp:DropDownList ID="DropDownListD4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownListM4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                </asp:DropDownList>
                                                                <asp:DropDownList ID="DropDownListYEAR4" runat="server" AutoPostBack="True" CssClass="txtsearch1">
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <b style="text-align: center"><span style="color: #000099">
                                                    <asp:SqlDataSource ID="SqlDataSReceivedVehicle1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top 3 [PlateNumber], [dateAdded], [idRecord], [Name], [Phone], [NameService], [dateRecorded] FROM [WebDetailsDataView] WHERE (([dateAdded] &gt;= @dateAdded) AND ([dateAdded] &lt;= @dateAdded2) and (PlateNumber = @PlateNumber)) order by idRecord Desc">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="Label1from" DbType="Date" Name="dateAdded" PropertyName="Text" />
                                                            <asp:ControlParameter ControlID="Label2to" DbType="Date" Name="dateAdded2" PropertyName="Text" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                    </span></b>
                                                </asp:Panel>
                                                </span></b></td>
                                            <td class="auto-style226">
                                                </td>
                                            <td class="auto-style226">
                                                <b style="text-align: center">
                                                <table class="auto-style222">
                                                    <tr>
                                                        <td><b style="text-align: center"><span style="color: #000099">
                                                            <asp:Label ID="Label1from" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text="1/1/2014"></asp:Label>
                                                            </span></b></td>
                                                    </tr>
                                                    <tr>
                                                        <td><b style="text-align: center"><span style="color: #000099">
                                                            <asp:Label ID="Label2to" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text="1/1/2014"></asp:Label>
                                                            </span></b></td>
                                                    </tr>
                                                </table>
                                                </b></td>
                                            <td class="auto-style226">
                                                </td>
                                            <td class="auto-style179">
                                                <asp:TextBox ID="TextBox9" runat="server" BorderColor="#003366" BorderStyle="Groove" CssClass="inputSearch" Height="41px" placeholder="Search Client..." Visible="False"></asp:TextBox>
                                            </td>
                                            <td class="auto-style227">
                                                <asp:Button ID="Button2" runat="server" BackColor="#3399FF" BorderStyle="None" BorderWidth="1px" CssClass="BUTTOM" Font-Bold="True" ForeColor="White" Height="46px" onclick="Button2_Click1" onmouseout="this.style.backgroundColor='#4CAF50'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Search" Visible="False" />
                                            </td>
                                            <td class="auto-style226">
                                            </td>
                                            <td class="auto-style227">
                                                <span style="color: #000099"><span style="font-size: small"><b designer:mapid="798" style="text-align: center">
                                                <asp:Label ID="Labelsave" runat="server" style="color: #FF0000; font-size: small"></asp:Label>
                                                </b></span></span>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style166"></td>
                            <td class="auto-style164">
                                <asp:Panel ID="Panel4" runat="server" >
                                    <table class="auto-style122">
                                        <tr>
                                            <td class="auto-style171" f="" rowspan="2" style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text=" CREDIT STATUS"></asp:Label>
&nbsp; </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style157">
                                                <asp:Button ID="Button53" runat="server" BackColor="Orange" BorderStyle="None" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Navy" Height="39px" OnClick="Button52_Click" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='SandyBrown'" Text="BACK" Width="177px" />
                                            </td>
                                            <td class="auto-style157">
                                                <asp:Button ID="Button3" runat="server" BackColor="Orange" BorderStyle="None" BorderWidth="1px" CssClass="BUTTOM" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#003366" Height="39px" OnClick="Button3_Click1" Text="REFLESH" Width="160px" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style129">&nbsp;</td>
                            <td class="auto-style128">
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSoServiceGroup" OnItemCommand="DataList1_ItemCommand">
                                    <ItemTemplate>
                                        <asp:Panel ID="Panel5" runat="server" CssClass="PanelHomeLogin" BackColor="Gray">
                                            <table class="auto-style122">
                                                <tr>
                                                    <td class="style128">
                                                        <asp:Panel ID="Panel8" runat="server" HorizontalAlign="Center">
                                                            <table class="auto-style225">
                                                                <tr>
                                                                    <td  style="text-align: center" class="auto-style180">
                                                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Name") %>' CommandName="ViewDetails" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text='<%# Eval("Name") %>' ></asp:LinkButton>
                                                                        <asp:Label ID="Name" runat="server" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" Text='<%# Eval("Name") %>' Visible="False"></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="Panel4" runat="server" BackColor="#006666" CssClass="BUTTOM">
                                                            <asp:Panel ID="Panel6" runat="server">
                                                                <table class="auto-style122">
                                                                    <tr>
                                                                        <td class="auto-style158">
                                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource3" EnableModelValidation="True" Font-Bold="False" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="869px">
                                                                                <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                                <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                                <Columns>
                                                                                    <asp:TemplateField HeaderText="Sno">
                                                                                        <ItemTemplate>
                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                        </ItemTemplate>
                                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                                    </asp:TemplateField>
                                                                                    <asp:BoundField DataField="Name" HeaderText="Client Name" SortExpression="Name" />
                                                                                    <asp:BoundField DataField="Phone" HeaderText="Contact No" SortExpression="Phone" />
                                                                                    <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                                    <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                                    <ItemStyle ForeColor="#99FF33" />
                                                                                    </asp:BoundField>
                                                                                </Columns>
                                                                                <EditRowStyle BackColor="#999999" />
                                                                                <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                            </asp:GridView>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="auto-style158">
                                                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT PlateNumber, brand, SUM(Price) AS Price, Payment,Name,Phone FROM WebDetailsDataView WHERE (Name = @Name) AND (Payment = 'Credit') GROUP BY Name, PlateNumber, brand, Payment,Phone">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="SqlDataSub" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT Name, SUM(Price) AS Price FROM WebDetailsDataView WHERE (Name = @Name)  AND (Payment = 'Credit') GROUP BY Name">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:SqlDataSource ID="SqlDataNumber" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT Name, COUNT(PlateNumber) AS No FROM WebDetailsDataView WHERE (Name = @Name)  AND (Payment = 'Credit') GROUP BY Name">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="Name" Name="Name" PropertyName="Text" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                            <asp:Panel ID="Panel9" runat="server">
                                                                                <table style="width: 851px">
                                                                                    <tr>
                                                                                        <td class="auto-style184">
                                                                                            &nbsp;</td>
                                                                                        <td class="auto-style183">
                                                                                            &nbsp;</td>
                                                                                        <td class="auto-style182">
                                                                                            <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSub" EnableModelValidation="True">
                                                                                                <EditItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </EditItemTemplate>
                                                                                                <InsertItemTemplate>
                                                                                                    NameService:
                                                                                                    <asp:TextBox ID="NameServiceTextBox" runat="server" Text='<%# Bind("NameService") %>' />
                                                                                                    <br />
                                                                                                    Price:
                                                                                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                                    <br />
                                                                                                    PayedCash:
                                                                                                    <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                                                                    <br />
                                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                                </InsertItemTemplate>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Panel ID="Panel10" runat="server">
                                                                                                        <table class="auto-style170">
                                                                                                            <tr>
                                                                                                                <td style="text-align: right">
                                                                                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Sub-Total:"></asp:Label>
                                                                                                                </td>
                                                                                                                <td style="text-align: left">
                                                                                                                    <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </asp:Panel>
                                                                                                </ItemTemplate>
                                                                                            </asp:FormView>
                                                                                        </td>
                                                                                        <td>
                                                                                            &nbsp;</td>
                                                                                    </tr>
                                                                                </table>
                                                                            </asp:Panel>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </asp:Panel>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </ItemTemplate>
                                </asp:DataList>
                                <br />
                                <asp:Panel ID="Panel12" runat="server" BackColor="Gray" Width="890px">
                                    <table >
                                        <tr>
                                            <td class="auto-style221">&nbsp;</td>
                                            <td class="auto-style186">
                                                <span style="color: #000099"><span style="font-size: small">
                                                <asp:TextBox ID="TextBox11" runat="server" BackColor="Gray" BorderStyle="None" CssClass="uppercase" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" style="text-align: right" Visible="False"></asp:TextBox>
                                                <asp:TextBox ID="TextBox13" runat="server" Visible="False"></asp:TextBox>
                                                </span></span></td>
                                            <td class="auto-style176">
                                                <asp:FormView ID="FormView4" runat="server" DataSourceID="SqlDataTOTAL" EnableModelValidation="True">
                                                    <EditItemTemplate>
                                                        Price:
                                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                        <br />
                                                        PayedCash:
                                                        <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </EditItemTemplate>
                                                    <InsertItemTemplate>
                                                        Price:
                                                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                        <br />
                                                        PayedCash:
                                                        <asp:TextBox ID="PayedCashTextBox" runat="server" Text='<%# Bind("PayedCash") %>' />
                                                        <br />
                                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <table class="auto-style170">
                                                            <tr>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="TOTAL CREDIT:"></asp:Label>
                                                                </td>
                                                                <td style="text-align: left">
                                                                    <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Agency FB" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                    </ItemTemplate>
                                                </asp:FormView>
                                            </td>
                                            <td class="auto-style175">
                                                &nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style129">
                                &nbsp;</td>
                            <td class="auto-style128">
                                <asp:Panel ID="Panel7" runat="server" BackColor="Gray">
                                    <table class="auto-style222">
                                        <tr>
                                            <td class="auto-style228" valign="top">
                                                <asp:Panel ID="Panel15" runat="server" BackColor="#006666" CssClass="PanelHomeLogin">
                                                    <table class="auto-style222">
                                                        <tr>
                                                            <td><span style="color: #000099"><span style="font-size: small">
                                                                <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" CellPadding="8" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView10_SelectedIndexChanged" ShowFooter="True" Visible="False" Width="512px">
                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Sno">
                                                                            <ItemTemplate>
                                                                                <%# Container.DataItemIndex + 1 %>
                                                                            </ItemTemplate>
                                                                            <ItemStyle HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="Name" HeaderText="ClientName" SortExpression="Name" />
                                                                        <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                                                        <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                        <ItemStyle ForeColor="#99FF33" />
                                                                        </asp:BoundField>
                                                                        <asp:TemplateField>
                                                                            <ItemTemplate>
                                                                                <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" BackColor="red" OnCheckedChanged="CheckBox6_CheckedChanged" />
                                                                            </ItemTemplate>
                                                                            <FooterStyle BackColor="White" />
                                                                            <HeaderStyle BackColor="Orange" />
                                                                            <ItemStyle BackColor="gray" HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                    <EditRowStyle BackColor="#999999" />
                                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                </asp:GridView>
                                                                </span></span></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            <td valign="top">
                                                <asp:Panel ID="Panel16" runat="server" BackColor="#006666" CssClass="PanelHomeLogin">
                                                    <table class="auto-style222">
                                                        <tr>
                                                            <td>
                                                                <table class="auto-style222">
                                                                    <tr>
                                                                        <td class="auto-style229">
                                                                            <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Vehicle Historic"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDaHistoric0" EnableModelValidation="True">
                                                                                <EditItemTemplate>
                                                                                    Price:
                                                                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                                                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </EditItemTemplate>
                                                                                <InsertItemTemplate>
                                                                                    Price:
                                                                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                                                                    <br />
                                                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                                                </InsertItemTemplate>
                                                                                <ItemTemplate>
                                                                                    <span style="color: #000099"><span style="font-size: small">
                                                                                    <asp:Panel ID="Panel17" runat="server">
                                                                                        <table>
                                                                                            <tr>
                                                                                                <td style="text-align: right">
                                                                                                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="White" Text="Total:"></asp:Label>
                                                                                                </td>
                                                                                                <td style="text-align: left">
                                                                                                    <asp:Label ID="PriceLabel" runat="server" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Orange" Text='<%# Bind("Price") %>' />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </asp:Panel>
                                                                                    </span></span>
                                                                                </ItemTemplate>
                                                                            </asp:FormView>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td><span style="color: #000099"><span style="font-size: small">
                                                                <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDaHistoric" EnableModelValidation="True" Font-Bold="True" Font-Names="Tahoma" ForeColor="#333333" GridLines="None" Width="350px">
                                                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Sno">
                                                                            <ItemTemplate>
                                                                                <%# Container.DataItemIndex + 1 %>
                                                                            </ItemTemplate>
                                                                            <ItemStyle HorizontalAlign="Center" />
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="dateRecorded" DataFormatString="{0:d/MM/yyyy}" HeaderText="Date" SortExpression="dateRecorded" />
                                                                        <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                                                                        <ItemStyle ForeColor="#99FF33" />
                                                                        </asp:BoundField>
                                                                    </Columns>
                                                                    <EditRowStyle BackColor="#999999" />
                                                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                                                </asp:GridView>
                                                                </span></span></td>
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
                            <td>&nbsp;</td>
                            <td class="auto-style148">
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber], [brand], [NameService], [Repetition ],[Price], [PayedCash], [Payment], [dateRecorded],[userAdded] FROM [WebDetailsDataView] WHERE ([PlateNumber] = @PlateNumber) ORDER BY [dateRecorded] DESC">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox9" Name="PlateNumber" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSoServiceGroup" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT  Name FROM WebDetailsDataView WHERE (Payment = 'Credit')">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataTOTAL" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT SUM(Price) AS Price FROM WebDetailsDataView WHERE (dateAdded &gt;= @dateAdded) AND (dateAdded &lt;= @dateAdded2) AND (Payment = 'Credit')">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label1from" Name="dateAdded" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="Label2to" Name="dateAdded2" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDaHistoric" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber], [brand], [NameService], [Repetition ],[Price], [PayedCash], [Payment], [dateRecorded],[userAdded] FROM [WebDetailsDataView] WHERE  PlateNumber=@PlateNumber  AND (Payment = 'Credit') ORDER BY idRecord DESC">
                                <SelectParameters>                                      
                                        <asp:ControlParameter ControlID="TextBox13" Name="PlateNumber" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDaHistoric0" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT  sum([Price]) as Price  FROM [WebDetailsDataView] WHERE  PlateNumber=@PlateNumber  AND (Payment = 'Credit')">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="TextBox13" Name="PlateNumber" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDatTotalNo" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT DISTINCT COUNT(PlateNumber) AS No FROM WebDetailsDataView WHERE (dateAdded &gt;= @dateAdded) AND (dateAdded &lt;= @dateAdded2) AND (Payment = 'Credit')">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="Label1from" Name="dateAdded" PropertyName="Text" />
                                        <asp:ControlParameter ControlID="Label2to" Name="dateAdded2" PropertyName="Text" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                
                    
                &nbsp;</td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        </ContentTemplate></asp:UpdatePanel>
    
    </asp:Content>




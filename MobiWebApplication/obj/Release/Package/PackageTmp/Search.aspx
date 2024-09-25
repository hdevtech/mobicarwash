<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="MobiWebApplication.WebForm43" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
    {
        width: 99%;
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
        .auto-style15
    {
        height: 38px;
        width: 62px;
    }
        .auto-style121
        {
            height: 89px;
        }
        .auto-style122
        {
            width: 101%;
            height: 59px;
        }
        .auto-style127
        {
            width: 24px;
            height: 99px;
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
        .auto-style149
        {
            width: 24px;
        }
        .auto-style157
        {
            width: 47px;
            font-family:TeamViewer14;
            font-size:x-large;
        }
        .auto-style163
        {
            width: 24px;
            height: 67px;
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
        .auto-style167
        {
            height: 38px;
            width: 252px;
        }
        .auto-style168
        {
            width: 88%;
        }
        .auto-style169
        {
            height: 38px;
            width: 243px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
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
    <table class="style1">
        <tr>
            <td class="auto-style15">
               
                &nbsp;</td>
            <td class="auto-style169">
                
                    
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                
                    
                </td>
            <td class="auto-style167">
                
                    
                &nbsp;</td>
            <td class="style30">
                
                    
                <span __designer:mapid="796" style="color: #000099"><span __designer:mapid="797" style="font-size: small"><b __designer:mapid="798" style="text-align: center">
                <asp:Label ID="Labelsave" runat="server" style="color: #FF0000; font-size: small"></asp:Label>
                </b></span></span>
                
                    
                </td>
        </tr>
        <tr>
            <td class="auto-style15">
               
                &nbsp;</td>
            <td class="auto-style169">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="OperationDay" DataValueField="OperationDay" Height="40px" Width="229px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT top 30 [idSales], [OperationDay] FROM [StartDaily] ORDER BY [idSales] DESC"></asp:SqlDataSource>
            </td>
            <td class="auto-style167">
                <asp:Button ID="Button1" runat="server" CssClass="btnaddannce" onmouseout="this.style.backgroundColor='Orange'" onmouseover="this.style.backgroundColor='DodgerBlue'" Height="46px" Text="Download" Width="192px" OnClick="Button1_Click1" OnClientClick="doPrintdailyRPT()" BackColor="Orange" BorderStyle="None" BorderWidth="1px" Font-Bold="True" ForeColor="#003366" />
                <br />
                <br />
            </td>
            <td class="style30">
                
                    
                <asp:Panel ID="Panel5" runat="server" Width="284px">
                    <table class="auto-style168">
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" BorderColor="#003366" BorderStyle="Groove" CssClass="inputSearch" Height="41px" placeholder="      Search ...  " Width="151px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" BackColor="#3399FF" BorderWidth="1px" Font-Bold="True" ForeColor="White" Height="46px" onclick="Button2_Click1" onmouseout="this.style.backgroundColor='#4CAF50'" onmouseover="this.style.backgroundColor='DodgerBlue'" Text="Search" Width="116px" BorderStyle="None" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" BackColor="Orange" BorderStyle="None" BorderWidth="1px" Font-Bold="True" ForeColor="#003366" Height="46px" OnClick="Button3_Click1" Text="Reflesh" Width="71px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style121" colspan="4">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style163"></td>
                            <td class="auto-style164">
                                <asp:Panel ID="Panel4" runat="server" Height="61px" Width="860px">
                                    <table class="auto-style122">
                                        <tr>
                                            <td class="auto-style157">&nbsp;</td>
                                            <td rowspan="2" F style="text-align: center; font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">DAILY SERVED VEHICLES&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style157">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="auto-style166"></td>
                        </tr>
                        <tr>
                            <td class="auto-style127"></td>
                            <td class="auto-style128">
                                <asp:GridView ID="GridView1" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Width="871px" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableModelValidation="True" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                                    <RowStyle BackColor="#006666" ForeColor="White" Font-Bold="True"/>
                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                      <Columns>
                                          <asp:BoundField DataField="PlateNumber" HeaderText="PlateNumber" SortExpression="PlateNumber" />
                                          <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                                          <asp:BoundField DataField="NameService" HeaderText="NameService" SortExpression="NameService" />
                                          <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
                                           </asp:BoundField>
                                          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                                           </asp:BoundField>
                                          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                          <asp:BoundField DataField="dateRecorded" HeaderText="dateRecorded" SortExpression="dateRecorded" />
                                      </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="gray" ForeColor="White" Font-Bold="True" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber], [brand], [NameService], [Price], [Name], [Phone], [dateRecorded] FROM [WebDetailsDataView] WHERE ([OperationDay] = @OperationDay) ORDER BY [dateRecorded]">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="8" DataSourceID="SqlDataSource3" EnableModelValidation="True" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" Width="871px" Visible="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                    <RowStyle BackColor="#006666" Font-Bold="True" ForeColor="White" />
                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="Gray" />
                                    <Columns>
                                        <asp:BoundField DataField="PlateNumber" HeaderText="PlateNumber" SortExpression="PlateNumber" />
                                        <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                                        <asp:BoundField DataField="NameService" HeaderText="NameService" SortExpression="NameService" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                        <asp:BoundField DataField="dateRecorded" HeaderText="dateRecorded" SortExpression="dateRecorded" />
                                    </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="gray" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber], [brand], [NameService], [Price], [Name], [Phone], [dateRecorded] FROM [WebDetailsDataView] WHERE (([OperationDay] = @OperationDay) AND ([Name] = @Name))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="OperationDay" PropertyName="SelectedValue" Type="String" />
                                        <asp:ControlParameter ControlID="TextBox9" Name="Name" PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                            </td>
                            <td class="auto-style129"></td>
                        </tr>
                        <tr>
                            <td class="auto-style149">&nbsp;</td>
                            <td class="auto-style148">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                
                    
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                
                </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>


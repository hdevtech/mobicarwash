<%@ Page Title="" Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="ViewServedVehicle.aspx.cs" Inherits="MobiWebApplication.WebForm26" %>
<%--<%@ Page Language="C#" MasterPageFile="~/Mobi.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MobiWebApplication.WebForm1" Title="Untitled Page" %>--%>
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
        .auto-style121
        {
            height: 89px;
        }
        .auto-style122
        {
            width: 99%;
            height: 48px;
        }
        .auto-style127
        {
            width: 10px;
            height: 99px;
        }
        .auto-style128
        {
            height: 99px;
        }
        .auto-style129
        {
            height: 99px;
        }
        .auto-style145
        {
            width: 767px;
        }
        .auto-style149
        {
            width: 10px;
        }
        .auto-style156
        {
            height: 111px;
        }
        .auto-style161
        {
            width: 2340px;
            }
        .auto-style162
        {
            width: 767px;
            height: 12px;
        }
        .auto-style163
        {
            height: 12px;
        }
        .auto-style166
        {            width: 709px;
        }
        .auto-style169
        {
            width: 37px;
            grid-column-align:center;
            height: 32px;
        }
        .auto-style170
        {
            width: 37px;
            height: 6px;
        }
        .auto-style179
        {
            width: 2334px;
            height: 32px;
        }
        .btnlogin
        {}
        .auto-style180
        {
            width: 2340px;
            height: 32px;
        }
        .auto-style181
        {
            height: 32px;
        }
        .auto-style182
        {
            height: 6px;
        }
        .auto-style183
        {
            width: 10px;
            height: 42px;
        }
        .auto-style184
        {
            width: 767px;
            height: 42px;
        }
        .auto-style185
        {
            height: 42px;
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
            <td class="auto-style156">
                    
                <asp:Panel ID="Panel5" runat="server" BackColor="#006666" Height="117px" Width="921px">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style161" colspan="2" rowspan="2">&nbsp;</td>
                            <td class="auto-style161" rowspan="2">
                                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style162" colspan="6">&nbsp;</td>
                            <td class="auto-style163">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style170" style="color:white">
                                <asp:Label ID="Label2" runat="server"  Font-Bold="True" Text="From"></asp:Label>

                            </td>
                            <td class="auto-style182">
                                </td>
                            <td class="auto-style166" style="color:white" rowspan="2">                            
                                &nbsp;</td>

                            <td style="color:white" colspan="2" class="auto-style182" >
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="To"></asp:Label>
                            </td>
                            <td class="auto-style128" rowspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style180"></td>
                            <td class="auto-style179">
                                <asp:Button ID="Button1" runat="server" CssClass="btnlogin" Height="37px" OnClick="Button1_Click" OnClientClick="doPrintdailyRPT()" Text="Download" Width="180px" />
                            </td>
                            <td class="auto-style180">
                                <asp:Button ID="Button3" runat="server" CssClass="btnlogin" Height="39px" OnClick="Button3_Click1" Text="View" Width="132px" />
                            </td>
                            <td class="auto-style169">
                                <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Groove" BorderWidth="1px" CssClass="input" Height="31px" Width="213px"></asp:TextBox>
                            </td>
                            <td class="auto-style181">
                            </td>
                            <td class="auto-style181">
                                <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Groove" BorderWidth="1px" CssClass="input" Height="31px" Width="220px"></asp:TextBox>
                            </td>
                            <td class="auto-style181">
                            </td>
                            <td class="auto-style181">
                                </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style121">
                <asp:Panel ID="Panel3" runat="server" BackColor="#006666">
                    <table class="auto-style122">
                        <tr>
                            <td class="auto-style183"></td>
                            <td class="auto-style184">
                                <table class="auto-style122">
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td rowspan="2" style="text-align: center ;font-size: x-large; font-family:'Times New Roman'; color:orange; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SERVED VEHICLES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FROM........TO.........</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td class="auto-style185"></td>
                        </tr>
                        <tr>
                            <td class="auto-style127"></td>
                            <td class="auto-style128">
                                <asp:GridView ID="gvInformation" runat="server" CellPadding="8" ForeColor="#333333" GridLines="None" Height="56px" Width="886px" style="margin-left: 0px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableModelValidation="True" OnRowDataBound="gvInformation_RowDataBound" OnSelectedIndexChanged="gvInformation_SelectedIndexChanged" ShowFooter="True">
                                     <RowStyle BackColor="#006666" ForeColor="White" Font-Bold="True"/>
                                    <FooterStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="gray" />
                                       <Columns>
                                            <asp:TemplateField HeaderText="Sno">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                          <asp:BoundField DataField="PlateNumber" HeaderText="Plate No" SortExpression="PlateNumber" />
                                        <asp:BoundField DataField="brand" HeaderText="Vehicle" SortExpression="brand" />
                                        <asp:BoundField DataField="NameService" HeaderText="Service" SortExpression="NameService" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                        <asp:BoundField DataField="PayedCash" HeaderText="Paid" SortExpression="PayedCash" />
                                        <asp:BoundField DataField="Payment" HeaderText="Paid by" SortExpression="Payment" />
                                        <asp:BoundField DataField="dateRecorded" HeaderText="date Recorded" SortExpression="dateRecorded" />
                                        <asp:BoundField DataField="userAdded" HeaderText="Operator" SortExpression="userAdded" />
                                       </Columns>
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="gray" ForeColor="White" Font-Bold="True" />
                                </asp:GridView>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SmartAdiminConnectionString %>" SelectCommand="SELECT [PlateNumber], [brand], [NameService], [Price], [PayedCash], [Payment], [userAdded], [dateRecorded] FROM [WebDetailsDataView] WHERE (([dateRecorded] &gt; @dateRecorded) AND ([dateRecorded] &lt; @dateRecorded2)) ORDER BY [dateRecorded]" OnSelecting="SqlDataSource1_Selecting1">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="TextBox1" Name="dateRecorded" PropertyName="Text" Type="DateTime" />
                                          <asp:ControlParameter ControlID="TextBox2" Name="dateRecorded2" PropertyName="Text" Type="DateTime" />
                                      </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style129"></td>
                        </tr>
                        <tr>
                            <td class="auto-style149">&nbsp;</td>
                            <td class="auto-style145">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        </table>
   
    <div>
 
    
    </div>
        
    
    </asp:Content>


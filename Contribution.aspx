<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="Contribution, App_Web_fwlgusei" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <style type="text/css">
        body
        {
            font-family: 'Roboto', sans-serif;
        }

        .backimg
        {
            background-image: url("tablestyle/table-images/patternb-head.png");
        }

        .saveBtn
        {
            background: #0094ff none repeat scroll 0 0;
            border: 0 none;
            border-radius: 4px;
            box-shadow: none;
            color: #fff;
            font-family: "Roboto",sans-serif;
            font-size: 16px;
            font-weight: 400;
            height: 30px;
            line-height: 30px;
            margin: 0;
            padding: 0 20px;
            text-shadow: none;
            transition: all 0.3s ease 0s;
            vertical-align: middle;
            -moz-user-select: none;
            cursor: pointer;
            display: inline-block;
            white-space: nowrap;
            width: 50%;
        }

        .txtColor
        {
            color: #4800ff;
        }

        .auto-style1
        {
            width: 185px;
        }

        .auto-style2
        {
            height: 30px;
            width: 185px;
        }

        .auto-style3
        {
            width: 419px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
                    <br />
        <br />
        <table style="width: 100%; height: 350px; margin-top: 30px;">

            <tr>
                <td class="style13" style="vertical-align: top">
                    <table style="width: 88%; height: 30px;">
                        <tr>

                            <td class="auto-style1">
                                    <asp:Label ID="txtAreaCode" ClientIDMode="Static" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" Text="Label" CssClass="txtColor" style="display:none"></asp:Label>
                                
                          <asp:Label ID="TxtUserName" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13px"
                              CssClass="txtColor" Text="Label"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>

                            </td>
                        </tr>

                    </table>
                    <br />
                    <div class="box1">
                        <fieldset style="width: 240PX;">
                            <legend style="color: white">Contribution Report</legend>

                            <table style="width: 100%; margin-top: 5px;">
                                     <tr>

                            <td class="auto-style2" colspan="2">
                                <asp:Label ID="Label2" runat="server" Text="Importer Code-Name :" CssClass="txtColor"></asp:Label><br />
                                <%--<input type="text" onkeypress="return isNumberKey(event)" name="txtImporterCode" id="txtImporterCode" style="height:25px" class="form-control"/>--%>
                                <asp:DropDownList ID="impDropDownList" runat="server" Style="height: 25px" Width="180px" AutoPostBack="true" OnSelectedIndexChanged="impDropDownList_SelectedIndexChanged">
                                </asp:DropDownList>
                                <span id="lblImpCode" style="color: BlueViolet; font-size: 11px;"></span>
                            </td>
                            <td class="style14">
                                
                            </td>
                        </tr>
                                <tr>

                                    <td class="auto-style4" align="center">
                                        <asp:Label ID="Label1" runat="server" Text="From Date :" CssClass="txtColor"></asp:Label><br />
                                        <asp:TextBox ID="txtfromdate" runat="server" Width="100px"></asp:TextBox>

                                    </td>
                                    <td class="auto-style2" align="center">
                                        <asp:Label ID="Label5" runat="server" Text="To Date :" CssClass="txtColor"></asp:Label><br />
                                        <asp:TextBox ID="txttodate" runat="server" Width="100px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" BackColor="#669999" ForeColor="White" />
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Label ID="txtImporterCode" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="gray" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </fieldset>

                    </div>
                    <div>
                        <asp:Panel ID="Panel1" runat="server" Width="100%">
                            <asp:Chart ID="crtClassWise" runat="server" Height="260px">
                                <Series>
                                    <asp:Series ChartType="Pie" CustomProperties="DrawingStyle=Pie,
            PieDrawingStyle=Concave, MaxPixelPointWidth=20"
                                        IsValueShownAsLabel="True" Legend="Legend1" LegendText="#VALX" Name="Series1" ShadowOffset="1">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea AlignmentOrientation="All" Area3DStyle-Enable3D="True" Name="ChartArea1">
                                        <Area3DStyle Enable3D="true" />
                                    </asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Name="Legend1">
                                    </asp:Legend>
                                </Legends>
                                <Titles>
                                    <asp:Title Alignment="TopCenter" BackColor="255, 128, 128" Font="Verdana, 12pt" Name="Title1" Text="Item_Class Wise Report">
                                    </asp:Title>
                                </Titles>
                            </asp:Chart>
                            <%--<div>--%>
                            &nbsp;
                            <asp:Label ID="lblmsg" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px"
                                Text="" ForeColor="Red"></asp:Label>
                            <%--</div>--%>
                        </asp:Panel>
                    </div>

                    <div>
                    </div>
                </td>
            </tr>


        </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
      <script type="text/javascript">
          $(function () {

              $('#txtfromdate').datepicker({
                  inline: true,
                  dateFormat: "dd/mm/yy",
              });

              $('#txttodate').datepicker({
                  inline: true,
                  dateFormat: "dd/mm/yy",
              });
          });
    </script>
</asp:Content>


<%--<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>--%>



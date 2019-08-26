<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="AllTransaction, App_Web_d1qb3zxq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="Server">

    <style type="text/css">
        .txtColor
        {
            color: #4800ff;
        }
    </style>
    <style type="text/css">
        .Initial
        {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background: url("images/InitialImage.png") no-repeat right top;
            color: Black;
            font-weight: bold;
        }

            .Initial:hover
            {
                color: White;
                background: url("images/SelectedButton.png") no-repeat right top;
            }

        .Clicked
        {
            float: left;
            display: block;
            background: url("images/SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            color: Black;
            font-weight: bold;
            color: White;
        }
        /* Background Color */
        .tb
        {
            background-color: #99FFCC;
            border: 1px solid #008000;
            width: 230px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <table width="90%" cssclass="table table-condensed table-striped table-hover table-bordered pull-left">
                <tr>
                    <td>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Button Text="Importer In" BorderStyle="None" CssClass="Initial" ID="Tab1" runat="server"
                                    OnClick="Tab1_Click" />
                                <asp:Button Text="Importer To Dist" BorderStyle="None" CssClass="Initial" ID="Tab2" runat="server"
                                    OnClick="Tab2_Click" />
                                <asp:Button Text="Importer To SS" BorderStyle="None" CssClass="Initial" ID="Tab3" runat="server"
                                    OnClick="Tab3_Click" />
                                <asp:Button Text="SS To Dist" BorderStyle="None" CssClass="Initial" ID="Tab4" runat="server"
                                    OnClick="Tab4_Click" />
                                <asp:Button Text="Dist to Retailer" BorderStyle="None" CssClass="Initial" ID="Tab6" runat="server"
                                    OnClick="Tab6_Click" />
                                <asp:Button Text="By Reference" BorderStyle="None" CssClass="Initial" ID="Tab5" runat="server"
                                    OnClick="Tab5_Click" />
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <asp:Label ID="txtAreaCode" ClientIDMode="Static" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" Text="Label" CssClass="txtColor" Style="display: none"></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:MultiView ID="MainView" runat="server">
                                    <asp:View ID="View1" runat="server">
                                        <div class="col-md-6">
                                            <div class="widget">
                                                <div class="widget-header">
                                                </div>
                                                <div class="widget-body">
                                                    <form>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">Importer Code-Name:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:DropDownList ID="impInDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">From Date:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:TextBox ID="impInFromDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">To Date:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:TextBox ID="impInToDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                    <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:Button ID="btnImpIn" runat="server" OnClick="btnImpIn_Click" ToolTip="Show" Text="Show Report" CssClass="btn btn-success" />
                                                                    <asp:ImageButton ID="ImageImpIn" runat="server" AlternateText="ExcelML" class="btn btn-info pull-right" ImageUrl="~/images/excel.png" OnClick="ImageImpIn_Click" ToolTip="Export to excel" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="txttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="lbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="Label9" runat="server" Text=" " ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="txttotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="lbltotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <asp:Panel ID="Panel1" runat="server" Width="100%">
                                                            <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                                runat="server" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField DataField="TRNNO" HeaderText="TRNNO" />
                                                                    <asp:BoundField DataField="UDT" HeaderText="Date" />
                                                                    <asp:BoundField DataField="ITEM_ID" HeaderText="Item Id" />
                                                                    <asp:BoundField DataField="ITEM_NAME" HeaderText="Item Name" />
                                                                    <asp:BoundField DataField="QTY" HeaderText="QTY." />
                                                                    <asp:BoundField DataField="SAMPLE_QTY" HeaderText="Sample QTY." />
                                                                    <asp:BoundField DataField="LANDING_COST" HeaderText="Rate" />
                                                                    <asp:BoundField DataField="value" HeaderText="Value" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </asp:Panel>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                        <div class="content-body">
                                            <div class="main-content">
                                                <div class="container-fluid">
                                                    <div>
                                                        <div class="form-group">
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Importer:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="ImpDistDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="impDistDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Region:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="rgnDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="rgnDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Zone:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="zoneDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="zoneDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Area:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="areaDropDownList" runat="server" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Dist Code:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="distDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">From Date:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:TextBox ID="distfromdate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">To Date:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:TextBox ID="disttodate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">

                                                                    <asp:Button ID="btnImpDist" runat="server" OnClick="btnImpDist_Click" ToolTip="Show" Text="Show" CssClass="btn btn-primary" Width="70px" />


                                                                    <asp:ImageButton ID="ImageImpToDist" runat="server" AlternateText="ExcelML" CssClass="btn btn-success" ImageUrl="~/images/excel.png" OnClick="ImageImpToDist_Click" ToolTip="Export to excel" />

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-6">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:Label ID="IDtxttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                                                    <asp:Label ID="IDlbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>

                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:Label ID="IDtxttotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                                                    <asp:Label ID="IDlbltotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <asp:Panel ID="Panel2" runat="server" Width="100%">
                                                            <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                                runat="server" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField DataField="REF_NO" HeaderText="Bill NO" />
                                                                    <asp:BoundField DataField="TRNNO" HeaderText="TRN NO" />
                                                                    <asp:BoundField DataField="UDT" HeaderText="Bill Date" />
                                                                    <asp:BoundField DataField="EDT" HeaderText="Entry Date" />
                                                              <asp:BoundField DataField="IMPORTER_NAME" HeaderText="Importer Name" />
                                                                    <asp:BoundField DataField="DIST_NAME" HeaderText="DIST Name" />
                                                                    <asp:BoundField DataField="REGION_NAME" HeaderText="Region Name" />
                                                                    <asp:BoundField DataField="ZONE_NAME" HeaderText="Zone Name" />
                                                                    <asp:BoundField DataField="ADDR2" HeaderText="Base" />
                                                                    <asp:BoundField DataField="ITEM_ID" HeaderText="Item Id" />
                                                                    <asp:BoundField DataField="ITEM_NAME" HeaderText="Item Name" />
                                                                    <asp:BoundField DataField="GROUP_NAME" HeaderText="Group" />
                                                                    <asp:BoundField DataField="QTY" HeaderText="QTY." />
                                                                    <asp:BoundField DataField="SAMPLE_QTY" HeaderText="Sample QTY." />
                                                                    <asp:BoundField DataField="LANDING_COST" HeaderText="Rate" />
                                                                    <asp:BoundField DataField="value" HeaderText="Value" />

                                                                </Columns>
                                                            </asp:GridView>

                                                        </asp:Panel>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="View3" runat="server">
                                        <div class="col-md-6">
                                            <div class="widget">
                                                <div class="widget-header">
                                                    <%--     <div class="btn-primary">
                                                        Importer To SS
                                                    </div>--%>
                                                </div>
                                                <div class="widget-body">
                                                    <form>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">Importer Code-Name:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:DropDownList ID="ImpSSDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ImpSSDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">SS Code-Name:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:DropDownList ID="SSDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">From Date:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:TextBox ID="SSFromDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">To Date:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:TextBox ID="SSToDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:Button ID="btnImpSS" runat="server" OnClick="btnImpSS_Click" ToolTip="Show" Text="Show Report" CssClass="btn btn-success" />
                                                                    <asp:ImageButton ID="ImageImpSS" runat="server" AlternateText="ExcelML" class="btn btn-info pull-right" ImageUrl="~/images/excel.png" OnClick="ImageImpSS_Click" ToolTip="Export to excel" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="IStxttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="ISlbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="Label4" runat="server" Text=" " ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="IStxttotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="ISlbltotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <asp:Panel ID="Panel3" runat="server" Width="100%">
                                                            <asp:GridView ID="GridView3" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                                runat="server" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField DataField="TRNNO" HeaderText="TRNNO" />
                                                                    <asp:BoundField DataField="UDT" HeaderText="Date" />
                                                                    <asp:BoundField DataField="name" HeaderText="DIST Name" />
                                                                    <asp:BoundField DataField="ITEM_ID" HeaderText="Item Id" />
                                                                    <asp:BoundField DataField="ITEM_NAME" HeaderText="Item Name" />
                                                                    <asp:BoundField DataField="QTY" HeaderText="QTY." />
                                                                    <asp:BoundField DataField="SAMPLE_QTY" HeaderText="Sample QTY." />
                                                                    <asp:BoundField DataField="LANDING_COST" HeaderText="Rate" />
                                                                    <asp:BoundField DataField="value" HeaderText="Value" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </asp:Panel>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                        <div class="col-md-6">
                                            <div class="widget">
                                                <div class="widget-header">
                                                    <%--          <div class="btn-primary">
                                                        SS To Dist
                                                    </div>--%>
                                                </div>
                                                <div class="widget-body">
                                                    <form>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">Importer Code-Name:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:DropDownList ID="SDimpDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="SDimpDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">SS Code-Name:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:DropDownList ID="SDssDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="SDssDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">DIST Code-Name:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:DropDownList ID="SDdistDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">From Date:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:TextBox ID="SDFromDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">To Date:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:TextBox ID="SDToDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:Button ID="btnSD" runat="server" OnClick="btnSD_Click" ToolTip="Show" Text="Show Report" CssClass="btn btn-success" />
                                                                    <asp:ImageButton ID="ImageSD" runat="server" AlternateText="ExcelML" class="btn btn-info pull-right" ImageUrl="~/images/excel.png" OnClick="ImageSD_Click" ToolTip="Export to excel" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="SDtxttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="SDlbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="Label5" runat="server" Text=" " ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="SDtxttotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="SDlbltotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <asp:Panel ID="Panel4" runat="server" Width="100%">
                                                            <asp:GridView ID="GridView4" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                                runat="server" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField DataField="TRNNO" HeaderText="TRNNO" />
                                                                    <asp:BoundField DataField="UDT" HeaderText="Date" />
                                                                    <asp:BoundField DataField="name" HeaderText="DIST Name" />
                                                                    <asp:BoundField DataField="ITEM_ID" HeaderText="Item Id" />
                                                                    <asp:BoundField DataField="ITEM_NAME" HeaderText="Item Name" />
                                                                    <asp:BoundField DataField="QTY" HeaderText="QTY." />
                                                                    <asp:BoundField DataField="SAMPLE_QTY" HeaderText="Sample QTY." />
                                                                    <asp:BoundField DataField="LANDING_COST" HeaderText="Rate" />
                                                                    <asp:BoundField DataField="value" HeaderText="Value" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </asp:Panel>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="View5" runat="server">
                                        <div class="col-md-6">
                                            <div class="widget">
                                                <div class="widget-header">
                                                    <%--  <div class="btn-primary">
                                                        Reference wise Transaction
                                                    </div>--%>
                                                </div>
                                                <div class="widget-body">
                                                    <form>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">Importer Code-Name:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:DropDownList ID="impRefDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                                                    </asp:DropDownList>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <label for="email">Reference No:</label>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <asp:TextBox ID="txtRefNo" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                                <div class="col-md-6">
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <div class="col-md-12">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:Button ID="btnRef" runat="server" OnClick="btnRef_Click" ToolTip="Show" Text="Show Detail" CssClass="btn btn-success" />
                                                                    <asp:ImageButton ID="ImageRef" runat="server" AlternateText="ExcelML" class="btn btn-info pull-right" ImageUrl="~/images/excel.png" OnClick="ImageRef_Click" ToolTip="Export to excel" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <div class="col-md-12">
                                                        <asp:Label ID="reftxttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="reflbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="Label6" runat="server" Text=" " ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="reftxttotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                                        <asp:Label ID="reflbltotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <asp:Panel ID="Panel5" runat="server" Width="100%">
                                                            <asp:GridView ID="GridView5" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                                runat="server" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField DataField="UDT" HeaderText="Date" />
                                                                    <asp:BoundField DataField="ITEM_ID" HeaderText="Item Id" />
                                                                    <asp:BoundField DataField="ITEM_NAME" HeaderText="Item Name" />
                                                                    <asp:BoundField DataField="QTY" HeaderText="QTY." />
                                                                    <asp:BoundField DataField="sample_qty" HeaderText="QTY." />
                                                                    <asp:BoundField DataField="landing_cost" HeaderText="Rate" />
                                                                    <asp:BoundField DataField="VALUE" HeaderText="Value." />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </asp:Panel>
                                                    </div>
                                                    <div class="col-md-6">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:View>
                                    <asp:View ID="View6" runat="server">
                                        <div class="content-body">
                                            <div class="main-content">
                                                <div class="container-fluid">
                                                    <div>
                                                        <div class="form-group">
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Importer:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="ImpRtlDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ImpRtlDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Dealer:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="DistRtlDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DistRtlDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Retail Code:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="RtlDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">From Date:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:TextBox ID="DistRtlFromDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <%--      <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Region:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="DistRtlRgnDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DistRtlRgnDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>--%>
                                                            <%--    <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Zone:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="DistRtlZoneDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DistRtlZoneDropDownList_SelectedIndexChanged">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>--%>
                                                            <%--                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">Area:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:DropDownList ID="DistRtlAreDropDownList" runat="server" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </div>--%>
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <label for="email">To Date:</label>
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:TextBox ID="DistRtlToDate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="false"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">

                                                                    <asp:Button ID="btnDistRtl" runat="server" OnClick="btnDistRtl_Click" ToolTip="Show" Text="Show" CssClass="btn btn-primary" Width="70px" />


                                                                    <asp:ImageButton ID="ImageDisttoRtl" runat="server" AlternateText="ExcelML" CssClass="btn btn-success" ImageUrl="~/images/excel.png" OnClick="ImageDisttoRtl_Click" ToolTip="Export to excel" />

                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <asp:Label ID="lbltotalqtyDistRtl" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                                                    <asp:Label ID="txttotalqtyDistRtl" runat="server" Text="" ForeColor="Blue"></asp:Label>

                                                                 

                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="col-md-12">
                                                                    <br />
                                                                </div>
                                                                <div class="col-md-12">
                                                                       <asp:Label ID="lbltotalvalueDistRtl" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                                                    <asp:Label ID="txttotalvalueDistRtl" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <%-- <div class="form-group">
                                                            
                                                        </div>--%>
                                                    </div>
                                                    <hr />
                                                    <div class="row">
                                                        <asp:Panel ID="Panel6" runat="server" Width="100%">
                                                            <asp:GridView ID="GridView6" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                                runat="server" AutoGenerateColumns="false">
                                                                <Columns>
                                                                    <asp:BoundField DataField="REF_NO" HeaderText="Bill NO" />
                                                                    <asp:BoundField DataField="TRNNO" HeaderText="TRN NO" />
                                                                    <asp:BoundField DataField="UDT" HeaderText="Bill Date" />
                                                                    <asp:BoundField DataField="EDT" HeaderText="Entry Date" />
                                                                    <asp:BoundField DataField="DIST_NAME" HeaderText="Dist Name" />
                                                                    <asp:BoundField DataField="name" HeaderText="Retl Name" />
                                                                    <asp:BoundField DataField="ITEM_ID" HeaderText="Item Id" />
                                                                    <asp:BoundField DataField="ITEM_NAME" HeaderText="Item Name" />
                                                                    <asp:BoundField DataField="GROUP_NAME" HeaderText="Group" />
                                                                    <asp:BoundField DataField="QTY" HeaderText="QTY." />
                                                                    <asp:BoundField DataField="SAMPLE_QTY" HeaderText="Sample QTY." />
                                                                    <asp:BoundField DataField="LANDING_COST" HeaderText="Rate" />
                                                                    <asp:BoundField DataField="value" HeaderText="Value" />
                                                                </Columns>
                                                            </asp:GridView>

                                                        </asp:Panel>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:View>
                                </asp:MultiView>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
        <Triggers>



            <%--     <asp:PostBackTrigger ControlID="btnImpDist" />
            <asp:PostBackTrigger ControlID="ImpSSDropDownList" />
            <asp:PostBackTrigger ControlID="distDropDownList" />--%>



            <asp:PostBackTrigger ControlID="ImageImpIn" />
            <asp:PostBackTrigger ControlID="ImageImpToDist" />
            <asp:PostBackTrigger ControlID="ImageImpSS" />
            <asp:PostBackTrigger ControlID="ImageSD" />
            <asp:PostBackTrigger ControlID="ImageRef" />
            <asp:PostBackTrigger ControlID="ImageDisttoRtl" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="Server">

    <script type="text/javascript">
        $(document).ready(function () {
            load();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
            function EndRequestHandler(sender, args) {
                load();
            }
        });
        function load() {
            var tran = "";
            $(function () {

                $('#impInFromDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#impInToDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });
                $('#distfromdate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#disttodate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });
                $('#SSFromDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#SSToDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#SDFromDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#SDToDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#DistRtlFromDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#DistRtlToDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

            });
        }
    </script>


</asp:Content>


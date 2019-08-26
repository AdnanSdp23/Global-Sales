<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="transactionreport, App_Web_d1qb3zxq" enableeventvalidation="false" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <style type="text/css">
        .txtColor
        {
            color: #4800ff;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="col-md-6">
                        <form>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <asp:Label ID="txtAreaCode" ClientIDMode="Static" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" Text="Label" CssClass="txtColor" Style="display: none"></asp:Label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label for="email">Importer Code-Name:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="impDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="impDropDownList_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label for="email">Dist Code-Name:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="distDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label for="email">Transaction Type:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="trntypeDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label for="email">Select SS/Dist:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="ssdistDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control">
                                            <asp:ListItem Value="0">Select</asp:ListItem>
                                            <asp:ListItem Value="1">SS</asp:ListItem>
                                            <asp:ListItem Value="2">DIST</asp:ListItem>
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
                                        <asp:TextBox ID="txtfromdate" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
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
                                        <asp:TextBox ID="txttodate" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
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
                                        <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" CssClass="btn btn-success" />&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="btnExport" runat="server" OnClick="btnExport_Click" Text="Export in Excel" CssClass="btn btn-warning" />
                                        <asp:Button ID="btnExport2" runat="server" OnClick="btnExport2_Click" Text="Export in Excel" CssClass="btn btn-warning" />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:Label ID="lblmsg" runat="server" CssClass="txtColor"></asp:Label>
                                        <asp:Label ID="lblmsg1" runat="server" Text="" CssClass="txtColor"></asp:Label>
                                        <span id="msg" style="color: BlueViolet; font-size: 11px;"></span>
                                        <br />
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="col-md-12">
                        <form>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <asp:Label ID="txttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                        <asp:Label ID="lbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                        <asp:Label ID="Label9" runat="server" Text="  " ForeColor="Blue"></asp:Label>
                                        <asp:Label ID="txttotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                        <asp:Label ID="lbltotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:Panel ID="Panel1" runat="server" Width="100%">
                                            <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging">
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

                                            <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                                RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                                runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging2">
                                                <Columns>
                                                    <asp:BoundField DataField="TRNNO" HeaderText="TRNNO" />
                                                    <asp:BoundField DataField="UDT" HeaderText="Date" />
                                                    <asp:BoundField DataField="name" HeaderText="SS/DIST Name" />
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
                        </form>
                    </div>
                </div>

            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
            <asp:PostBackTrigger ControlID="btnExport2" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
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

                $('#txtfromdate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $('#txttodate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

            });
        }
    </script>
</asp:Content>



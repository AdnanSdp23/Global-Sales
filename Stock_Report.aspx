<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="Stock_Report, App_Web_fwlgusei" enableeventvalidation="false" %>

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
                                        <asp:DropDownList ID="distDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="distDropDownList_SelectedIndexChanged">
                                        </asp:DropDownList>
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
                                        <br />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:Label ID="lblmsg" runat="server" CssClass="txtColor"></asp:Label><br />
                                        <asp:Label ID="lblmsg1" runat="server" Text="" ForeColor="Red"></asp:Label>
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
                                    <asp:Panel ID="Panel1" runat="server" Width="100%">
                                        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" AlternatingRowStyle-ForeColor="#000"
                                            runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging="OnPageIndexChanging">
                                            <Columns>
                                                <asp:BoundField DataField="COMPANY" HeaderText="Company" Visible="false" />
                                                <asp:BoundField DataField="ITEM_CODE" HeaderText="Item Id" />
                                                <asp:BoundField DataField="ITEM_NAME" HeaderText="Item Name" />
                                                <asp:BoundField DataField="UNIT" HeaderText="Unit" />
                                                <asp:BoundField DataField="QTY" HeaderText="QTY." />
                                                <asp:BoundField DataField="rate" HeaderText="Rate" />
                                                <asp:BoundField DataField="VALUE" HeaderText="Value" />
                                            </Columns>
                                        </asp:GridView>
                                    </asp:Panel>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnExport" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
    <script type="text/javascript">
        var tran = "";
        $(function () {

            $(document).on('click', '.btnDel', function () {
                tran = $(this).closest('tr').find("td:first").text();
                deleteTran();
                $(this).closest('tr').remove();
                return false;
            });

            $("#btnActiveAll").click(function () {

                SaveOK();

            });

            $("#btnSave").click(function () {

                if ($("#txtSSCode").text() == "") {
                    $("#msg").text("Plz Select SS Code-Name");
                }
                else if ($("#txttrnno").val() == "") {
                    $("#msg").text("Plz Input trnno");
                }
                else {
                    LoadDR();
                    SaveDR();
                }
            });

        });

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        function deleteTran() {
            $.ajax({
                type: "POST",
                url: "ImpTO.aspx/deleteTran",
                data: "{tran:'" + tran + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (response) {
                    $("#msg").text(response.d);
                    var v = response.d;
                    if (v.length > 0) {

                    }
                    else {
                        $("#dvDR").empty();
                        $("#btnActiveAll").css("display", "none");
                    }
                },
                failure: function (response) {
                    $("#msg").text(response.d);
                }
            });
        }


        function LoadDR() {
            var sscode = $("#txtSSCode").text();
            var trnno = $("#txttrnno").val();

            $.ajax({
                type: "POST",
                url: "SSTI.aspx/LoadDR",
                data: "{sscode:'" + sscode + "',trnno:'" + trnno + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (response) {
                    var v = response.d;
                    if (v.length > 0) {
                        var row = "<table id='tblDR' border='1' style='background:#FFFFFF;font-size:10px;'><tr><td>Impt. Code</td><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Landing Cost</td></tr>";
                        var len = response.d.length;
                        for (var i = 0; i < len; i++) {
                            var OID = response.d[i].OID;
                            var imptcode = response.d[i].impcode;
                            var ItemID = response.d[i].ITEM_ID;
                            var ItemName = response.d[i].ITEM_NAME;
                            var Qty = response.d[i].QTY;
                            var Landing_Cost = response.d[i].LANDING_COST;

                            row = row + "<tr><td style='display:none;'>" + OID + "</td><td class='id'>" + imptcode + "</td><td class='id'>" + ItemID + "</td><td>" + ItemName + "</td><td class='qty'>" + Qty + "</td><td class='giver'>" + Landing_Cost + "</td></tr>";

                        }
                        row = row + '</table>';
                        $("#dvDR").empty();
                        $("#dvDR").append(row);
                        $("#btnActiveAll").css("display", "block");
                        $("#msg").text("");
                    }
                    else {
                        $("#dvDR").empty();
                        $("#btnActiveAll").css("display", "none");
                        $("#msg").text("No Data on This Transaction/Transaction No is Wrong");
                    }
                },
                failure: function (response) {
                    //$("#spDestination").text(response.d);
                    $("#msg").text(response.d);
                }
            });
        }

        function OnSuccessDR(response) {
            var v = response.d;

            var row = "<table border='1' style='background:#FFFFFF;'><tr><td>SS Code</td><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Landing Cost</td></tr>";
            var len = response.d.length;
            for (var i = 0; i < len; i++) {


                var OID = response.d[i].OID;
                var SScode = response.d[i].SS_CODE;
                var ItemID = response.d[i].ITEM_ID;
                var ItemName = response.d[i].ITEM_NAME;
                var Qty = response.d[i].QTY;
                var Landing_Cost = response.d[i].LANDING_COST;


                row = row + "<tr><td>" + OID + "</td><td>" + SScode + "</td><td>" + ItemID + "</td><td>" + ItemName + "</td><td>" + Qty + "</td><td>" + Landing_Cost + "</td></tr>";
            }
            row = row + "<tr><td><input type='button' value='Active All' class='saveBtn' id='btnActiveAll'></td><td></td><td></td><td></td><td></td><td></td></tr>";
            row = row + '</table>';
            $("#dvDR").append(row);
        }

        function SaveOK() {
            var trnno = $("#txttrnno").val();
            var sscode = $("#txtSSCode").text();
            $.ajax({
                type: "POST",
                url: "SSTI.aspx/SaveY",
                data: "{trnno:'" + trnno + "',sscode:'" + sscode + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: OnSuccessDRMsDs,
                failure: function (response) {
                    $("#msg").text(response.d);
                }
            });
        }
        function OnSuccessDRMsDs(response) {
            $("#msg").text(response.d);
            $("#txttrnno").val("");
            $("#dvDR").empty();
            $("#btnActiveAll").css('display', 'none');
        }

        function SaveDR() {
            var sscode = $("#txtSSCode").text();
            var trnno = $("#txttrnno").val();
            $.ajax({
                type: "POST",
                url: "SSTI.aspx/SaveImpTO",
                data: "{sscode:'" + sscode + "',trnno:'" + trnno + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: OnSuccessDR,
                failure: function (response) {
                    $("#msg").text(response.d);
                }
            });
        }
        function OnSuccessDR(response) {
            $("#msg").text(response.d);
        }
    </script>
</asp:Content>


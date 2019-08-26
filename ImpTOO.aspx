<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="ImpTOO, App_Web_d1qb3zxq" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <style type="text/css">
 
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
                                    
                                </div>
                                <div class="col-md-6">
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
                                    <label for="email">Importer Name:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="impDropDownList_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Transaction name:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:DropDownList ID="TRNDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="TRNDropDownList_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">SS ID/DIST ID :</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:DropDownList ID="ssIDDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ssIDDropDownList_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Item id:</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="txtItemId" onkeypress="return isNumberKey(event)" id="txtItemId" class="form-control input-sm" />
                                </div>
                                <div class="col-md-6">
                                    <span id="lblItemId" style="color: BlueViolet; font-size: 11px;"></span>
                                    <span id="lblItemName" style="color: BlueViolet; font-size: 11px;"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Item Name:</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="txtItemName" id="txtItemName" class="form-control input-sm" />
                                    <asp:HiddenField ID="hfCustomerName" runat="server" />
                                </div>
                                <div class="col-md-6">
                                    <span id="lblFactor" style="color: BlueViolet; font-size: 11px;"></span>
                                    <span id="lblitemclass" style="color: BlueViolet; font-size: 11px;"></span>
                                    <span id="lblitemsubclass" style="color: BlueViolet; font-size: 11px;"></span>
                                    <span id="lblitemgroup" style="color: BlueViolet; font-size: 11px;"></span></td>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">QTY (dist unit):</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" onkeypress="return isNumberKey(event)" name="txtQuantity" id="txtQuantity" class="form-control input-sm" />
                                </div>
                                <div class="col-md-6">
                                    <span id="lblstock" style="color: BlueViolet; font-size: 11px;"></span>
                                    <span id="lblamntstk" style="color: BlueViolet; font-size: 11px;"></span>
                                    <span id="stkmsg" style="color: red; font-size: 11px;"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Sample QTY (dist unit):</label>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" onkeypress="return isNumberKey(event)" name="txtSampleQuantity" id="txtSampleQuantity" class="form-control input-sm" />
                                </div>
                                <div class="col-md-6">
                                    <span id="lblvatp" style="color: white; font-size: 11px;"></span>
                                    <input type="text" name="txtLandingPrice" id="txtLandingPrice" style="display: none" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Transaction Date:</label>
                                </div>
                                <div class="col-md-6">
                                   <input type="text" name="txtTrnDate" id="txtTrnDate" class="form-control input-sm" /></td>
                                </div>
                                <div class="col-md-6">

                                </div>
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                   
                                </div>
                                <div class="col-md-6">
                                    <br />
                                    <input type="button" id="btnSave" class="btn btn-primary" value="Add" />
                                </div>
                                <div class="col-md-6">
                                     <br />
                                    <span id="msg" style="color: BlueViolet; font-size: 11px;"></span>
                                </div>
                            </div>
                        </div>                     
                    </form>
                </div>

             
                <div class="col-md-6">
                    <form>
                           <div class="form-group">
                            <div class="col-md-10">
                                <div class="col-md-10">
                                    <div id="dvDR">
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <input type="button" value="Active All" class="btn btn-primary" id="btnActiveAll" display: none;" />
                                </div>
                                <div class="col-md-2">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>            
            </div>
             </div>
        </ContentTemplate>
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

                LoadDR();

                $('#txtTrnDate').datepicker({
                    inline: true,
                    dateFormat: "dd/mm/yy",

                });

                $("[id$=txtItemId]").autocomplete({
                    source: function (request, response) {
                        var areacode = $("#txtAreaCode").text();
                        $.ajax({
                            url: '<%=ResolveUrl("~/ImpTO.aspx/GetItems") %>',
                            data: "{ 'prefix': '" + request.term + "',areacode:'" + areacode + "'}",
                            dataType: "json",
                            type: "POST",
                            contentType: "application/json; charset=utf-8",
                            success: function (data) {
                                response($.map(data.d, function (item) {
                                    return {
                                        label: item.split('#')[0],
                                        val: item.split('#')[1]
                                    }
                                }))
                            },
                            error: function (response) {
                                alert(response.responseText);
                            },
                            failure: function (response) {
                                alert(response.responseText);
                            }
                        });
                    },
                    select: function (e, i) {
                        CheckItemID(i.item.val);
                        $("[id$=txtItemName]").val(i.item.label);
                    },
                    minLength: 1
                });

                $("#txtItemId").change(function () {
                    CheckItemID(i.item.val);
                });

                $("[id$=txtItemName]").autocomplete({
                    source: function (request, response) {
                        var areacode = $("#txtAreaCode").text();
                        $.ajax({
                            url: '<%=ResolveUrl("~/ImpTI.aspx/GetItemsName") %>',
                            data: "{ 'prefix': '" + request.term + "',areacode:'" + areacode + "'}",
                            dataType: "json",
                            type: "POST",
                            contentType: "application/json; charset=utf-8",
                            success: function (data) {
                                response($.map(data.d, function (item) {
                                    return {

                                        label: item.split('#')[0],
                                        val: item.split('#')[1]


                                    }
                                }))
                            },
                            error: function (response) {
                                alert(response.responseText);
                            },
                            failure: function (response) {
                                alert(response.responseText);
                            }
                        });
                    },
                    select: function (e, i) {

                        CheckItemID(i.item.val);
                        $("#txtItemId").val(i.item.val);

                    },
                    minLength: 1

                });

                $("#txtItemName").change(function () {
                    CheckItemID(i.item.val);
                });

                $(document).on('click', '.btnDel', function () {
                    tran = $(this).closest('tr').find("td:first").text();
                    deleteTran();
                    $(this).closest('tr').remove();
                    return false;
                });




                $("#txtQuantity").change(function () {
                    CheckQty();
                });

                $("#btnActiveAll").click(function () {

                    SaveOK();
                    $("#txtImporterCode").text("");
                    $("#txtTRNname").text("");
                    $("#txtSSID").text("");
                    $("#txtDistID").text("");


                });


                $("#btnSave").click(function () {

                    if ($("#impDropDownList :selected").val() === "") {
                        alert("Plz select Importer");
                    }

                    else if ($("#TRNDropDownList :selected").val() === "") {
                        alert("Plz select Transaction");
                    }

                    else if ($("#ssIDDropDownList :selected").val() === "") {
                        alert("Plz select SS_ID/DIST_ID");
                    }

                    else if ($("#txtItemId").val() == "") {
                        $("#msg").text("Plz Input Item");
                    }
                    else if ($("#lblItemId").text() == "") {
                        $("#msg").text("Invalid Item Id");
                    }
                    else if ($("#lblItemName").text() == "") {
                        $("#msg").text("Plz Input Item Name");
                    }

                    else if ($("#txtQuantity").val() == "") {
                        $("#msg").text("Plz Input Qty");
                    }
                    else if ($("#txtLandingPrice").val() == "") {
                        $("#msg").text("Plz Input Landing Price");
                    }
                    else {
                        SaveDR();
                        LoadDR();
                        $("#txtItemId").val("");
                        $("#txtItemName").val("");
                        $("#txtQuantity").val("");
                        $("#txtSampleQuantity").val("");
                        $("#txtLandingPrice").val("");
                        $("#lblItemId").text("");
                        $("#lblItemName").text("");
                        $("#lblFactor").text("");
                        $("#lblstock").text("");
                        $("#lblamntstk").text("");
                        $("#stkmsg").text("");
                        $("#txtTrnDate").val("");
                        $("#lblitemclass").text("");
                        $("#lblitemsubclass").text("");
                        $("#lblitemgroup").text("");


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

                var trnname = $("#TRNDropDownList :selected").val();
                var importercode = $("#impDropDownList :selected").val();


                $.ajax({
                    type: "POST",
                    url: "ImpTO.aspx/deleteTran",
                    data: "{trnname:'" + trnname + "',importercode:'" + importercode + "',tran:'" + tran + "'}",
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
            function CheckQty() {
                var itemstk = $("#lblamntstk").text();
                var itemqty = $("#txtQuantity").val();
                $.ajax({
                    type: "POST",
                    url: "ImpTO.aspx/CheckQty",
                    data: "{itemstk:'" + itemstk + "',itemqty:'" + itemqty + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: OnSuccessStkqty,
                    failure: function (response) {
                        $("#msg").text(response.d);

                    }
                });
            }

            function OnSuccessStkqty(response) {
                $("#stkmsg").text(response.d);

                if ($("#stkmsg").text() == "Stock Exist") {
                    $("#txtQuantity").val("");
                    $("#msg").text("Plz Input Valid Qty");
                }
                else {
                    $("#msg").text("");
                }

            }


            function CheckItemID(Id) {
                var itemid = Id;
                //var impcode = $("#impDropDownList").text();
                var impcode = $("#impDropDownList :selected").val();
                var trnno = $("#TRNDropDownList :selected").val();
                var areacode = $("#txtAreaCode").text();
                $.ajax({
                    type: "POST",
                    url: "ImpTO.aspx/CheckItem",
                    data: "{itemid:'" + itemid + "',impcode:'" + impcode + "',trnno:'" + trnno + "',areacode:'" + areacode + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: OnSuccessItem,
                    failure: function (response) {
                        $("#lblItemId").text('');
                        $("#lblItemName").text('');
                        $("#lblFactor").text(response.d);
                        $("#txtLandingPrice").val('');
                        $("#lblstock").text('');
                        $("#lblamntstk").text('');
                        $("#lblitemclass").text('');
                        $("#lblitemsubclass").text('');
                        $("#lblitemgroup").text('');
                        $("#msg").text(response.d);
                    }
                });
            }
            function OnSuccessItem(response) {
                var v = response.d;
                var tempArr = v.split(',');
                $("#lblItemId").text(tempArr[0]);
                $("#lblItemName").text(tempArr[1]);
                $("#lblFactor").text(tempArr[2]);
                $("#txtLandingPrice").val(tempArr[3]);
                $("#lblstock").text(tempArr[4]);
                $("#lblamntstk").text(tempArr[5]);
                $("#lblitemclass").text(tempArr[6]);
                $("#lblitemsubclass").text(tempArr[7]);
                $("#lblitemgroup").text(tempArr[8]);
            }

            function LoadDR() {
                var importercode = $("#impDropDownList :selected").val();
                //  var impoutssid = $("#txtSSID").text();
                var impoutdistid = $("#ssIDDropDownList :selected").val();
                var status = 'N';
                $.ajax({
                    type: "POST",
                    url: "ImpTO.aspx/LoadDR",
                    data: "{importercode:'" + importercode + "',impoutdistid:'" + impoutdistid + "',status:'" + status + "',trnno:'" + trnno + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (response) {
                        var v = response.d;
                        if (v.length > 0) {
                            var row = "<table class='table table-bordered table-responsive' id='tblDR' border='1' style='background:#FFFFFF;font-size:10px;'><tr><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Sam_Qty</td><td>Action</td></tr>";
                            var len = response.d.length;
                            for (var i = 0; i < len; i++) {
                                var OID = response.d[i].OID;
                                var ItemID = response.d[i].ITEM_ID;
                                var ItemName = response.d[i].ITEM_NAME;
                                var Qty = response.d[i].QTY;
                                var Sam_Qty = response.d[i].SAM_QTY;
                                var Landing_Cost = response.d[i].LANDING_COST;

                                row = row + "<tr class='bg-info'><td style='display:none;'>" + OID + "</td><td class='id'>" + ItemID + "</td><td>" + ItemName + "</td><td class='qty'>" + Qty + "</td><td class='Sam_Qty'>" + Sam_Qty + "</td><td><input type='button' value='DEL' class='btnDel' style='width:35px;height:25px;background:#4aaf51;border-radius: 4px;box-shadow: none;color: #fff;border: 0 none;display: inline-block;font-family:'Roboto',sans-serif;font-size: 12px;font-weight: 400;' id='btnDel'></td></tr>";

                            }
                            row = row + '</table>';
                            $("#dvDR").empty();
                            $("#dvDR").append(row);
                            $("#btnActiveAll").css("display", "block");
                        }
                        else {
                            $("#dvDR").empty();
                            $("#btnActiveAll").css("display", "none");
                        }
                    },
                    failure: function (response) {
                        $("#spDestination").text(response.d);
                    }
                });
            }

            function OnSuccessDR(response) {
                var v = response.d;

                var row = "<table border='1' style='background:#FFFFFF;'><tr><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Sam_Qty</td><td>Action</td></tr>";

                var len = response.d.length;
                for (var i = 0; i < len; i++) {


                    var OID = response.d[i].OID;
                    var ItemID = response.d[i].ITEM_ID;
                    var ItemName = response.d[i].ITEM_NAME;
                    var Qty = response.d[i].QTY;
                    var Sam_Qty = response.d[i].SAM_QTY;
                    var Landing_Cost = response.d[i].LANDING_COST;


                    row = row + "<tr><td>" + OID + "</td><td>" + ItemID + "</td><td>" + ItemName + "</td><td>" + Qty + "</td><td>" + Sam_Qty + "</td></tr>";
                }
                row = row + "<tr><td><input type='button' value='Active All' class='saveBtn' id='btnActiveAll'></td><td></td><td></td><td></td><td></td><td></td></tr>";
                row = row + '</table>';
                $("#dvDR").append(row);
            }

            function SaveOK() {
                var trnname = $("#TRNDropDownList :selected").val();
                var importercode = $("#impDropDownList :selected").val();
                var impoutdistid = $("#ssIDDropDownList :selected").val();



                $.ajax({
                    type: "POST",
                    url: "ImpTO.aspx/SaveY",
                    data: "{trnname:'" + trnname + "',importercode:'" + importercode + "',impoutdistid:'" + impoutdistid + "'}",
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
                $("#dvDR").empty();
                $("#btnActiveAll").css('display', 'none');
            }

            function SaveDR() {
                var importercode = $("#impDropDownList :selected").val();
                var trnname = $("#TRNDropDownList :selected").val();
                var impoutssid = $("#ssIDDropDownList :selected").val();
                var itemid = $("#lblItemId").text();
                var itemname = $("#lblItemName").text();
                var qty = $("#txtQuantity").val();
                var sam_qty = $("#txtSampleQuantity").val();
                var factor = $("#lblFactor").text();
                var landingprice = $("#txtLandingPrice").val();
                var itemclass = $("#lblitemclass").text();
                var itemsubclass = $("#lblitemsubclass").text();
                var trndate = $("#txtTrnDate").val();
                var itemgroup = $("#lblitemgroup").text();

                $.ajax({
                    type: "POST",
                    url: "ImpTO.aspx/SaveImpTO",
                    data: "{trnname:'" + trnname + "',importercode:'" + importercode + "',impoutssid:'" + impoutssid + "',itemid:'" + itemid + "',itemname:'" + itemname + "',qty:'" + qty + "',sam_qty:'" + sam_qty + "',landingprice:'" + landingprice + "',itemclass:'" + itemclass + "',itemsubclass:'" + itemsubclass + "',trndate:'" + trndate + "',itemgroup:'" + itemgroup + "' }",
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
        }
    </script>
</asp:Content>

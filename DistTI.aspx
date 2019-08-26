<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="DistTI, App_Web_d1qb3zxq" %>

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
                                    <label for="email">Sender:</label>
                                </div>
                                <div class="col-md-6">
                                     <asp:DropDownList ID="senderDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="senderDropDownList_SelectedIndexChanged">
                                </asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Importer Code-Name:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="impDropDownList_SelectedIndexChanged">
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
                                     <asp:DropDownList ID="distDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="distDropDownList_SelectedIndexChanged">
                                </asp:DropDownList>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Trn No :</label>
                                </div>
                                <div class="col-md-6">
                                       <asp:DropDownList ID="TrnNoDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="TrnNoDropDownList_SelectedIndexChanged">
                                </asp:DropDownList>
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
                                    <br />
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

                $("#btnActiveAll").click(function () {

                    SaveOK();

                });

                $("#btnSave").click(function () {

                    if ($("#senderDropDownList :selected").val() === "") {
                        alert("Plz Select Sender");
                    }
                    else if ($("#impDropDownList :selected").val() === "") {
                        alert("Plz Select Importer");
                    }
                    else if ($("#distDropDownList :selected").val() === "") {
                        alert("Plz Select Distributor");
                    }
                    else if ($("#TrnNoDropDownList :selected").val() === "") {
                        alert("Plz Select Transaction");
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


            function LoadDR() {
                var sender = $("#senderDropDownList :selected").val();
                var distcode = $("#distDropDownList :selected").val();
                var trnno = $("#TrnNoDropDownList :selected").val();
                $.ajax({
                    type: "POST",
                    url: "DistTI.aspx/LoadDR",
                    data: "{distcode:'" + distcode + "',trnno:'" + trnno + "',sender:'" + sender + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    async: false,
                    success: function (response) {
                        var v = response.d;
                        if (v.length > 0) {
                            var row = "<table class='table table-responsive table-bordered' id='tblDR' border='1' style='background:#FFFFFF;font-size:10px;'><tr><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Sam_Qty</td></tr>";
                            var len = response.d.length;
                            for (var i = 0; i < len; i++) {
                                var OID = response.d[i].OID;
                                var ItemID = response.d[i].ITEM_ID;
                                var ItemName = response.d[i].ITEM_NAME;
                                var Qty = response.d[i].QTY;
                                var Sam_Qty = response.d[i].SAM_QTY;
                                var Landing_Cost = response.d[i].LANDING_COST;


                                row = row + "<tr class='bg-info'><td style='display:none;'>" + OID + "</td><td class='id'>" + ItemID + "</td><td>" + ItemName + "</td><td class='qty'>" + Qty + "</td><td class='qty'>" + Sam_Qty + "</td></tr>";

                            }
                            row = row + '</table>';
                            $("#dvDR").empty();
                            $("#dvDR").append(row);
                            $("#btnActiveAll").css("display", "block");
                            //$("#msg").text("");
                        }
                        else {
                            $("#dvDR").empty();
                            $("#btnActiveAll").css("display", "none");
                            //$("#msg").text("No Data on This Transaction/Transaction No is Wrong");
                        }
                    },
                    failure: function (response) {
                        $("#msg").text(response.d);
                    }
                });
            }

            function OnSuccessDR(response) {
                var v = response.d;

                var row = "<table border='1' style='background:#FFFFFF;'><tr><td>SS Code</td><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Sam_Qty</td></tr>";
                var len = response.d.length;
                for (var i = 0; i < len; i++) {


                    var OID = response.d[i].OID;
                    var SScode = response.d[i].SS_CODE;
                    var ItemID = response.d[i].ITEM_ID;
                    var ItemName = response.d[i].ITEM_NAME;
                    var Qty = response.d[i].QTY;
                    var Sam_Qty = response.d[i].SAM_QTY;
                    var Landing_Cost = response.d[i].LANDING_COST;


                    row = row + "<tr><td>" + OID + "</td><td>" + SScode + "</td><td>" + ItemID + "</td><td>" + ItemName + "</td><td>" + Qty + "</td><td>" + Sam_Qty + "</td></tr>";
                }
                row = row + "<tr><td><input type='button' value='Active All' class='saveBtn' id='btnActiveAll'></td><td></td><td></td><td></td><td></td><td></td></tr>";
                row = row + '</table>';
                $("#dvDR").append(row);
            }

            function SaveOK() {
                var sender = $("#senderDropDownList :selected").val();
                var distcode = $("#distDropDownList :selected").val();
                var trnno = $("#TrnNoDropDownList :selected").val();

                $.ajax({
                    type: "POST",
                    url: "DistTI.aspx/SaveY",
                    data: "{trnno:'" + trnno + "',distcode:'" + distcode + "',sender:'" + sender + "'}",
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
        }
    </script>
</asp:Content>



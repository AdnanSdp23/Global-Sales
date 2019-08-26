<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="SSTI, App_Web_fwlgusei" %>

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
                                    <label for="email">SS Code-Name:</label>
                                </div>
                                <div class="col-md-6">
                                     <asp:DropDownList ID="ssDropDownList" runat="server" ClientIDMode="Static" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ssDropDownList_SelectedIndexChanged">
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
                                      <asp:DropDownList ID="TrnNoDropDownList" runat="server" ClientIDMode="Static" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="TrnNoDropDownList_SelectedIndexChanged">
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
           <%-- <table style="width: 100%; height: 350px; margin-top: 30px;">

                <tr>
                    <td class="style13" style="vertical-align: top">
                        <table style="width: 88%;">

                            <tr>

                                <td class="auto-style1">
                                    <asp:Label ID="txtUserId" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px"
                                        Text="Label" CssClass="txtColor" style="display:none"></asp:Label>
                                    
                          <asp:Label ID="TxtUserName" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13px"
                              CssClass="txtColor" Text="Label"></asp:Label>

                                </td>
                                <td colspan="2">
                                    <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>

                                </td>
                            </tr>
                            <tr>

                                <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text="SS Code-Name :" CssClass="txtColor"></asp:Label><br />
                                    <asp:DropDownList ID="ssDropDownList" runat="server" Style="height: 25px" Width="180px" AutoPostBack="true" OnSelectedIndexChanged="ssDropDownList_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="style14">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                                    </asp:ScriptManager>
                                    </span>
                                </td>
                                <td class="style14">
                                    <asp:Label ID="txtSSCode" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px"
                                        Text="Label" ForeColor="White"></asp:Label>

                                </td>
                            </tr>
                            <tr>

                                <td class="auto-style2">
                                    <asp:Label ID="Label6" runat="server" Text="Trn No :" CssClass="txtColor"></asp:Label>
                                    <br />
                                    <asp:DropDownList ID="TrnNoDropDownList" runat="server" Style="height: 25px" Width="180px" AutoPostBack="true" OnSelectedIndexChanged="TrnNoDropDownList_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="style14">&nbsp;</td>
                                <td class="style14">
                                    <asp:Label ID="txtTrnNo" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px"
                                        Text="Label" ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>

                                <td class="auto-style1">
                                    <input type="button" id="btnSave" class="saveBtn" value="Add" />
                                </td>
                                <td>
                                    <span id="msg" style="color: BlueViolet; font-size: 11px;"></span>
                                </td>
                                <td></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="dvDR">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" value="Active All" class="saveBtn" id="btnActiveAll" style="width: 168px; margin-left: 7px; display: none;" />
                    </td>
                </tr>
            </table>--%>
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

                    if ($("#ssDropDownList :selected").val() === "") {
                        alert("Plz Select Importer");
                    }

                    else if ($("#TrnNoDropDownList :selected").val() === "") {
                        alert("Plz Select Transaction");
                    }
                    else {
                        LoadDR();

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
                var sscode = $("#ssDropDownList :selected").val();
                var trnno = $("#TrnNoDropDownList :selected").val();

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
                            var row = "<table class='table table-responsive table-bordered' id='tblDR' border='1' style='background:#FFFFFF;font-size:10px;'><tr><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Sam_Qty</td><td>Price</td></tr>";
                            var len = response.d.length;
                            for (var i = 0; i < len; i++) {
                                var OID = response.d[i].OID;
                                var imptcode = response.d[i].impcode;
                                var ItemID = response.d[i].ITEM_ID;
                                var ItemName = response.d[i].ITEM_NAME;
                                var Qty = response.d[i].QTY;
                                var Sam_Qty = response.d[i].SAM_QTY;
                                var Landing_Cost = response.d[i].LANDING_COST;

                                row = row + "<tr class='bg-info'><td style='display:none;'>" + OID + "</td><td class='id'>" + imptcode + "</td><td class='id'>" + ItemID + "</td><td>" + ItemName + "</td><td class='qty'>" + Qty + "</td><td class='qty'>" + Sam_Qty + "</td><td class='id'>" + Landing_Cost + "</td></tr>";

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

                var row = "<table border='1' style='background:#FFFFFF;'><tr><td>SS Code</td><td>Item ID</td><td>Item Name</td><td>Qty</td><td>Sam_Qty</td><td>Price</td></tr>";
                var len = response.d.length;
                for (var i = 0; i < len; i++) {


                    var OID = response.d[i].OID;
                    var SScode = response.d[i].SS_CODE;
                    var ItemID = response.d[i].ITEM_ID;
                    var ItemName = response.d[i].ITEM_NAME;
                    var Qty = response.d[i].QTY;
                    var Sam_Qty = response.d[i].SAM_QTY;
                    var Landing_Cost = response.d[i].LANDING_COST;


                    row = row + "<tr><td>" + OID + "</td><td>" + SScode + "</td><td>" + ItemID + "</td><td>" + ItemName + "</td><td>" + Qty + "</td><td>" + Sam_Qty + "</td><td>" + Landing_Cost + "</td></tr>";
                }
                row = row + "<tr><td><input type='button' value='Active All' class='saveBtn' id='btnActiveAll'></td><td></td><td></td><td></td><td></td><td></td></tr>";
                row = row + '</table>';
                $("#dvDR").append(row);
            }

            function SaveOK() {
                var sscode = $("#ssDropDownList :selected").val();
                var trnno = $("#TrnNoDropDownList :selected").val();
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
        }       
    </script>
</asp:Content>


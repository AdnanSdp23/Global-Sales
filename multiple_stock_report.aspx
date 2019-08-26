<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="multiple_stock_report, App_Web_d1qb3zxq" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
        <style type="text/css">
        body
        {
            /*background-image: url( "assets/img/backgrounds/Pran.jpg" );*/
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
        }

        .auto-style2
        {
            height: 30px;
            width: 185px;
        }

        .auto-style3
        {
            height: 30px;
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
                    <table style="width: 88%;">

                        <tr>

                            <td class="auto-style1">
                                <asp:Label ID="txtUserId" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px"
                                    Text="Label" CssClass="txtColor" style="display:none"></asp:Label>
                                
                          <asp:Label ID="TxtUserName" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13px"
                              CssClass="txtColor" Text="Label"></asp:Label>

                            </td>
                            <td colspan="2"></td>
                        </tr>

                        <tr>

                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="From Importer Code-Name :" CssClass="txtColor"></asp:Label><br />
                                <asp:DropDownList ID="fromimpDropDownList" runat="server" Style="height: 25px" Width="180px" AutoPostBack="true" OnSelectedIndexChanged="fromimpDropDownList_SelectedIndexChanged">
                                </asp:DropDownList>
   
                            </td>
                            <td class="style14">
   
                                <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                                </span>
                            </td>
                            <td class="style14">
                           
                            </td>
                        </tr>

                        <tr>

                            <td class="auto-style2">
                                <asp:Label ID="Label5" runat="server" Text="To Importer Code-Name :" CssClass="txtColor"></asp:Label><br />
  
                                <asp:DropDownList ID="toimpDropDownList" runat="server" Style="height: 25px" Width="180px" AutoPostBack="true" OnSelectedIndexChanged="toimpDropDownList_SelectedIndexChanged">
   
                                </asp:DropDownList>

                            </td>
                            <td class="auto-style3"></td>
                            <td class="auto-style3">

                           
                            </td>
                        </tr>


                        <tr>

                            <td class="auto-style1">
    
                                <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" />
                            </td>
                            <td>
                                <span id="msg" style="color: BlueViolet; font-size: 11px;"></span>
                                <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                            </td>
                            <td></td>
                        </tr>


                        <tr>

                            <td class="auto-style1" colspan="2">
                                <asp:Label ID="lblmsg" runat="server" CssClass="txtColor"></asp:Label>
                                <asp:Label ID="lblmsg1" runat="server" Text="" ForeColor="Red"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:Panel ID="Panel1" runat="server" Width="100%">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" ScrollBars="Auto"
                                BorderWidth="1px" CellPadding="3" Font-Size="10pt" Font-Names="Times New Roman"
                                Font-Overline="False" Font-Strikeout="False" BackImageUrl="~/tablestyle/table-images/patternb.png">
                                <RowStyle ForeColor="#000066" />
                                <Columns>
                                    <asp:BoundField DataField="Importer_Code" HeaderText="Importer_Code" />
                                    <asp:BoundField DataField="Importer_Name" HeaderText="Importer_Name" />
                                    <asp:BoundField DataField="ITEM_ID" HeaderText="ITEM_ID" />
                                    <asp:BoundField DataField="ITEM_NAME" HeaderText="ITEM_NAME" />
                                    <asp:BoundField DataField="UNIT" HeaderText="UNIT" />
                                    <asp:BoundField DataField="QTY" HeaderText="Qty" />
                                    <asp:BoundField DataField="VALUE" HeaderText="Value" />

                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle ForeColor="Green" Font-Bold="True"
                                    HorizontalAlign="Center" CssClass="backimg" />
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Active All" class="saveBtn" id="btnActiveAll" style="width: 168px; margin-left: 7px; display: none;" />
                </td>
            </tr>
        </table>
        </ContentTemplate>
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



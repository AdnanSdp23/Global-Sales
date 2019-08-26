<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="PrintBill, App_Web_fwlgusei" %>


<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <button class="btn btn-primary" onclick="javascript:PrintElem('#mydiv');">Print</button>
    <div id="mydiv">
        <div style="width: 100%">
            <div style="float: left; width: 23%;">
                <img src="../../Content/Images/Common/logoRfl.jpg" height="100" width="120" />
            </div>
            <div style="float: left; width: 50%;">
                <center>
                <b><asp:Label ID="lblImporterName" Font-Size="Medium" Font-Bold="true" EnableViewState="false" runat="server"></asp:Label><br /></b>
                <asp:Label runat="server" Font-Size="Small" ID="lblImpAddrs1"></asp:Label>,
                <asp:Label runat="server" Font-Size="Small" ID="lblImpAddrs2"></asp:Label>,
                <asp:Label runat="server" Font-Size="Small" ID="lblImpAddrs3"></asp:Label><br />
                <b>Phone :</b>
                <asp:Label runat="server" Font-Size="Small" ID="lblImpPhone"></asp:Label><br />
                <b>Email :</b>
                <asp:Label runat="server" Font-Size="Small" ID="lblImpEmail"></asp:Label><br />
                <b>Tax :</b>
                <asp:Label runat="server" Font-Size="Small" ID="lblImpTax"></asp:Label><br /><br />
                <b>Invoice Copy</b><br />
        </center>
            </div>
            <%--            <div style="float: right; width: 23%; text-align: right">
                <img src="../../Content/Images/Common/logoRfl.jpg" height="100" width="120" />
            </div>--%>
        </div>
        <div class="col-md-12">
            <div class="box">
                <div class="box-body">
                    <table class="table table-responsive table-bordered">
                        <tr>
                            <th style="font-size: 13px;">Party Name</th>
                            <td style="font-size: 13px;">
                                <asp:Label runat="server" ID="lblPartyName"></asp:Label>
                            </td>
                            <th style="font-size: 13px;">Date</th>
                            <td style="font-size: 13px;">
                                <asp:Label runat="server" ID="lblInvoiceDate"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th style="font-size: 13px;">Phone</th>
                            <td style="font-size: 13px;">
                                <asp:Label runat="server" ID="lblPartyPhone"></asp:Label>
                            </td>
                            <th style="font-size: 13px;">Payment Term</th>
                            <td style="font-size: 13px;">
                                <asp:Label ID="Label1" runat="server" Text="Within 30 Days"></asp:Label>
                                <%--<asp:Label runat="server" ID="lblChassisNo"></asp:Label>--%>
                            </td>

                        </tr>
                        <tr>
                            <th style="font-size: 13px;">Address</th>
                            <td style="font-size: 13px;">
                                <asp:Label runat="server" ID="lblPartyAddrs"></asp:Label>
                            </td>
                            <th style="font-size: 13px;">Invoice No</th>
                            <td style="font-size: 13px;">
                                <asp:Label runat="server" ID="lblInvoiceNo"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="box">
                <%--       <div class="box-header">
                    Charges
                </div>--%>
                <div class="box-body">
                    <table class="table table-responsive table-bordered">
                        <thead>
                            <tr>
                                <th>SL. No
                                </th>
                                <th>Item Code
                                </th>
                                <th>Item Name
                                </th>
                                <th>Quantity
                                </th>
                                <th style="text-align: right">Unit Price(Rs)
                                </th>
                                <th style="text-align: right">Total(Rs)
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater runat="server" ID="rptItems">
                                <%--       <HeaderTemplate>
                                    <tr>
                                        <th colspan="5">Items</th>
                                    </tr>
                                </HeaderTemplate>--%>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# Container.ItemIndex+1 %>
                                        </td>
                                        <td>
                                            <%#Eval("ITEM_ID") %>
                                        </td>
                                        <td>
                                            <%#Eval("ITEM_NAME") %>
                                        </td>
                                        <td>
                                            <%#Eval("QTY")%> 
                                        </td>
                                        <td style="text-align: right">
                                            <%# Convert.ToDecimal(Eval("LANDING_COST")).ToString("F2") %>
                                        </td>
                                        <td style="text-align: right">
                                            <%# Convert.ToDecimal(Eval("VALUE")).ToString("F2") %>
                                        </td>

                                        <%--     <td>
                                            <%#Eval("REMARKS") %>
                                        </td>--%>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="5" style="text-align: right;">Sub Total :
                                </th>
                                <th style="text-align: right;">
                                    <asp:Label runat="server" Text="0" ID="lblSubTotal"></asp:Label>
                                </th>
                         <%--       <td></td>--%>
                            </tr>
                            <tr>
                                <th colspan="5" style="text-align: right;">Invoice Discount :
                                </th>
                                <th style="text-align: right;">
                                    <asp:Label runat="server" Text="0" ID="lblDiscount"></asp:Label>
                                </th>
                            <%--    <td></td>--%>
                            </tr>
                     <%--       <tr>
                                <th colspan="5" style="text-align: right;">Normal Tax() :
                                </th>
                                <th style="text-align: right;">
                                    <asp:Label runat="server" Text="0" ID="lblNormalTax"></asp:Label>
                                </th>
                            </tr>--%>
<%--                            <tr>
                                <th colspan="5" style="text-align: right;">Compound Tax() :
                                </th>
                                <th style="text-align: right;">
                                    <asp:Label runat="server" Text="0" ID="lblCompoundTax"></asp:Label>
                                </th>
                            </tr>--%>
                            <tr>
                                <th colspan="5" style="text-align: right;">Total :
                                </th>
                                <th style="text-align: right;">
                                    <asp:Label runat="server" Text="0" ID="lblTotal"></asp:Label>
                                </th>
                       <%--         <td></td>--%>
                            </tr>
                            <%--           <tr>
                                <td colspan="1" style="border-right: none; font-size: 9px;">Included VAT 15%
                                </td>
                                <th colspan="2" style="text-align: right; border-left: none;">Total :
                                </th>
                                <th style="text-align: right;">
                                    <asp:Label runat="server" ID="lblTotal"></asp:Label>
                                </th>
                                <td></td>
                            </tr>--%>
                            <tr>
                                <td colspan="6">In Words:
                                    <asp:Label runat="server" ID="lblTakaInword"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="border-top: 0px; border-right: 0px; padding-top: 20px;">Accounts Signature................................<br />
                                    <asp:Label ID="lblPreparedBy" runat="server"></asp:Label>
                                </td>
                                <td colspan="3" style="border-top: 0px; border-left: 0px; padding-top: 20px; text-align: right;">Received By
                                </td>
                            </tr>
                   <%--         <tr>
                                <td colspan="3" style="border-top: 0px; border-right: 0px; padding-top: 20px;">Signature With Date...........................
                                </td>
                                <td colspan="2" style="border-top: 0px; border-left: 0px; padding-top: 20px; text-align: right;"></td>
                            </tr>--%>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            //PrintElem('#mydiv');
        });
        function PrintElem(elem) {
            Popup($(elem).html());
        }
        function Popup(data) {
            var mywindow = window.open('', 'my div', 'height=400,width=600');
            //mywindow.document.write('<html><head><title>Print Bill</title>');
            /*optional stylesheet*/ //mywindow.document.write('<link rel="stylesheet" href="../../RaffelDraw/Content/bootstrap.min.css" type="text/css" />');
            mywindow.document.write('<style>.text-left {text-align: left;} .text-right {text-align: right;} .text-center {text-align: center;}.text-justify {text-align: justify;}.text-nowrap {white-space: nowrap;}.text-lowercase {text-transform: lowercase;}.text-uppercase {text-transform: uppercase;}.text-capitalize {text-transform: capitalize;}.img-thumbnail {display: inline-block;max-width: 100%;height: auto;padding: 4px;line-height: 1.02857143; font-size:13px; background-color: #fff;border: 1px solid #ddd;border-radius: 4px;-webkit-transition: all .2s ease-in-out;-o-transition: all .2s ease-in-out;transition: all .2s ease-in-out;}.panel-title {margin-top: 0;margin-bottom: 0;font-size: 16px;color: inherit;}.table {width: 100%;max-width: 100%;margin-bottom: 20px;} .table {border-collapse: collapse !important;}.table td, .table th {background-color: #fff !important;}.table-bordered th, .table-bordered td {border: 1px solid #ddd !important;}.table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {padding: 4px;line-height: 1.02857143; font-size:13px; vertical-align: top;border-top: 1px solid #ddd; text-align:left }.table > thead > tr > th {vertical-align: bottom;border-bottom: 2px solid #ddd;}.table > caption + thead > tr:first-child > th, .table > colgroup + thead > tr:first-child > th, .table > thead:first-child > tr:first-child > th, .table > caption + thead > tr:first-child > td, .table > colgroup + thead > tr:first-child > td, .table > thead:first-child > tr:first-child > td {border-top: 0;}.table > tbody + tbody {border-top: 2px solid #ddd;}.table .table {background-color: #fff;}.table-bordered {border: 1px solid #ddd;}.table-bordered > thead > tr > th, .table-bordered > tbody > tr > th, .table-bordered > tfoot > tr > th, .table-bordered > thead > tr > td, .table-bordered > tbody > tr > td, .table-bordered > tfoot > tr > td {border: 1px solid #ddd;}.table-bordered > thead > tr > th, .table-bordered > thead > tr > td {border-bottom-width: 2px;}</style></head><body >');
            mywindow.document.write('</head><body >');
            mywindow.document.write(data);
            mywindow.document.write('</body></html>');

            mywindow.document.close(); // necessary for IE >= 10
            mywindow.focus(); // necessary for IE >= 10

            mywindow.print();
            mywindow.close();
            window.onfocus = function () { window.close(); };
            return true;
        }
    </script>
</asp:Content>


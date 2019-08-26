<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="srwiserpt, App_Web_fwlgusei" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="Server">
    <link href="Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="form-group">
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">Importer Name:</label>
                                <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="impDropDownList_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">Select Base:</label>
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="baseDropDownList" ClientIDMode="Static" runat="server" CssClass="form-control input-sm">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">From Date:</label>
                                <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="txtfromdate" ClientIDMode="Static" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">To Date:</label>
                                <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="txttodate" ClientIDMode="Static" runat="server" CssClass="form-control input-sm"></asp:TextBox>

                            </div>
                        </div>
                        <br />
                    </div>
                    <div class="form-group">
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" CssClass="btn btn-success" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                                <asp:Label ID="lblmsg" runat="server" CssClass="txtColor"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <asp:Label ID="txttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                <asp:Label ID="lbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text=" " ForeColor="Blue"></asp:Label>
                                <asp:Label ID="txttotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                <asp:Label ID="lbltotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <asp:Repeater ID="rpt2" runat="server">
                                    <HeaderTemplate>
                                        <div style="overflow: auto">
                                            <table id="dt" class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            <asp:Label ID="Label5" runat="server" Text="ADDR2"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label3" runat="server" Text="GROUP_NAME"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label2" runat="server" Text="SR_NAME"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label6" runat="server" Text="qty"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label7" runat="server" Text="value"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label4" runat="server" Text="Action"></asp:Label></th>
                                                    </tr>

                                                </thead>
                                                <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("ADDR2") %></td>
                                            <td><%#Eval("GROUP_NAME") %></td>
                                            <td><%#Eval("SR_NAME") %></td>
                                            <td><%#Eval("qty") %></td>
                                            <td><%#Eval("value") %></td>
                                            <td>
                                                <asp:ImageButton ID="btnSelect" runat="server" OnCommand="btnSelect_Command" CommandArgument='<%# Eval("SR_ID")%>' ImageUrl="Content/Images/Common/preview.png" ToolTip="Select" /></td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                                </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="col-md-12">
                                <asp:Panel ID="Panel1" runat="server" Width="100%">
                                    <asp:Label ID="txtDtotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                    <asp:Label ID="lblDtotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text=" " ForeColor="Blue"></asp:Label>
                                    <asp:Label ID="txtDtotalvalue" runat="server" Text="Total Value:" ForeColor="Blue"></asp:Label>
                                    <asp:Label ID="lblDtotalvalue" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                    <asp:GridView ID="GridView2" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                        RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" Width="100%" ScrollBars="Auto" AlternatingRowStyle-ForeColor="#000" runat="server" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:BoundField DataField="SR_NAME" HeaderText="SR Name" />
                                            <asp:BoundField DataField="ITEM_ID" HeaderText="Base" />
                                            <asp:BoundField DataField="ITEM_NAME" HeaderText="Group" />
                                            <asp:BoundField DataField="qty" HeaderText="QTY." />
                                            <asp:BoundField DataField="value" HeaderText="Value" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnShow" />
            <asp:PostBackTrigger ControlID="impDropDownList" />
            <asp:PostBackTrigger ControlID="baseDropDownList" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="Server">
    <script src="Content/dt/dataTables.buttons.min.js"></script>
    <script src="Content/dt/buttons.flash.min.js"></script>
    <script src="Content/dt/jszip.min.js"></script>
    <script src="Content/dt/pdfmake.min.js"></script>
    <script src="Content/dt/vfs_fonts.js"></script>
    <script src="Content/dt/buttons.html5.min.js"></script>
    <script src="Content/dt/buttons.print.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var table = $('#dt').DataTable({
                dom: 'Bfrtip',
                "paging": true,
                "lengthChange": false,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": true,
                "order": [[0, "asc"]],
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            load();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
            function EndRequestHandler(sender, args) {
                load();
            }
        });

        function load() {
            $('#example1 tfoot th,#example2 tfoot th,#example3 tfoot th,#example4 tfoot th').each(function () {
                var title = $(this).text();
                $(this).html('<input type="text" class="form-control" placeholder="Search" />');
            });

            $('#txtfromdate').datepicker({
                inline: true,
                dateFormat: "dd/mm/yy",

            });

            $('#txttodate').datepicker({
                inline: true,
                dateFormat: "dd/mm/yy",

            });

            $("#btnSave,#btnEdit,#btnSchoolInfo").on('click', function () {
                $(".message").slideDown('slow');
                $(".message").delay(5000).fadeOut(2000);
            });

            var table = $('#example1,#example2,#example3,#example4').DataTable().destroy();

            table = $('#example1,#example2,#example3,#example4').DataTable({
                "paging": true,
                "lengthChange": true,
                "searching": true,
                "ordering": true,
                "info": true,
                "autoWidth": true
            });

            $(".select2").select2();
        }
        function getCookieValue(name) {
            cookieList = document.cookie.split('; ');
            cookies = {};
            for (i = cookieList.length - 1; i >= 0; i--) {
                cookie = cookieList[i].split('=');
                cookies[cookie[0]] = cookie[1];
            }
            return cookies[name];
        }

        $('li a').each(function () {
            if ($($(this))[0].href == String(window.location)) {
                $(this).parent().addClass('active');
            }
        });
        $('li ul li a').each(function () {
            if ($($(this))[0].href == String(window.location)) {
                $(this).parent().addClass('active');
                $(this).parent().parent().show();
            }
        });
    </script>
</asp:Content>


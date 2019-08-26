<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="RegionWiseSales, App_Web_d1qb3zxq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" Runat="Server">
   <link href="Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>

            <!-- START CONTENT -->
            <section class="box ">
                <header class="panel_header">
                    <h2 class="title pull-left">Region Wise Sales</h2>
                    <div class="actions panel_actions pull-right">
                        <a class="box_toggle fa fa-chevron-down"></a>
                        <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                        <a class="box_close fa fa-times"></a>
                    </div>
                </header>
                <div class="content-body">
                    <div class="main-content">
                        <div class="container-fluid">
                            <div>
                                <div class="form-group">
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Importer:</label>
                                            <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Region:</label>
                                            <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="rgnDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rgnDropDownList_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Zone:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="zoneDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                        </div>
                                        <div class="col-md-12">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
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
                                        </div>
                                        <div class="col-md-12">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6">
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="col-md-12">
                                            <asp:Label ID="txttotalqty" runat="server" Text="Total QTY:" ForeColor="Blue"></asp:Label>
                                            <asp:Label ID="lbltotalqty" runat="server" Text="" ForeColor="Blue"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="col-md-12">
                                            <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <asp:Repeater ID="rpt2" runat="server">
                                    <HeaderTemplate>
                                        <table id="dt" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <asp:Label ID="Label5" runat="server" Text="Region Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label3" runat="server" Text="Zone Name"></asp:Label></th>
                                                     <th>
                                                        <asp:Label ID="Label10" runat="server" Text="Dist Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label13" runat="server" Text="Item Code"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label2" runat="server" Text="Item Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label6" runat="server" Text="QTY."></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label7" runat="server" Text="SAMPLE QTY."></asp:Label></th>
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("REGION_NAME") %></td>
                                            <td><%#Eval("ZONE_NAME") %></td>
                                            <td><%#Eval("dist_name") %></td>
                                            <td><%#Eval("item_id") %></td>
                                            <td><%#Eval("item_name") %></td>
                                            <td><%#Eval("QTY") %></td>
                                            <td><%#Eval("SAMPLE_QTY") %></td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                                </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- END CONTENT -->
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnShow" />
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



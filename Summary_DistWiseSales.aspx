<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="Summary_DistWiseSales, App_Web_fwlgusei" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="Server">
    <link href="Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>

            <!-- START CONTENT -->
            <section class="box ">
                <header class="panel_header">
                    <h2 class="title pull-left">DEALER WISE SALES SUMMARY REPORT</h2>
                    <div class="actions panel_actions pull-right">
                        <a class="box_toggle fa fa-chevron-down"></a>
                        <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                        <a class="box_close fa fa-times"></a>
                    </div>
                </header>
                <div class="content-body">
                    <div class="main-content">
                        <div class="container-fluid">
                            <div class="form-group">
                                <div class="col-md-3">
                                    <div class="col-md-12">
                                        <label for="email">Importer Name:</label>
                                        <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <%--       <div class="col-md-3">
                                    <div class="col-md-12">
                                        <label for="email">From Date:</label>
                                        <asp:Label ID="Label56" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtfromdate" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="col-md-12">
                                        <label for="email">To Date:</label>
                                        <asp:Label ID="Label58" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txttodate" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>--%>
                                <div class="col-md-3">
                                    <div class="col-md-12">
                                        <br />
                                    </div>
                                    <div class="col-md-12">
                                        <%--<div class="col-md-6">
                                            <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Day Wise" CssClass="btn btn-success" />
                                         </div>--%>

                                        <div class="col-md-6">
                                            <asp:Button ID="btnShowMonth" runat="server" OnClick="btnShowMonth_Click" Text="Month Wise" CssClass="btn btn-primary" />
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                            </div>
                            <%--  <div class="row">
                                <asp:Repeater ID="rpt" runat="server">
                                    <HeaderTemplate>
                                        <table id="dtd" class="table table-bordered table-hover">
                                            <thead>
                                                <tr style="background-color: #2b4570; color: white;">
                                                    <th>
                                                        <asp:Label ID="Label5" runat="server" Text="DIST NAME"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label14" runat="server" Text="Base Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label15" runat="server" Text="QTY"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label16" runat="server" Text="Value"></asp:Label></th>        
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("DIST_NAME") %></td>
                                            <td><%#Eval("ADDR2") %></td>
                                            <td><%#Eval("QTY") %></td>
                                            <td><%#Eval("value") %></td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                                </table>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>--%>


                            <div class="row">
                                <asp:Repeater ID="rpt2" runat="server">
                                    <HeaderTemplate>
                                        <table id="dt" class="table table-bordered table-hover">
                                            <thead>
                                                <tr style="background-color: #2b4570; color: white;">
                                                    <th>
                                                        <asp:Label ID="Label5" runat="server" Text="Distributor Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label9" runat="server" Text="Aug-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label8" runat="server" Text="Jul-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label7" runat="server" Text="Jun-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label6" runat="server" Text="May-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label4" runat="server" Text="Apr-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label2" runat="server" Text="Mar-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label1" runat="server" Text="Feb-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label27" runat="server" Text="Jan-19"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label26" runat="server" Text="Dec-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label25" runat="server" Text="Nov-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label24" runat="server" Text="Oct-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label23" runat="server" Text="Sep-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label22" runat="server" Text="Aug-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label21" runat="server" Text="Jul-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label20" runat="server" Text="Jun-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label19" runat="server" Text="May-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label15" runat="server" Text="Apr-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label17" runat="server" Text="Mar-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label14" runat="server" Text="Feb-18"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label3" runat="server" Text="Jan-18"></asp:Label></th>
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("DISTRIBUTOR_NAME") %></td>
                                            <td><%#Eval("Aug-2019") %></td>
                                            <td><%#Eval("Jul-2019") %></td>
                                            <td><%#Eval("Jun-2019") %></td>
                                            <td><%#Eval("May-2019") %></td>
                                            <td><%#Eval("Apr-2019") %></td>
                                            <td><%#Eval("Mar-2019") %></td>
                                            <td><%#Eval("Feb-2019") %></td>
                                            <td><%#Eval("Jan-2019") %></td>
                                            <td><%#Eval("Dec-2018") %></td>
                                            <td><%#Eval("Nov-2018") %></td>
                                            <td><%#Eval("Oct-2018") %></td>
                                            <td><%#Eval("Sep-2018") %></td>
                                            <td><%#Eval("Aug-2018") %></td>
                                            <td><%#Eval("Jul-2018") %></td>
                                            <td><%#Eval("Jun-2018") %></td>
                                            <td><%#Eval("May-2018") %></td>
                                            <td><%#Eval("Apr-2018") %></td>
                                            <td><%#Eval("Mar-2018") %></td>
                                            <td><%#Eval("Feb-2018") %></td>
                                            <td><%#Eval("Jan-2018") %></td>
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
            <asp:PostBackTrigger ControlID="btnShowMonth" />
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
                "pageLength": 10,
                "lengthChange": false,
                "searching": true,
                "ordering": true,
                "info": true,
                //"autoWidth": true,
                "scrollX": true,
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


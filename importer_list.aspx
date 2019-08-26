<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="importer_list, App_Web_fwlgusei" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
       <link href="../Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <!-- START CONTENT -->
            <div class="col-xs-12">
                <section class="box ">
                    <header class="panel_header">
                        <h2 class="title pull-left">Importer List:</h2>
                        <div class="actions panel_actions pull-right">
                            <a class="box_toggle fa fa-chevron-down"></a>
                            <a class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></a>
                            <a class="box_close fa fa-times"></a>
                        </div>
                    </header>
                    <div class="content-body">
                        <div class="row">
                            <form action="#" method="post">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <br />
                                            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <asp:Panel ID="Panel1" runat="server">
                                        <asp:Repeater ID="rpt2" runat="server">
                                            <HeaderTemplate>
                                                <table id="dt" class="table table-bordered table-hover">
                                                    <thead>
                                                        <tr style="background-color: #2b4570; color: white;">
                                                            <th>
                                                                <asp:Label ID="Label5" runat="server" Text="impcode"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label3" runat="server" Text="impname"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label2" runat="server" Text="addr1"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label4" runat="server" Text="addr2"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label6" runat="server" Text="addr3"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label7" runat="server" Text="contact_person"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label1" runat="server" Text="contact_number"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label8" runat="server" Text="email"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label9" runat="server" Text="regn_name"></asp:Label></th>
                                                            <th>
                                                                <asp:Label ID="Label10" runat="server" Text="zone_name"></asp:Label></th>

                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                            </HeaderTemplate>

                                            <ItemTemplate>
                                                <tr>
                                                    <td><%#Eval("impcode") %></td>
                                                    <td><%#Eval("impname") %></td>
                                                    <td><%#Eval("addr1") %></td>
                                                    <td><%#Eval("addr2") %></td>
                                                    <td><%#Eval("addr3") %></td>
                                                    <td><%#Eval("contact_person") %></td>
                                                    <td><%#Eval("contact_number") %></td>
                                                    <td><%#Eval("email") %></td>
                                                    <td><%#Eval("regn_name") %></td>
                                                    <td><%#Eval("zone_name") %></td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </tbody>
                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </asp:Panel>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
            </div>

            <!-- END CONTENT -->
        </ContentTemplate>
        <Triggers>
            <%-- <asp:PostBackTrigger ControlID="btnSave" />--%>
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
    <script src="../Content/dt/dataTables.buttons.min.js"></script>
    <script src="../Content/dt/buttons.flash.min.js"></script>
    <script src="../Content/dt/jszip.min.js"></script>
    <script src="../Content/dt/pdfmake.min.js"></script>
    <script src="../Content/dt/vfs_fonts.js"></script>
    <script src="../Content/dt/buttons.html5.min.js"></script>
    <script src="../Content/dt/buttons.print.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            var table = $('#dt').DataTable({
                dom: 'Bfrtip',
                "paging": true,
                "searching": true,
                "info": true,
                "autoWidth": true,
                "scrollX": true,
                "order": [[0, "asc"]],
                buttons: [
                    'excel', 'pdf', 'print'
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


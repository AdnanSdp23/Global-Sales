<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="itemlist, App_Web_d1qb3zxq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
    <link href="Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
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
                                <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server">
                                </asp:DropDownList>
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
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <asp:Panel ID="Panel1" runat="server">
                        <div class="form-group">
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Item Id:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtItemId" ClientIDMode="Static" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Item Name:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtItemName" ClientIDMode="Static" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Imp Landing:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtImpLanding" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">SS Landing:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtSSLanding" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">DP Landing:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtDPLanding" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Item Group:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:DropDownList ID="groupnameDropDownList" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <br />
                                </div>
                                <div class="col-md-12">
                                    <asp:Button ID="btnEdit" runat="server" ClientIDMode="Static" Text="Edit" CssClass="btn btn-primary" ValidationGroup="save" Visible="false" OnClick="btnEdit_Click" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                </div>
                                <div class="col-md-12">
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <asp:Repeater ID="rpt2" runat="server">
                                    <HeaderTemplate>
                                        <table id="dt" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <asp:Label ID="Label5" runat="server" Text="Item Code"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label3" runat="server" Text="Item Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label2" runat="server" Text="Factor"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label11" runat="server" Text="Group"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label8" runat="server" Text="Class Code"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label7" runat="server" Text="Class Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label9" runat="server" Text="Business Code"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label10" runat="server" Text="Business Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label6" runat="server" Text="Imp Price"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label12" runat="server" Text="SS Price"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label4" runat="server" Text="DP Price"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label1" runat="server" Text="Action"></asp:Label></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("ITEM_CODE") %></td>
                                            <td><%#Eval("ITEM_NAME") %></td>
                                            <td><%#Eval("FACTOR") %></td>
                                            <td><%#Eval("GROUP_NAME") %></td>
                                            <td><%#Eval("ITEM_CLASS_CODE") %></td>
                                            <td><%#Eval("CLASS_NAME") %></td>
                                            <td><%#Eval("ITEM_BUSINESS_CODE") %></td>
                                            <td><%#Eval("BUSINESS_NAME") %></td>
                                            <td><%#Eval("IMP_LAND_PRICE") %></td>
                                            <td><%#Eval("SS_LAND_PRICE") %></td>
                                            <td><%#Eval("DIST_LAND_PRICE") %></td>
                                            <td>
                                                <asp:ImageButton ID="btnEdit" runat="server" OnCommand="btnEdit_Command" CommandArgument='<%# Eval("ITEM_CODE")%>' ImageUrl="Content/Images/Common/edit.png" ToolTip="Edit" /></td>
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
            </div>

            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnShow" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
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


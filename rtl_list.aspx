<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="rtl_list, App_Web_fwlgusei" %>


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
                                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server" OnSelectedIndexChanged="impDropDownList_SelectedIndexChanged" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                        </div>
                          <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">Distributor Name:</label>
                                <asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="DistDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-success" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <asp:Panel ID="Panel1" runat="server" Width="100%">
                                    <asp:Repeater ID="rpt1" runat="server">
                                        <HeaderTemplate>
                                            <table id="dt" class="table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>
                                                            <asp:Label ID="Label5" runat="server" Text="Retl Code"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label3" runat="server" Text="Retl Name"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label12" runat="server" Text="Dist Name"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label2" runat="server" Text="addr1"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label1" runat="server" Text="addr2"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label8" runat="server" Text="addr3"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label6" runat="server" Text="Person Name"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label9" runat="server" Text="Region Name"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label10" runat="server" Text="Zone Number"></asp:Label></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("retl_code") %></td>                                              
                                                <td><%#Eval("RETL_NAME") %></td>
                                                <td><%#Eval("DIST_NAME") %></td>
                                                <td><%#Eval("addr1") %></td>
                                                <td><%#Eval("addr2") %></td>
                                                <td><%#Eval("addr3") %></td>
                                                <td><%#Eval("contact_person") %></td>
                                                <td><%#Eval("contact_number") %></td>
                                                <td><%#Eval("email") %></td>
                                                <td><%#Eval("rgn_name") %></td>
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
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnSearch" />
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
            load();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
            function EndRequestHandler(sender, args) {
                load();
            }
        });


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
        function load() {
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
        }

    </script>
</asp:Content>


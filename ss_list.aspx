<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="ss_list, App_Web_d1qb3zxq" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <link href="Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
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
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="form-group">
                        <%--<div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">Region Name:</label>
                                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:DropDownList ID="rgnDropDownList" runat="server" CssClass="form-control">
                                </asp:DropDownList>
                            </div>
                        </div>--%>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">Importer Name:</label>
                                <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
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
                                                            <asp:Label ID="Label5" runat="server" Text="SS Code"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label3" runat="server" Text="SS Name"></asp:Label></th>
                                                        <th>
                                                            <asp:Label ID="Label2" runat="server" Text="Addrs"></asp:Label></th>
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
                                                <td><%#Eval("ss_code") %></td>
                                                <td><%#Eval("ss_name") %></td>
                                                <td><%#Eval("addr1") %></td>
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

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
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


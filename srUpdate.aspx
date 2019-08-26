<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="srUpdate, App_Web_d1qb3zxq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" Runat="Server">
 <link href="Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <!-- START CONTENT -->
            <div class="col-xs-12">
                <section class="box ">
                    <header class="panel_header">
                        <h2 class="title pull-left">SR Update</h2>
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
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Importer:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="impDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="col-md-3">
                                            <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" CssClass="btn btn-success" />
                                        </div>
                                    </div>
                                    <%--    <div class="col-md-6">
                                        <div class="col-md-12">
                                        </div>
                                        <div class="col-md-3">
                                             <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>  
                                        </div>
                                    </div>--%>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                        </div>
                                        <div class="col-md-3">
                                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                                        </div>
                                    </div>
                                </div>

                                <div class="container-fluid">
                                    <asp:Panel ID="Panel4" runat="server">
                                        <div class="form-group">
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <label for="email">SR ID:</label>
                                                </div>
                                                <div class="col-md-12">
                                                    <asp:TextBox ID="txtsrid" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <label for="email">SR Name:</label>
                                                </div>
                                                <div class="col-md-12">
                                                    <asp:TextBox ID="txtsrname" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <label for="email">SO ID:</label>
                                                </div>
                                                <div class="col-md-12">
                                                    <asp:TextBox ID="txtsoid" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <label for="email">SO Name:</label>
                                                </div>
                                                <div class="col-md-12">
                                                    <asp:TextBox ID="txtsoname" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="form-group">
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <label for="email">Base Name:</label>
                                                </div>
                                                <div class="col-md-12">
                                                    <asp:DropDownList ID="baseDropDownList" runat="server" CssClass="form-control">
                                                        <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <label for="email">Group Name:</label>
                                                </div>
                                                <div class="col-md-12">
                                                    <asp:DropDownList ID="groupDropDownList" runat="server" CssClass="form-control">
                                                        <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <label for="email">Status:</label>
                                                </div>
                                                <div class="col-md-12">
                                                    <asp:DropDownList ID="statusDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="col-md-12">
                                                    <br />
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:Button ID="btnAddNew" runat="server" ClientIDMode="Static" Text="Add New SR" CssClass="btn btn-success" ValidationGroup="save" OnClick="btnAddNew_Click" />
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:Button ID="btnEdit" runat="server" ClientIDMode="Static" Text="Update" CssClass="btn btn-primary" ValidationGroup="save" Visible="false" OnClick="btnEdit_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </asp:Panel>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <asp:Panel ID="Panel1" runat="server" Width="100%">
                                                <asp:Repeater ID="rpt1" runat="server">
                                                    <HeaderTemplate>
                                                        <%--  <table id="example1" class="table table-bordered table-hover">--%>
                                                        <table id="dt" class="table table-bordered table-hover">
                                                            <thead>
                                                                <tr style="background-color: #2b4570; color: white;">
                                                                    <th>
                                                                        <asp:Label ID="Label5" runat="server" Text="SR ID"></asp:Label></th>
                                                                    <th>
                                                                        <asp:Label ID="Label10" runat="server" Text="SR Name"></asp:Label></th>
                                                                    <th>
                                                                        <asp:Label ID="Label4" runat="server" Text="Base Name"></asp:Label></th>
                                                                    <th>
                                                                        <asp:Label ID="Label3" runat="server" Text="Group Name"></asp:Label></th>
                                                                    <th>
                                                                        <asp:Label ID="Label8" runat="server" Text="SO ID"></asp:Label></th>
                                                                    <th>
                                                                        <asp:Label ID="Label2" runat="server" Text="SO Name"></asp:Label></th>
                                                                     <th>
                                                                        <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label></th>
                                                                    <th>
                                                                        <asp:Label ID="Label1" runat="server" Text="Action"></asp:Label></th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%#Eval("SR_ID") %></td>
                                                            <td><%#Eval("SR_NAME") %></td>
                                                            <td><%#Eval("BASE_NAME") %></td>
                                                            <td><%#Eval("GROUP_NAME") %></td>
                                                            <td><%#Eval("SO_ID") %></td>
                                                            <td><%#Eval("SO_NAME") %></td>
                                                            <td><%#Eval("TYPENAME") %></td>
                                                            <td>
                                                                 <asp:ImageButton ID="btnEdit" runat="server" OnCommand="btnEdit_Command" CommandArgument='<%# Eval("SR_ID")%>' ImageUrl="Content/Images/Common/edit.png" ToolTip="Edit" /></td>
                                                              
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
                            </form>
                        </div>
                    </div>
                </section>
            </div>

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
                //"scrollX": true,
                "order": [[0, "asc"]],
                buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                ]
            });
        }

    </script>
</asp:Content>


<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="dist_list, App_Web_d1qb3zxq" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <link href="Content/dt/buttons.dataTables.min.css" rel="stylesheet" />
    <style type="text/css">
        .txtColor
        {
            color: #4800ff;
        }
    </style>
    <style type="text/css">
        .Initial
        {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background: url("images/InitialImage.png") no-repeat right top;
            color: Black;
            font-weight: bold;
        }

            .Initial:hover
            {
                color: White;
                background: url("images/SelectedButton.png") no-repeat right top;
            }

        .Clicked
        {
            float: left;
            display: block;
            background: url("images/SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            color: Black;
            font-weight: bold;
            color: White;
        }
        /* Background Color */
        .tb
        {
            background-color: #99FFCC;
            border: 1px solid #008000;
            width: 230px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button Text="Importer Wise" BorderStyle="None" CssClass="Initial" ID="Tab1" runat="server"
                            OnClick="Tab1_Click" />
                        <%--  <asp:Button Text="Region Wise" BorderStyle="None" CssClass="Initial" ID="Tab2" runat="server"
                            OnClick="Tab2_Click" />--%>
                    </div>
                </div>

                <div class="container-fluid">
                    <asp:Panel ID="Panel4" runat="server">
                        <div class="form-group">
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Dist Name:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtName" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">BASE:</label>
                                </div>
                                <div class="col-md-12">
                                      <asp:TextBox ID="txtbase" ClientIDMode="Static" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                               <%--     <asp:DropDownList ID="baseDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>--%>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Region:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:DropDownList ID="rgnDropDownList" runat="server" CssClass="form-control" OnSelectedIndexChanged="rgnDropDownList_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Zone:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:DropDownList ID="zoneDropDownList" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">Conatct No:</label>
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtContactNo" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <div class="col-md-12">
                                    <asp:Button ID="btnEdit" runat="server" ClientIDMode="Static" Text="Update" CssClass="btn btn-primary" ValidationGroup="save" Visible="false" OnClick="btnEdit_Click" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                </div>
                                <div class="col-md-12">
                              <asp:TextBox ID="txtImpCode" ClientIDMode="Static" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                              <asp:TextBox ID="txtdistcode" ClientIDMode="Static" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <asp:MultiView ID="MainView" runat="server">
                            <asp:View ID="View1" runat="server">
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
                                                    <asp:Repeater ID="rpt2" runat="server">
                                                        <HeaderTemplate>
                                                            <table id="dt" class="table table-bordered table-hover">
                                                                <thead>
                                                                    <tr>
                                                                        <th>
                                                                            <asp:Label ID="Label5" runat="server" Text="Dist Code"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label3" runat="server" Text="Dist Name"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label2" runat="server" Text="Base"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label8" runat="server" Text="Addrs"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label4" runat="server" Text="Region Name"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label6" runat="server" Text="Zone Name"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label9" runat="server" Text="Status"></asp:Label></th>
                                                                        <th>
                                                                            <asp:Label ID="Label10" runat="server" Text="Action"></asp:Label></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                                <td><%#Eval("DIST_CODE") %></td>
                                                                <td><%#Eval("DIST_NAME") %></td>
                                                                <td><%#Eval("ADDR2") %></td>
                                                                <td><%#Eval("ADDR1") %></td>
                                                                <td><%#Eval("REGION_NAME") %></td>
                                                                <td><%#Eval("ZONE_NAME") %></td>
                                                                <td><%#Eval("CONTACT_NUMBER") %></td>
                                                                <td><%#Eval("TYPENAME") %></td>
                                                                <td>
                                                                    <asp:ImageButton ID="btnEdit" runat="server" OnCommand="btnEdit_Command" CommandArgument='<%# Eval("DIST_CODE")%>' ImageUrl="Content/Images/Common/edit.png" ToolTip="Edit" /></td>
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
                            </asp:View>
                        </asp:MultiView>
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



<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="AdjusmentImptoDist, App_Web_d1qb3zxq" enableeventvalidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="Server">

    <script type="text/javascript">
        function SetTarget() {
            document.forms[0].target = "_blank";
        }
    </script>
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
                                <asp:DropDownList ID="impDropDownList" ClientIDMode="Static" CssClass="form-control input-sm" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">From Date:</label>
                                <asp:Label ID="Label9" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="txtfromdate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">To Date:</label>
                                <asp:Label ID="Label10" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            </div>
                            <div class="col-md-12">
                                <asp:TextBox ID="txttodate" ClientIDMode="Static" runat="server" CssClass="form-control" autocomplete="off"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                            </div>
                            <div class="col-md-12">
                                <br />
                                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" CssClass="btn btn-success" />
                            </div>

                        </div>
                    </div>
                    </form>
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
                                    <label for="email">Landing Cost:</label>
                                    <asp:Label ID="Label11" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                </div>
                                <div class="col-md-12">
                                    <asp:TextBox ID="txtLandingCost" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="col-md-12">
                                    <label for="email">QTY.</label>
                                    <asp:Label ID="Label12" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtQty" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <%--                   <asp:Button ID="btnEdit" runat="server" ClientIDMode="Static" Text="Edit" CssClass="btn btn-primary" ValidationGroup="save" Visible="false" OnClick="btnEdit_Click" />--%>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="col-md-12">
                                <asp:Repeater ID="rpt" runat="server">
                                    <HeaderTemplate>
                                        <table id="example1" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label3" runat="server" Text="TRN NO"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label2" runat="server" Text="Party Name"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label6" runat="server" Text="QTY"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label7" runat="server" Text="Value"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label8" runat="server" Text="Group"></asp:Label></th>
                                                    <th>
                                                        <asp:Label ID="Label1" runat="server" Text="Print"></asp:Label></th>
                                                </tr>

                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("UDT") %></td>
                                            <td><%#Eval("TRNNO") %></td>
                                            <td><%#Eval("DIST_NAME") %></td>
                                            <td><%#Eval("ADDR2") %></td>
                                            <td><%#Eval("qty") %></td>
                                            <td><%#Eval("value") %></td>
                                            <td><%#Eval("GROUP_NAME") %></td>
                                            <td>
                                                <asp:ImageButton ID="btnBillPrint" runat="server" CommandArgument='<%# Eval("TRNNO")%>' OnClick="btnBillPrint_Click" ImageUrl="~/Content/Images/Common/printBill.png" ToolTip="Bill Print" CausesValidation="False" />


                                                <%--              <asp:ImageButton ID="btnPrint" runat="server" ImageUrl="~/img/info-icon.png" ToolTip="Print"
                                                Width="70px" Height="30px" CommandArgument='<%# Eval("MBDE_DSID")%>' OnClick="btnPrint_Click" CausesValidation="False" />--%>
                                            </td>

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

                <div class="container-fluid">
                    <asp:Panel ID="Panel2" runat="server">
                        <div class="form-group">
                            <div class="col-md-3">
                                <div class="col-md-6">
                                    <asp:TextBox ID="chkQty" ClientIDMode="Static" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="ChkImpCode" ClientIDMode="Static" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnSearch" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="Server">
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


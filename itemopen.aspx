<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="itemopen, App_Web_d1qb3zxq" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <style type="text/css">
        .txtColor
        {
            color: #4800ff;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- START CONTENT -->
            <section class="box ">
                <header class="panel_header">
                    <header class="panel_header">
                        <h2 class="title pull-left">New Item Create</h2>
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
                                            <label for="email">Item Code:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtitemcode" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Item Name:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtitemname" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Class Name:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="classDropDownList" runat="server" CssClass="form-control">
                                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">SubClass Name:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="subclassDropDownList" runat="server" CssClass="form-control">
                                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Group Name:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="groupnameDropDownList" runat="server" CssClass="form-control">
                                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Business Unit:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="businessnameDropDownList" runat="server" CssClass="form-control">
                                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Factor:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtfactorcode" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Distributor Unit:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="distributorDropDownList" runat="server" CssClass="form-control">
                                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Retail Unit:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="retailDropDownList" runat="server" CssClass="form-control">
                                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Importer Price:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtimporterprice" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">SS Price:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtssprice" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Dist Price:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="txtdistprice" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <label for="email">Location:</label>
                                        </div>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="locationDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="col-md-12">
                                            <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Save" CssClass="btn btn-success" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="col-md-12">
                                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="red"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- END CONTENT -->


        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnsave" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
    <script type="text/javascript">
        $(function () {
            var currentDate = new Date();
            $('#txtdate').datepicker({
                inline: true,
                showOtherMonths: false,
                changeMonth: false,
                changeYear: false,
                dateFormat: 'dd/mm/yy'
            }).focus(function () {
                $(".ui-datepicker-prev, .ui-datepicker-next").remove();
            });
            $("#txtdate").datepicker("setDate", currentDate);
        });
    </script>
</asp:Content>

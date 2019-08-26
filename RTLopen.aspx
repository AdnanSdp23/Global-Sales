<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="RTLopen, App_Web_fwlgusei" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="Server">
    <style type="text/css">
        .txtColor
        {
            color: #4800ff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="col-md-6">
                        <form>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <h4 style="color: blue" font-bold="True">New Retailer Open</h4>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="Label45" runat="server" Text="[*]" ForeColor="Red"></asp:Label>
                                        <asp:Label ID="Label46" runat="server" Text="Indicate Required Field"></asp:Label>
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Importer Name:</label>
                                        <asp:Label ID="Label61" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="impDropDownList" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="impDropDownList_SelectedIndexChanged">
                                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Dist Name :</label>
                                        <asp:Label ID="Label62" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                    </div>
                                    <div class="col-md-12">
                                         <asp:DropDownList ID="DistDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Retailer Code:</label>
                                        <asp:Label ID="Label56" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtrtlcode" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Retailer Name:</label>
                                        <asp:Label ID="Label58" runat="server" Text="*" ForeColor="Red"></asp:Label><br />

                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtrtlname" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Address 1 :</label>
                                        <asp:Label ID="Label60" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtaddress1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Address 3 :</label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtaddress3" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Contact Person :</label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtcontactperson" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Email:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Region:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="regionDropDownList" runat="server" CssClass="form-control" AutoPostBack="true"
                                            OnSelectedIndexChanged="regionDropDownList_SelectedIndexChanged">
                                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Zone:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="zoneDropDownList" runat="server" CssClass="form-control">
                                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Location :</label>
                                        <asp:Label ID="Label63" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="locationDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                        </asp:DropDownList>
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Pan Card :</label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtPanCard" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Base :</label>
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="BaseDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                </div>
                                <div class="col-md-6">
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
                                        <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" CssClass="btn btn-success" />
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <br />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="White"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="Server">
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


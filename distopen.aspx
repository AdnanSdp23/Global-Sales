<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="distopen, App_Web_fwlgusei" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <style type="text/css">
        .txtColor
        {
            color: #4800ff;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="col-md-6">
                        <form>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <h4 style="color: blue" font-bold="True">New Distributor Open</h4>
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
                                        <label for="email">Base :</label>
                                        <asp:Label ID="Label62" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                    </div>
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="BaseDropDownList" runat="server" CssClass="form-control" AutoPostBack="true">
                                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Dist Code:</label>
                                        <asp:Label ID="Label56" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtdistcode" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label for="email">Dist Name:</label>
                                        <asp:Label ID="Label58" runat="server" Text="*" ForeColor="Red"></asp:Label><br />

                                    </div>
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtdistname" runat="server" CssClass="form-control"></asp:TextBox>
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

            <%--         <div>
                <div class="row" style="margin: 0px 18px 0px 4px">
                    <br />
                    <h4 style="color: blue" font-bold="True">New Distributor Open</h4>
                    <asp:Label ID="Label1" runat="server" Text="[*]" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Indicate Required Field"></asp:Label>
                    <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>
                </div>
            </div>
            <div class="box1">
                <table style="width: 99%; margin-top: 5px;">
                    <tr>

                        <td class="auto-style4">

                            <asp:Label ID="Label55" runat="server" Text="Dist Code :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label56" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            <asp:TextBox ID="txtdistcode" runat="server" Height="24px" Width="100px"></asp:TextBox>



                        </td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                    <tr>

                        <td class="auto-style4" colspan="2" align="left">

                            <asp:Label ID="Label57" runat="server" Text="Dist Name :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label58" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            <asp:TextBox ID="txtdistname" runat="server" Height="24px" Width="246px"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>

                        <td class="auto-style4" colspan="2">

                            <asp:Label ID="Label59" runat="server" Text="Address 1 :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label60" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            <asp:TextBox ID="txtaddress1" runat="server" Height="24px" Width="246px"></asp:TextBox>

                        </td>
                    </tr>
                    <tr>

                        <td class="auto-style4" colspan="2">

                          


                        </td>
                    </tr>
                    <tr>

                        <td class="auto-style4" colspan="2">

                            <asp:Label ID="Label62" runat="server" Text="Address 3 :" CssClass="txtColor"></asp:Label><br />
                            <asp:TextBox ID="txtaddress3" runat="server" Height="24px" Width="246px"></asp:TextBox>



                        </td>
                    </tr>

                </table>

            </div>
            <div class="box2">

                <table style="width: 100%; margin-top: 5px;">
                    <tr>

                        <td class="auto-style1">
                            <asp:Label ID="Label68" runat="server" Text="Contact Person :" CssClass="txtColor"></asp:Label><br />
                            <asp:TextBox ID="txtcontactperson" runat="server" Height="24px" Width="130px"></asp:TextBox>
                            <br />
                        </td>
                        <td class="auto-style5">
                            <asp:Label ID="Label69" runat="server" Text="Email :" CssClass="txtColor"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtemail" runat="server" Height="24px" Width="130px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label4" runat="server" Text="Region :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label72" runat="server" Text="*" ForeColor="Red"></asp:Label>
                            <br />
                            <asp:DropDownList ID="regionDropDownList" runat="server" Height="24px" Width="130px" AutoPostBack="true"
                                OnSelectedIndexChanged="regionDropDownList_SelectedIndexChanged">
                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label70" runat="server" Text="Zone :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label71" runat="server" Text="*" ForeColor="Red"></asp:Label>
                            <br />
                            <asp:DropDownList ID="zoneDropDownList" runat="server" Height="24px" Width="130px">
                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="Label63" runat="server" Text="Importer :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                            <asp:DropDownList ID="impDropDownList" runat="server" Height="24px" Width="130px" AutoPostBack="true">
                                <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td class="auto-style4">
                            <asp:Label ID="Label74" runat="server" CssClass="txtColor" Text="Location :"></asp:Label>
                            <asp:Label ID="Label75" runat="server" ForeColor="Red" Text="*"></asp:Label>
                            <asp:DropDownList ID="locationDropDownList" runat="server" Style="height: 25px" Width="140px" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="btnsave" runat="server" Text="Save" Width="81px" OnClick="btnsave_Click" />
                        </td>
                        <td class="auto-style4" align="right">&nbsp;</td>
                    </tr>

                    <tr>
                        <td class="auto-style1" colspan="2">
                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="White"></asp:Label>
                        </td>
                    </tr>

                </table>
            </div>--%>
        </ContentTemplate>
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


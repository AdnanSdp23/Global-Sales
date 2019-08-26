<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="changepassword, App_Web_d1qb3zxq" %>

<asp:Content ID="head" ContentPlaceHolderID="StyleSection" runat="server">
    <style type="text/css">
        .txtColor {
            color: #4800ff;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentSection" runat="server">
    <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="form-horizontal">
                        <div class="col-md-6">
                            <form>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <h4 style="color: blue" font-bold="True">Change Password</h4>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="Label45" runat="server" Text="[*]" ForeColor="Red"></asp:Label>
                                            <asp:Label ID="Label46" runat="server" Text="Indicate Required Field"></asp:Label>
                                            <br />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <label for="email">Old Password :</label>
                                            <asp:Label ID="Label73" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:TextBox ID="txtoldpassword" runat="server" TextMode="Password" class="form-control input-sm"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <label for="email">New Password :</label>
                                            <asp:Label ID="Label72" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password" class="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <label for="email">Confirm Password :</label>
                                            <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:TextBox ID="txtconpassword" runat="server" TextMode="Password" CssClass="form-control input-sm"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6">
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <br />
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Button ID="btnchange" runat="server" OnClick="btnchange_Click" Text="Change" CssClass="btn btn-success"/>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-6">
                            <form>
                                <div class="form-group">
                                    <div class="col-md-10">
                                        <div class="col-md-10">
                                        </div>
                                        <div class="col-md-8">
                                        </div>
                                        <div class="col-md-2">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>


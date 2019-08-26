<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="create_user, App_Web_d1qb3zxq" %>

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
                <div class="col-md-6">
                    <form>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <h4 style="color: blue" font-bold="True">Create New User</h4>
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
                                     <label for="email">UserID :</label>
                                    <asp:Label ID="Label73" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtuserID" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                     <label for="email">Password :</label>
                                    <asp:Label ID="Label72" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">Manager Name :</label>
                                    <asp:Label ID="Label6" runat="server" Text="*" ForeColor="Red"></asp:Label>

                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtmanagername" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                      <label for="email">Mobile No :</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="col-md-12">
                                    <label for="email">User Type :</label>
                                    <asp:Label ID="Label76" runat="server" Text="*" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <asp:DropDownList ID="usertypeDropDownList" runat="server" CssClass="form-control">
                                        <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                                    </asp:DropDownList>
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
                                    <asp:Button ID="btnsave" runat="server" Text="Save"  OnClick="btnsave_Click" CssClass="btn btn-success"  />
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>


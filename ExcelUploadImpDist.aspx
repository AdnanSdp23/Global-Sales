<%@ page title="" language="C#" masterpagefile="~/Admin.master" autoeventwireup="true" inherits="ExcelUploadImpDist, App_Web_d1qb3zxq" enableeventvalidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" Runat="Server">
      <asp:UpdatePanel ID="Upnl" runat="server">
        <ContentTemplate>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="form-group">
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <label for="email">Select Excel:</label>
                            </div>
                            <div class="col-md-12">
                                <asp:FileUpload ID="fUpload" runat="server" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <%--    <a href="~/Content/Uploads/imp_in.xlsx">Download Sample</a>--%>
                                <asp:RadioButtonList Visible="false" ID="rbHDR" runat="server">
                                    <asp:ListItem Text="Yes" Value="Yes" Selected="True">
                                    </asp:ListItem>
                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <asp:Button ID="btnUpload" runat="server" Text="Show Grid" OnClick="btnUpload_Click" CssClass="btn btn-primary" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="col-md-12">
                                <br />
                            </div>
                            <div class="col-md-12">
                                <asp:Button ID="btnImport" runat="server" Text="Upload Excel" OnClick="btnImport_Click" CssClass="btn btn-success" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6">
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="red"></asp:Label>
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="form-group">
                        <div class="col-md-12">
                            <asp:GridView ID="GridView1" runat="server">
                            </asp:GridView>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnUpload" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" Runat="Server">
</asp:Content>


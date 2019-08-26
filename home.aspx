<%@ page language="C#" autoeventwireup="true" masterpagefile="~/Admin.master" inherits="home, App_Web_d1qb3zxq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="Server">
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <div class="main-content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            Monthly Sales Comparison till today in Value
                        </div>
                        <div class="panel-body">
                            <asp:Literal ID="ltScripts" runat="server"></asp:Literal>
                            <div id="chart_div" style="height: 400px">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Last month sales value
                        </div>
                        <div class="panel-body">
                            <asp:Literal ID="ltScriptslm" runat="server"></asp:Literal>
                            <div id="chart_divlm" style="height: 400px">
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Group wise Sales
                        </div>
                        <div class="panel-body">
                            <asp:Literal ID="ltDonutScript" runat="server"></asp:Literal>
                            <div id="DonutChart" style="height: 350px">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            Top five distributor
                        </div>
                        <div class="panel-body">
                            <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                            <div id="Div2" style="height: 350px">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="Server">
</asp:Content>

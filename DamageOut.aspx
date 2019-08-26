<%@ page language="C#" autoeventwireup="true" inherits="DamageOut, App_Web_edp0we5m" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Imp_Transaction_Out</title>
    <!-- CSS -->
    <%--    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />--%>
    <link rel="stylesheet" href="tablestyle/style.css" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/OwnStyleSheet.css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/Pran.jpg">

    <script src="Scripts/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="JavaScript/jquery.min.js" type="text/javascript"></script>
    <script src="JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="JavaScript/jquery-ui.js" type="text/javascript"></script>

    <style type="text/css">
        body
        {
            /*background-image: url( "assets/img/backgrounds/Pran.jpg" );*/
            font-family: 'Roboto', sans-serif;
        }

        .backimg
        {
            background-image: url("tablestyle/table-images/patternb-head.png");
        }

        .saveBtn
        {
            background: #0094ff none repeat scroll 0 0;
            border: 0 none;
            border-radius: 4px;
            box-shadow: none;
            color: #fff;
            font-family: "Roboto",sans-serif;
            font-size: 16px;
            font-weight: 400;
            height: 30px;
            line-height: 30px;
            margin: 0;
            padding: 0 20px;
            text-shadow: none;
            transition: all 0.3s ease 0s;
            vertical-align: middle;
            -moz-user-select: none;
            cursor: pointer;
            display: inline-block;
            white-space: nowrap;
            width: 50%;
        }

        .box
        {
            float: left;
            margin: 5px;
            padding: 5px;
            width: 330px;
            height: 320px;
            border: 1px solid lightblue;
            background-color: skyblue;
        }

        .txtColor
        {
            color: white;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper container">
            <div class="row">
                <div class="header">
                    <!-- navigation-->
                    <nav class="navbar navbar-inverse" style="width: 100%; position: fixed; z-index: 100; position: fixed">
                                  <div class="container-fluid">
                                    <div class="navbar-header">
                                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span> 
                                      </button>
                                     <img style="width:40px;padding-top:5px;" alt="RFL logo" src="images/Rfl.jpg">
                                     <span style="color:#FFFFFF;font-size:13px;font-family:ucida Sans Unicode;line-height:4">Global Sales</span>  
                                    </div>
                                    <div class="collapse navbar-collapse" id="myNavbar">
                                      <ul class="nav navbar-nav">
                                        <li><a href="home.aspx">Home</a></li>
                                         <li class="dropdown" id="imp">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                              Importer
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="ImpTI.aspx">Importer In</a></li>
                                              <li><a href="ImpTO.aspx">Importer Out</a></li>                   
                                            </ul>
                                        </li>
                                         <li class="dropdown" id="ss" style="display:none;">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                             Secondary Stockist
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="SSTI.aspx">Secondary Stockist In</a></li>                                                                                    
                                              <li><a href="SSTO.aspx">Secondary Stockist Out</a></li>                 
                                            </ul>
                                        </li>
                                        <li class="dropdown" id="dist" style="display:none;">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                             Distributor
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="DistTI.aspx">Distributor In</a></li>                                                                                                  
                                            </ul>
                                        </li>

                                          <li class="dropdown" id="tol" style="display:none;">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                             Type of List
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                               <li><a href="itemlist.aspx">Item List</a></li>    
                                               <li><a href="#">Importer List</a></li>      
                                               <li><a href="#">SS List</a></li>  
                                               <li><a href="#">Dist List</a></li>                                                                                           
                                            </ul>
                                        </li>
                                               
                                          <li class="dropdown" id="crt" style="display:none;">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                             Create
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="create_user.aspx">User Open</a></li>   
                                              <li><a href="itemopen.aspx">Item Open</a></li>   
                                              <li><a href="distopen.aspx">Distributor Open</a></li>                                                                                                  
                                            </ul>
                                         </li>

                                            <li class="dropdown" id="rpt" style="display:none;">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                             Report
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="Stock_Report.aspx">Stock Report</a></li>  
                                              <li><a href="multiple_stock_report.aspx">Multiple Stock Report</a></li>     
                                              <li><a href="sales_report.aspx">Sales Report</a></li>  
                                              <li><a href="imp_salesreport.aspx">Importer Sales Report</a></li>                                                                                             
                                              <li><a href="Comparison.aspx">Monthly Comparison</a></li>
                                              <li><a href="Contribution.aspx">Contribution Report</a></li>                                                                                             
                                            </ul>
                                        </li>
                                      </ul>
                                      <ul class="nav navbar-nav navbar-right">
                                        <li><a href="signin.aspx"><span class="glyphicon glyphicon-user"></span>Sign Out</a></li>         
                                      </ul>
                                    </div>
                                  </div>
                        </nav>
                </div>
                <!-- / header-->
            </div>
            <!-- / container-->
        </div>
        <br />
        <br />
        <br />
        <div>
            <table>
                <tr>

                    <td class="auto-style1">
                        <asp:Label ID="txtUserId" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px"
                            Text="Label" style="display:none"></asp:Label>
                        
                          <asp:Label ID="TxtUserName" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="13px"
                           Text="Label"></asp:Label>

                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblError" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px" ForeColor="Red"></asp:Label>

                    </td>
                </tr>
            </table>
        </div>
        <div class="box">

            <fieldset style="width: 336px;">
                <legend style="color: white">Damage Out</legend>
                <table style="width: 99%; margin-top: 5px;">
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <asp:Label ID="Label43" runat="server" Text="Dist Code-Name :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label77" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                            <asp:DropDownList ID="distDropDownList" runat="server" Style="height: 25px" Width="180px" OnSelectedIndexChanged="distDropDownList_SelectedIndexChanged" AutoPostBack="true">
                            </asp:DropDownList>
                                <asp:Label ID="txtDistCode" runat="server" Font-Bold="False" Font-Italic="False" Font-Size="14px"
                                    Text="Label" ForeColor="SkyBlue"></asp:Label>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style4" colspan="2">
                            <asp:Label ID="Label78" runat="server" Text="SS Code-Name :" CssClass="txtColor"></asp:Label>
                            <br />
                            <asp:DropDownList ID="ssDropDownList" runat="server" Style="height: 25px" Width="180px" OnSelectedIndexChanged="ssDropDownList_SelectedIndexChanged" AutoPostBack="true">
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>

                        <td class="auto-style4" colspan="2">
                            <asp:Label ID="Label34" runat="server" Text="Item Id :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label73" runat="server" Text="*" ForeColor="Red"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="Lblsk" runat="server" Text="Stock: " Visible="false"></asp:Label>
                            <asp:Label ID="Lblstk" runat="server" Text=""></asp:Label><br />
                            <asp:TextBox ID="txtItemID" runat="server" Height="24px" Width="100px" OnTextChanged="txtItemID_TextChanged" AutoPostBack="true"></asp:TextBox>
                            <asp:Label ID="LblItemName" runat="server" Text=""></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label36" runat="server" Text="Item QTY :" CssClass="txtColor"></asp:Label>
                            <asp:Label ID="Label75" runat="server" Text="*" ForeColor="Red"></asp:Label>
                            <asp:TextBox ID="txtqty" runat="server" Height="24px" Width="100px" OnTextChanged="txtqty_TextChanged" AutoPostBack="true"></asp:TextBox>

                            <br />
                        </td>
                        <td class="auto-style4">

                            <asp:Label ID="Label37" runat="server" Text="Landing Price :" CssClass="txtColor"></asp:Label>
                            <asp:TextBox ID="txtlandingprice" runat="server" Height="24px" Width="100px"></asp:TextBox>

                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">

                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                    </tr>
                </table>
            </fieldset>
        </div>
        <asp:Panel ID="Panel3" runat="server" Width="100%">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId"
                OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnRowDeleted="GridView1_RowDeleted"
                OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" ScrollBars="Auto"
                BorderWidth="1px" CellPadding="3" Font-Size="10pt" Font-Names="Times New Roman"
                Font-Overline="False" Font-Strikeout="False" BackImageUrl="~/tablestyle/table-images/patternb.png">
                <RowStyle ForeColor="#000066" />
                <Columns>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="DEL" CssClass="btn"
                                BackColor="#4aaf51" ForeColor="White" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="OrderId" HeaderText="Order Id" Visible="false" />
                    <asp:BoundField DataField="ITEM_ID" HeaderText="ITEM_ID" />
                    <asp:BoundField DataField="ITEM_NAME" HeaderText="ITEM_NAME" />
                    <asp:BoundField DataField="QTY" HeaderText="QTY" />
                    <asp:BoundField DataField="LANDING_COST" HeaderText="LANDING_COST" />
                    <asp:TemplateField HeaderText="Select" Visible="False"></asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle ForeColor="green" Font-Bold="True"
                    HorizontalAlign="Center" CssClass="backimg" />
            </asp:GridView>
            <br />

            <asp:Button ID="btnSaveAll" runat="server" CssClass="saveBtn" OnClick="btnSaveAll_Click"
                TabIndex="5" Text="SaveAll" Width="100px" BackColor="#009900"
                ForeColor="White" />

        </asp:Panel>
    </form>
</body>
</html>



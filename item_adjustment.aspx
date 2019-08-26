<%@ page language="C#" autoeventwireup="true" inherits="item_adjustment, App_Web_edp0we5m" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Comparison</title>
    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />
    <link rel="stylesheet" href="tablestyle/style.css" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/OwnStyleSheet.css" rel="stylesheet" />
    <link href="Content/Calender11.css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/Pran.jpg">

    <script src="Scripts/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <script src="JavaScript/jquery.min.js" type="text/javascript"></script>
    <script src="JavaScript/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="JavaScript/jquery-ui.js" type="text/javascript"></script>


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

        .box1
        {
            float: left;
            margin: 5px;
            padding: 5px;
            width: 305px;
            height: 330px;
            border: 1px solid lightblue;
            background-color: gray;
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

        .txtColor
        {
            color: white;
        }

        .txtColor1
        {
            color: #0094ff;
        }
    </style>

</head>
<body>
    <form id="form2" runat="server">
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
                                         <li class="dropdown">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                              Importer
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="ImpTI.aspx">Importer In</a></li>
                                              <li><a href="ImpTO.aspx">Importer Out</a></li>                   
                                            </ul>
                                        </li>
                                         <li class="dropdown">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                             Secondary Stockist
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="SSTI.aspx">Secondary Stockist In</a></li>                                                                                    
                                              <li><a href="SSTO.aspx">Secondary Stockist Out</a></li>                 
                                            </ul>
                                        </li>
                                        <li class="dropdown">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                             Distributor
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="DistTI.aspx">Distributor In</a></li>                                                                                                  
                                            </ul>
                                        </li>

                                        <li class="dropdown">
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
                                               
                                          <li class="dropdown">
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
                                          <li class="dropdown">
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
        <div>
            <div class="row" style="margin: 0px 18px 0px 4px">
                <%--    <div class="col-sm-4">--%>
                <br />
                <h4 style="color: blue" font-bold="True">Item Adjustment</h4>
                <asp:Label ID="Label45" runat="server" Text="[*]" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label46" runat="server" Text="Indicate Required Field"></asp:Label>



                <%--                </div>--%>
            </div>
        </div>
        <div class="box1">
            <table style="width: 100%; margin-top: 5px;">
                <tr>

                    <td class="auto-style4">

                        <asp:Label ID="Label59" runat="server" Text="TRN Name :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label61" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                        <asp:DropDownList ID="trnnameDropDownList" runat="server" Height="24px" Width="130px">
                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">

                        <asp:Label ID="Label60" runat="server" Text="TRN Type :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label62" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                        <asp:DropDownList ID="trntypeDropDownList" runat="server" Height="24px" Width="130px">
                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style4" colspan="2">

                        <asp:Label ID="Label79" runat="server" Text="Warehouse ID-Name :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label80" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <asp:DropDownList ID="warehouseDropDownList1" runat="server" Height="24px" Width="220px">
                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style4">

                        <asp:Label ID="Label75" runat="server" Text="Item Class :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label76" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:DropDownList ID="itemclassDropDownList" runat="server" Height="24px" Width="130px">
                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4">

                        <asp:Label ID="Label77" runat="server" Text="Item Subclass :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label78" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:DropDownList ID="itemsubclassDropDownList" runat="server" Height="24px" Width="130px">
                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>

                    <td class="auto-style4" colspan="2">

                        <asp:Label ID="Label63" runat="server" Text="Item ID-Name :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:DropDownList ID="itemsubclassDropDownList0" runat="server" Height="24px" Width="220px">
                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                        </asp:DropDownList>
                        <br />



                    </td>
                </tr>
                <tr>

                    <td class="auto-style4">

                        <asp:Label ID="Label65" runat="server" Text="Item QTY :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                        <asp:TextBox ID="txtdistprice0" runat="server" Height="24px" Width="130px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">

                        <asp:Label ID="Label66" runat="server" Text="Landing Price :" CssClass="txtColor"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label><br />
                        <asp:TextBox ID="txtdistprice1" runat="server" Height="24px" Width="130px"></asp:TextBox>
                    </td>
                </tr>


                <tr>

                    <td class="auto-style4">

                        <asp:Button ID="btnadd" runat="server" Text="Add" Width="81px" OnClick="btnadd_Click" />
                    </td>
                    <td class="auto-style4">

                        &nbsp;</td>
                </tr>


                <tr>

                    <td class="auto-style4" colspan="2">

                        <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="red"></asp:Label>
                    </td>
                </tr>


            </table>
        </div>
 
    </form>
</body>
</html>

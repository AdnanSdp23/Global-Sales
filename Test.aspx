<%@ page language="C#" autoeventwireup="true" inherits="Test, App_Web_edp0we5m" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>India Sales</title>
    <!-- CSS -->
<%--    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500" />
    <link rel="stylesheet" href="tablestyle/style.css" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/OwnStyleSheet.css" rel="stylesheet" />--%>
    
    <link rel="shortcut icon" href="images/Pran.jpg">

  <%--  <script src="Scripts/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>--%>
           
     
     <style type="text/css">
     body {
            background-image: url("assets/img/backgrounds/bk3.jpg");   
            font-family: 'Roboto', sans-serif;                              
          } 
                 
h1, h2 {
	margin-top: 10px;
	font-size: 38px;
    font-weight: 100;
    color: #555;
    line-height: 50px;
}
     </style>

</head>
<body>

<form id="form2" class="navbar" role="search" runat="server">
   <div class="wrapper container">
        <div class="row">
            <div class="header">
                 
                    <!-- navigation-->
                        <nav class="navbar navbar-inverse">
                                  <div class="container-fluid">
                                    <div class="navbar-header">
                                      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span> 
                                      </button>
                                     <img style="width:40px;padding-top:5px;" alt="RFL logo" src="images/Rfl.jpg">
                                     <span style="color:#FFFFFF;font-size:13px;font-family:ucida Sans Unicode;line-height:4">India Sales</span>  
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
                                             Report
                                              <b class="caret"></b>
                                           </a>
                                            <ul class="dropdown-menu">
                                              <li><a href="Report.aspx">Stock Report</a></li>    
                                              <li><a href="sales_report.aspx">Sales Report</a></li>                                                                                               
                                            </ul>
                                        </li>
                                           



                                               
                                         
                                      </ul>
                                      <ul class="nav navbar-nav navbar-right">
                                        <li><a href="signin.aspx"><span class="glyphicon glyphicon-user"></span>Sign Out</a></li>         
                                      </ul>
                                    </div>
                                  </div>
                        </nav>
                
            </div><!-- / header-->
        </div><!-- / container-->
       <%-- <div class="row">
            
            <div class="col-sm-8 col-sm-offset-4">
                <h1 style="padding-top:80px;"><img style="width:200px;" alt="RFL logo" src="images/pran-rfl-groub.png">
                <span style="font-size:20px;">Web Order Entry</span></h1>
            </div>
      
        </div><!--/first-content-->--%>
    </div>      
                    
</form>
         
        <!-- Top content -->                	
            
            <div class="container">
                <div>
                    <asp:Label ID="txtName" runat="server" Text=""></asp:Label>
                </div>
                
                    <div class="row">
                       <%-- <div class="col-sm-8 col-sm-offset-2">
                           <h1 align="center" style="margin-top:55px;"><img src="images/Pran.jpg" alt="RFL logo" style="width:150px;padding-top:5px;">
                           <br /><span style="font-size:x-large; color:green; font-style:italic; font-weight:700">India Sales System</span></h1>
                        </div>--%>
                        <asp:ChangePassword ID="ChangePassword1" runat="server" OnChangedPassword="ChangePassword1_ChangedPassword">

                        </asp:ChangePassword>
                    </div>  
                                  
            </div>                     
</body> 
</html>


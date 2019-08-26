<%@ control language="C#" autoeventwireup="true" inherits="UserControls_Menu, App_Web_iltgdbx0" %>

<div id="wrapper">
    <!-- SIDEBAR -->
    <div class="sidebar">
        <div class="brand">
            <%--     <a href="index.html">
                        <img src="assets/img/logo.png" alt="Klorofil Logo" class="img-responsive logo"></a>--%>
            <%--<img style="width: 40px; padding-top: 5px;" alt="RFL logo" src="images/Rfl.jpg">--%>
            <span style="color: #FFFFFF; font-size: 13px; font-family: ucida Sans Unicode; line-height: 4">RFL Global Sales</span>
        </div>
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li><a href="home.aspx" class="active"><i class="lnr lnr-home"></i><span>Dashboard</span></a></li>
                    <%--                          <li><a href="panels.html" class=""><i class="lnr lnr-cog"></i><span>Panels</span></a></li>
                            <li><a href="notifications.html" class=""><i class="lnr lnr-alarm"></i><span>Notifications</span></a></li>--%>
                    <li>
                        <a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-enter"></i><span>Importer</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages" class="collapse ">
                            <ul class="nav">
                                <li><a href="ImpTI.aspx" class="">Importer In</a></li>
                                <li><a href="ImpTO.aspx" class="">Importer Out</a></li>
                                <li><a href="Check.aspx" class="">Test</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages1" data-toggle="collapse" class="collapsed"><i class="lnr lnr-enter"></i><span>Secondary Stockist</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages1" class="collapse ">
                            <ul class="nav">
                                <li><a href="SSTI.aspx" class="">Secondary In</a></li>
                                <li><a href="SSTO.aspx" class="">Secondary Out</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages2" data-toggle="collapse" class="collapsed"><i class="lnr lnr-enter"></i><span>Distributor</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages2" class="collapse ">
                            <ul class="nav">
                                <li><a href="DistTI.aspx" class="">Distributor In</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages3" data-toggle="collapse" class="collapsed"><i class="lnr lnr-store"></i><span>Type of List</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages3" class="collapse ">
                            <ul class="nav">
                                <li><a href="itemlist.aspx" class="">Item List</a></li>
                                <li><a href="importer_list.aspx" class="">Importer List</a></li>
                                <li><a href="ss_list.aspx" class="">SS List</a></li>
                                <li><a href="dist_list.aspx" class="">Dist List</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages5" data-toggle="collapse" class="collapsed"><i class="lnr lnr-paperclip"></i><span>Report</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages5" class="collapse ">
                            <ul class="nav">
                                <li><a href="Stock_Report.aspx" class="">Stock Report</a></li>
                                <li><a href="multiple_stock_report.aspx" class="">Multiple Stock Report</a></li>
                                <li><a href="sales_report.aspx" class="">Sales Report</a></li>
                                <li><a href="transactionreport.aspx" class="">Transaction Report</a></li>
                                <li><a href="imp_salesreport.aspx" class="">Importer Sales Report</a></li>
                                <li><a href="Comparison.aspx" class="">Monthly Comparison</a></li>
                                <li><a href="Contribution.aspx" class="">Contribution Report</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="#subPages4" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-add"></i><span>Create</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                        <div id="subPages4" class="collapse ">
                            <ul class="nav">
                                <li><a href="create_user.aspx" class="">User Create</a></li>
                                <li><a href="itemopen.aspx" class="">Item Create</a></li>
                                <li><a href="distopen.aspx" class="">Distributor Create</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="changepassword.aspx" class=""><i class="lnr lnr-dice"></i><span>Change Password</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END SIDEBAR -->
    <!-- MAIN -->
    <div class="main">
        <!-- NAVBAR -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-btn">
                    <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu">
                        <span class="sr-only">Toggle Navigation</span>
                        <i class="fa fa-bars icon-nav"></i>
                    </button>
                </div>
                <div id="navbar-menu" class="navbar-collapse collapse">

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="signin.aspx"><span class="glyphicon glyphicon-user"></span>Sign Out</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END NAVBAR -->
        <!-- MAIN CONTENT -->
         <div class="main-content">
                    <div class="container-fluid">
                        <!-- OVERVIEW -->
                        <div class="panel panel-headline">
                            <div class="panel-heading">
                                <h3 class="panel-title">Weekly Overview</h3>
                                <p class="panel-subtitle">Period: Oct 14, 2016 - Oct 21, 2016</p>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="metric">
                                            <span class="icon"><i class="fa fa-download"></i></span>
                                            <p>
                                                <span class="number">1,252</span>
                                                <span class="title">Downloads</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="metric">
                                            <span class="icon"><i class="fa fa-shopping-bag"></i></span>
                                            <p>
                                                <span class="number">203</span>
                                                <span class="title">Sales</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="metric">
                                            <span class="icon"><i class="fa fa-eye"></i></span>
                                            <p>
                                                <span class="number">274,678</span>
                                                <span class="title">Visits</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="metric">
                                            <span class="icon"><i class="fa fa-bar-chart"></i></span>
                                            <p>
                                                <span class="number">35%</span>
                                                <span class="title">Conversions</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-9">
                                        <div id="headline-chart" class="ct-chart"></div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="weekly-summary text-right">
                                            <span class="number">2,315</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i>12%</span>
                                            <span class="info-label">Total Sales</span>
                                        </div>
                                        <div class="weekly-summary text-right">
                                            <span class="number">$5,758</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i>23%</span>
                                            <span class="info-label">Monthly Income</span>
                                        </div>
                                        <div class="weekly-summary text-right">
                                            <span class="number">$65,938</span> <span class="percentage"><i class="fa fa-caret-down text-danger"></i>8%</span>
                                            <span class="info-label">Total Income</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END OVERVIEW -->
                        <div class="row">
                            <div class="col-md-6">
                                <!-- RECENT PURCHASES -->
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Recent Purchases</h3>
                                        <div class="right">
                                            <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                            <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                        </div>
                                    </div>
                                    <div class="panel-body no-padding">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Order No.</th>
                                                    <th>Name</th>
                                                    <th>Amount</th>
                                                    <th>Date &amp; Time</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><a href="#">763648</a></td>
                                                    <td>Steve</td>
                                                    <td>$122</td>
                                                    <td>Oct 21, 2016</td>
                                                    <td><span class="label label-success">COMPLETED</span></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">763649</a></td>
                                                    <td>Amber</td>
                                                    <td>$62</td>
                                                    <td>Oct 21, 2016</td>
                                                    <td><span class="label label-warning">PENDING</span></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">763650</a></td>
                                                    <td>Michael</td>
                                                    <td>$34</td>
                                                    <td>Oct 18, 2016</td>
                                                    <td><span class="label label-danger">FAILED</span></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">763651</a></td>
                                                    <td>Roger</td>
                                                    <td>$186</td>
                                                    <td>Oct 17, 2016</td>
                                                    <td><span class="label label-success">SUCCESS</span></td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#">763652</a></td>
                                                    <td>Smith</td>
                                                    <td>$362</td>
                                                    <td>Oct 16, 2016</td>
                                                    <td><span class="label label-success">SUCCESS</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="panel-footer">
                                        <div class="row">
                                            <div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i>Last 24 hours</span></div>
                                            <div class="col-md-6 text-right"><a href="#" class="btn btn-primary">View All Purchases</a></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END RECENT PURCHASES -->
                            </div>
                            <div class="col-md-6">
                                <!-- MULTI CHARTS -->
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Projection vs. Realization</h3>
                                        <div class="right">
                                            <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                            <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div id="visits-trends-chart" class="ct-chart"></div>
                                    </div>
                                </div>
                                <!-- END MULTI CHARTS -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-7">
                                <!-- TODO LIST -->
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">To-Do List</h3>
                                        <div class="right">
                                            <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                            <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <ul class="list-unstyled todo-list">
                                            <li>
                                                <label class="control-inline fancy-checkbox">
                                                    <input type="checkbox"><span></span>
                                                </label>
                                                <p>
                                                    <span class="title">Restart Server</span>
                                                    <span class="short-description">Dynamically integrate client-centric technologies without cooperative resources.</span>
                                                    <span class="date">Oct 9, 2016</span>
                                                </p>
                                                <div class="controls">
                                                    <a href="#"><i class="icon-software icon-software-pencil"></i></a><a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
                                                </div>
                                            </li>
                                            <li>
                                                <label class="control-inline fancy-checkbox">
                                                    <input type="checkbox"><span></span>
                                                </label>
                                                <p>
                                                    <span class="title">Retest Upload Scenario</span>
                                                    <span class="short-description">Compellingly implement clicks-and-mortar relationships without highly efficient metrics.</span>
                                                    <span class="date">Oct 23, 2016</span>
                                                </p>
                                                <div class="controls">
                                                    <a href="#"><i class="icon-software icon-software-pencil"></i></a><a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
                                                </div>
                                            </li>
                                            <li>
                                                <label class="control-inline fancy-checkbox">
                                                    <input type="checkbox"><span></span>
                                                </label>
                                                <p>
                                                    <strong>Functional Spec Meeting</strong>
                                                    <span class="short-description">Monotonectally formulate client-focused core competencies after parallel web-readiness.</span>
                                                    <span class="date">Oct 11, 2016</span>
                                                </p>
                                                <div class="controls">
                                                    <a href="#"><i class="icon-software icon-software-pencil"></i></a><a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- END TODO LIST -->
                            </div>
                            <div class="col-md-5">
                                <!-- TIMELINE -->
                                <div class="panel panel-scrolling">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Recent User Activity</h3>
                                        <div class="right">
                                            <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                            <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <ul class="list-unstyled activity-list">
                                            <li>
                                                <img src="assets/img/user1.png" alt="Avatar" class="img-circle pull-left avatar">
                                                <p><a href="#">Michael</a> has achieved 80% of his completed tasks <span class="timestamp">20 minutes ago</span></p>
                                            </li>
                                            <li>
                                                <img src="assets/img/user2.png" alt="Avatar" class="img-circle pull-left avatar">
                                                <p><a href="#">Daniel</a> has been added as a team member to project <a href="#">System Update</a> <span class="timestamp">Yesterday</span></p>
                                            </li>
                                            <li>
                                                <img src="assets/img/user3.png" alt="Avatar" class="img-circle pull-left avatar">
                                                <p><a href="#">Martha</a> created a new heatmap view <a href="#">Landing Page</a> <span class="timestamp">2 days ago</span></p>
                                            </li>
                                            <li>
                                                <img src="assets/img/user4.png" alt="Avatar" class="img-circle pull-left avatar">
                                                <p><a href="#">Jane</a> has completed all of the tasks <span class="timestamp">2 days ago</span></p>
                                            </li>
                                            <li>
                                                <img src="assets/img/user5.png" alt="Avatar" class="img-circle pull-left avatar">
                                                <p><a href="#">Jason</a> started a discussion about <a href="#">Weekly Meeting</a> <span class="timestamp">3 days ago</span></p>
                                            </li>
                                        </ul>
                                        <button type="button" class="btn btn-primary btn-bottom center-block">Load More</button>
                                    </div>
                                </div>
                                <!-- END TIMELINE -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <!-- TASKS -->
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">My Tasks</h3>
                                        <div class="right">
                                            <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                            <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <ul class="list-unstyled task-list">
                                            <li>
                                                <p>Updating Users Settings <span class="label-percent">23%</span></p>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%">
                                                        <span class="sr-only">23% Complete</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <p>Load &amp; Stress Test <span class="label-percent">80%</span></p>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <p>Data Duplication Check <span class="label-percent">100%</span></p>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                                        <span class="sr-only">Success</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <p>Server Check <span class="label-percent">45%</span></p>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                        <span class="sr-only">45% Complete</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <p>Mobile App Development <span class="label-percent">10%</span></p>
                                                <div class="progress progress-xs">
                                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
                                                        <span class="sr-only">10% Complete</span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- END TASKS -->
                            </div>
                            <div class="col-md-4">
                                <!-- VISIT CHART -->
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Website Visits</h3>
                                        <div class="right">
                                            <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                            <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div id="visits-chart" class="ct-chart"></div>
                                    </div>
                                </div>
                                <!-- END VISIT CHART -->
                            </div>
                            <div class="col-md-4">
                                <!-- REALTIME CHART -->
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">System Load</h3>
                                        <div class="right">
                                            <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                            <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div id="system-load" class="easy-pie-chart" data-percent="70">
                                            <span class="percent">70</span>
                                        </div>
                                        <h4>CPU Load</h4>
                                        <ul class="list-unstyled list-justify">
                                            <li>High: <span>95%</span></li>
                                            <li>Average: <span>87%</span></li>
                                            <li>Low: <span>20%</span></li>
                                            <li>Threads: <span>996</span></li>
                                            <li>Processes: <span>259</span></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- END REALTIME CHART -->
                            </div>
                        </div>
                    </div>
                </div>
        <!-- END MAIN CONTENT -->
        <footer>
            <div class="container-fluid">
                <p class="copyright">&copy; 2017. Designed &amp; Crafted by <a href="https://themeineed.com">PRG MIS</a></p>
            </div>
        </footer>
    </div>
    <!-- END MAIN -->
</div>

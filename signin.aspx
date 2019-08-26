<%@ page language="C#" autoeventwireup="true" inherits="signin, App_Web_edp0we5m" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<title>RFL | Global Sales</title>

	<!-- CSS -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500"/>
	<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets/css/form-elements.css" rel="stylesheet" />
	<%--<link href="assets/css/style.css" rel="stylesheet" />--%>
	<%--<link href="assets/css/style.css" rel="stylesheet" />--%>
	<link href="assets/css/ownstyle.css" rel="stylesheet" />

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

	<!-- Favicon and touch icons -->
	<link rel="shortcut icon" href="Images/Rfl.jpg"/>
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png" />
	<style>
		.inner-addon {
			position: relative;
		}

			.inner-addon .glyphicon {
				position: absolute;
				padding: 10px;
				pointer-events: none;
			}

		.left-addon .glyphicon {
			left: 0px;
		}

		.right-addon .glyphicon {
			right: 0px;
		}

		.left-addon input {
			padding-left: 30px;
		}

		.right-addon input {
			padding-right: 30px;
		}
	</style>

</head>

<body>
	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div>
								<span class="text-center">
									<img src="Images/Logo.png" class="img-responsive" alt="RFL logo" style="height: 100%; width: 100%; padding-top: 5px;"></span>
							</div>
							<div class="form-top-left">
								<h4 class="form-signin-heading">Please Login</h4>
							</div>
							<div class="form-top-right">
								<i class="fa fa-key"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form role="form" action="" method="post" class="login-form">
								<div class="form-group inner-addon left-addon">
									<i class="glyphicon glyphicon-user"></i>
									<input autofocus="autofocus" class="form-control" data-val="true" data-val-required="The User name field is required." id="txtUsername" name="form-username" placeholder="Enter your user name" required="required" type="text" value="" />
								</div>

								<div class="form-group inner-addon left-addon">
									<i class="glyphicon glyphicon-lock"></i>
									<input class="form-control" data-val="true" data-val-required="The Password field is required." id="txtPassword" name="form-password" placeholder="Enter your password" required="required" type="password" value="" />
								</div>
								<button type="submit" class="btn">Login!</button>
								<asp:Label ID="lblMsg" runat="server" Visible="false" Text="Invalid Username or Password."></asp:Label>
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="assets/js/jquery-1.11.2.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.backstretch.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>
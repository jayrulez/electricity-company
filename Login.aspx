﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>OnWind Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="language" content="en_us" />
    <link rel="stylesheet" type="text/css" href="./Css/common.css" />
    <link rel="stylesheet" type="text/css" href="./Css/layout.css" />
    <!--[if lt IE 8]>
    <link rel="stylesheet" type="text/css" href="./Css/ie.css" />
    <![endif]-->
    <script src="./Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

        });
    </script>
</head>
<body>
	<div id="page">
		<div id="header">
            <div id="logo">OnWind Electricity</div>
		</div>
		<div id="content" class="clearfix">
			<div id="sidebar">
				<div id="side-nav">
                    
					<ul>
						<li><a href="Default.aspx">Management Home</a></li>
						<li><a href="Employees.aspx">Employees</a></li>
						<li><a href="Premises.aspx" >Premises</a></li>
						<li><a href="Meters.aspx" >Meters</a></li>
						<li><a href="Customers.aspx" >Customers</a></li>
						<li><a href="Billing.aspx" >Billing</a></li>
						<li><a href="PaymentServices.aspx" >Payment Services</a></li>
						<li><a href="Payments.aspx" >Payments</a></li>
					</ul>
				</div>
			</div>
			<div id="widebar">
				<div id="widebar-content-container">
                    <div id="widebar-content">
					    <div id="widebar-header">
					    </div>
					    <div id="widebar-body">
    <form id="form1" runat="server">
    <div>
        <p class="message">
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <label for="txtUsername" class="txtLabel">Username</label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </p>
        <p>
            <label for="txtPassword" class="txtLabel">Password</label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:LinkButton ID="linkButton" runat="server">Login</asp:LinkButton>
        </p>
    </div>
    </form>
					    </div>
                    </div>
				</div>
			</div>
		</div>
		<div id="footer">
		</div>
	</div>
</body>
</html>


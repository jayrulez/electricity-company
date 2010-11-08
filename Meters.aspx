<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Meters.aspx.cs" Inherits="Meters" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Meters</title>
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
                            <form id="formMetersGrid" runat="server">
                            <div>
		                        <asp:GridView ID="GridViewMeters" runat="server" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ccDb" 
                                    EnableModelValidation="True" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                                    AllowPaging="True" DataKeyNames="id" DataMember="DefaultView" 
                                    ShowFooter="True">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="install_date" HeaderText="Installation Date" 
                                            SortExpression="install_date" />
                                        <asp:BoundField DataField="model" HeaderText="Model" 
                                            SortExpression="model" />
                                        <asp:BoundField DataField="premise_id" HeaderText="Premise Id" 
                                            SortExpression="premise_id" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="ccDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:onwindConnectionString %>" 
                                    SelectCommand="SELECT [install_date], [model], [premise_id], [id] FROM [meter]">
                                </asp:SqlDataSource>
                            </div>
                            <div>
                                <asp:FormView ID="FormViewMeter" runat="server" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    DataSourceID="ccDb" EnableModelValidation="True" GridLines="Vertical" 
                                    DataKeyNames="id" DefaultMode="Insert">
                                    
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <InsertItemTemplate>
                                        <h3>Add New Meter</h3>
                                        <span class="txtLabel">Installation Date:</span>
                                        <asp:TextBox ID="amountTextBox" runat="server" 
                                            Text='<%# Bind("install_date") %>' />
                                        <br />
                                        <span class="txtLabel">Model:</span>
                                        <asp:TextBox ID="modelTextBox" runat="server" 
                                            Text='<%# Bind("model") %>' />
                                        <br />
                                        <span class="txtLabel">Premise Id:</span>
                                        <asp:TextBox ID="premise_idTextBox" runat="server" 
                                            Text='<%# Bind("premise_id") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                            CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                </asp:FormView>  
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

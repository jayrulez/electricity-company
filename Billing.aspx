<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Billing.aspx.cs" Inherits="Billing" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Billing</title>
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
                            <form id="formBillingGrid" runat="server">
                            <div>
		                        <asp:GridView ID="GridViewBilling" runat="server" 
                                    AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ccDb" 
                                    EnableModelValidation="True" BackColor="White" BorderColor="#999999" 
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                                    AllowPaging="True" DataKeyNames="id" DataMember="DefaultView" 
                                    ShowFooter="True">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="Billing Id" 
                                            SortExpression="id" />
                                        <asp:BoundField DataField="cycle_start" HeaderText="Cycle Start" 
                                            SortExpression="cycle_start" />
                                        <asp:BoundField DataField="cycle_end" HeaderText="Cycle End" 
                                            SortExpression="cycle_end" />
                                        <asp:BoundField DataField="consumption" HeaderText="Consumption(kWh)" SortExpression="consumption" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" 
                                            SortExpression="due_date" />
										<asp:BoundField DataField="current_charge" HeaderText="Current Charge" 
											SortExpression="current_charge" />
										<asp:BoundField DataField="previous_balance" HeaderText="Previous Balance" 
											SortExpression="previous_balance" />
										<asp:BoundField DataField="total_charge" HeaderText="Total Charge" 
											SortExpression="total_charge" />
										<asp:BoundField DataField="meter_id" HeaderText="Meter Id" 
											SortExpression="meter_id" />
										<asp:CommandField ShowEditButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="ccDb" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:onwindConnectionString %>" 
                                    SelectCommand="SELECT [id], [cycle_start], [cycle_end], [consumption], [due_date], [current_charge], [previous_balance], [total_charge], [meter_id] FROM [billing]"
                                    UpdateCommand="UPDATE [billing] SET [cycle_start] = @cycle_start, [cycle_end] = @cycle_end, [consumption] = @consumption, [due_date] = @due_date, [current_charge] = @current_charge, [previous_balance] = @previous_balance, [total_charge] = @total_charge, [meter_id] = @meter_id, WHERE [id] = @id">
                                    <UpdateParameters>
                                        <asp:Parameter Name="cycle_start" Type="String" />
                                        <asp:Parameter Name="cycle_end" Type="String" />
                                        <asp:Parameter Name="consumption" Type="Decimal" />
                                        <asp:Parameter Name="due_date" Type="String" />
                                        <asp:Parameter Name="current_charge" Type="Decimal" />
                                        <asp:Parameter Name="previous_balance" Type="Decimal" />
                                        <asp:Parameter Name="total_charge" Type="Decimal" />
                                        <asp:Parameter Name="meter_id" Type="Int32" />
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
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

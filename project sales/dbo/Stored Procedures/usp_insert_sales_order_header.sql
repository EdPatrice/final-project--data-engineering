
create   procedure usp_insert_sales_order_header
as
begin
	merge fact.sales_order_header as soh
	using (
		select distinct 
			SalesOrderID,
			OrderDate,
			DueDate,
			ShipDate,
			SalesOrderNumber,
			OnlineOrderFlag,
			PurchaseOrderNumber,
			AccountNumber,
			cus_ID,
			sp_ID,
			SubTotal,
			TaxAmt,
			Freight,
			TotalDue
		from
			stg_orders as so
			left join dim.customer as c 
				on (c.cus_ID = so.CustomerID)
			left join dim.sales_person as sp
				on (sp.sp_ID = so.SalesPersonID)
	) as src
	on (SalesOrderID = sales_order_ID)
	
	when matched then
		update set 
			sales_order_ID = SalesOrderID,
			order_date = OrderDate,
			due_date = DueDate,
			ship_date = ShipDate,
			sales_order_number = SalesOrderNumber,
			online_order_flag = OnlineOrderFlag,
			purchase_order_number = PurchaseOrderNumber,
			account_number = AccountNumber,
			cus_ID = src.cus_ID,
			sp_ID = src.sp_ID,
			sub_total = SubTotal,
			tax_amount = TaxAmt,
			freight = src.Freight,
			total_due = TotalDue

	when not matched by target then 
		insert (
			sales_order_ID, order_date, due_date,
			ship_date, sales_order_number, online_order_flag,
			purchase_order_number, account_number, cus_ID,
			sp_ID, sub_total, tax_amount,
			freight, total_due
		)
		values (
			SalesOrderID, OrderDate, DueDate, 
			ShipDate, SalesOrderNumber, OnlineOrderFlag,
			PurchaseOrderNumber, AccountNumber, cus_ID,
			sp_ID , SubTotal, TaxAmt,
			Freight, TotalDue
		);
end
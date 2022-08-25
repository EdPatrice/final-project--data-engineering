create   procedure usp_insert_sales_order_details
as
begin
	merge fact.sales_order_details as sod
	using (
		select	
			sales_order_ID, OrderQty, product_ID, 
			UnitPrice, UnitPriceDiscount, LineTotal
		from
			stg_orders as so
			left join fact.sales_order_header as soh
				on (soh.sales_order_ID = so.SalesOrderID)
			left join dim.products as p
				on (p.product_ID = so.ProductID) 
	) as src
	on (src.sales_order_ID = sod.sales_order_ID
		and src.product_ID = sod.product_ID)
	when not matched by target then
		insert (
			sales_order_ID, order_Qty, product_ID,
			unit_price, unit_price_discount, line_total
		)
		values (
			sales_order_ID, OrderQty, product_ID, 
			UnitPrice, UnitPriceDiscount, LineTotal
		);
end
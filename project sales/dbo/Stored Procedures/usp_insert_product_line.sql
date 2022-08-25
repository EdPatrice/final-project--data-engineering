
create   procedure usp_insert_product_line
as 
begin
	merge dim.product_line as pl
	using (
		select distinct ProductLine from stg_products ) as src
	on (ProductLine = pl.product_line_name)
	when not matched by target then 
		insert (product_line_name) values (ProductLine);
end
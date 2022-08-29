
create   procedure usp_insert_product_sub_category
as 
begin
	merge dim.product_sub_category as psc
	using (
		select distinct ProductSubCategory from stg_products) as src
	on (ProductSubCategory = psc.ps_category_name)
	when matched then
		update set
			ps_category_name = ProductSubCategory
	when not matched by target then 
		insert (ps_category_name) values (ProductSubCategory)
	when not matched by source then 
		delete;
end

create   procedure usp_insert_product_category
as 
begin
	merge dim.product_category as pc
	using (
		select distinct 
			sp.ProductCategory as category, 
			psc.ps_category_ID
		from
			stg_products as sp
			left join dim.product_sub_category as psc
				on (sp.ProductSubCategory = psc.ps_category_name)
	) as src
	on (pc.product_category_name = category)
	when matched then 
		update set 
			ps_category_ID = src.ps_category_ID,
			product_category_name = category
	when not matched by target then
		insert 
			( ps_category_ID, product_category_name)
		values
			(ps_category_ID, category)
	when not matched by source then 
		delete;
end
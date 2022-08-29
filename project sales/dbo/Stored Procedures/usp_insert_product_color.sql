
create   procedure usp_insert_product_color
as 
begin
	merge dim.product_color as pc
	using (
		select distinct color from stg_products) as spc
	on (pc.color_name = spc.color)
	when matched then 
		update set 
			color_name = color
	when not matched by target then
		insert (color_name) values (color)
	when not matched by source then 
		delete;
end
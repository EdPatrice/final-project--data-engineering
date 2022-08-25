
create   procedure usp_insert_product_color
as 
begin
	merge dim.product_color as pc
	using (
		select distinct color from stg_products) as spc
	on (pc.color_name = spc.color)
	when not matched by target then
		insert (color_name) values (spc.color);
end
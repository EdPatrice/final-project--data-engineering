
create   procedure usp_insert_product_measure 
as
begin
	merge dim.product_measure as pm
	using (
		select distinct SizeUnitMeasureCode as measure from stg_products
		union
		select distinct WeightUnitMeasureCode from stg_products) as src
	on (measure = pm.measure_name)
	when not matched by target then 
		insert (measure_name) values (measure);
end
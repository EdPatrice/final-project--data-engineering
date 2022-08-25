
create   procedure usp_insert_product_model
as 
begin 
	merge dim.product_model as pm
	using (
		select distinct ProductModel from stg_products) as src
	on (ProductModel = pm.model_name)
	when not matched by target then
		insert (model_name) values (ProductModel);
end
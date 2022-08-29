
create   procedure usp_insert_product_model
as 
begin 
	merge dim.product_model as pm
	using (
		select distinct ProductModel from stg_products) as src
	on (ProductModel = pm.model_name)
	when matched then 
		update set 
			model_name = ProductModel
	when not matched by target then
		insert (model_name) values (ProductModel)
	when not matched by source then 
		delete;
end
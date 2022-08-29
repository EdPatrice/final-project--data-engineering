
create   procedure usp_insert_products
as
begin
	
	merge dim.products as p
	using (
	select
		ProductID,
		[Name],
		ProductNumber,
		color_ID,
		SafetyStockLevel,
		ReorderPoint,
		StandardCost,
		ListPrice,
		Size,
		psm.measure_ID as size_measure,
		[Weight],
		pwm.measure_ID as weight_measure,
		product_line_ID,
		product_category_ID,
		model_ID
	from
		stg_products as sp
		left join dim.product_color as pc
			on (sp.Color = pc.color_name)
		left join dim.product_measure as psm
			on (sp.SizeUnitMeasureCode = psm.measure_name)
		left join dim.product_measure as pwm
			on (sp.WeightUnitMeasureCode = pwm.measure_name)
		left join dim.product_line as pl 
			on (sp.ProductLine = pl.product_line_name)
		left join dim.product_category as pca
			on (sp.ProductCategory = pca.product_category_name)
		left join dim.product_model as pmo
			on (sp.ProductModel = pmo.model_name)
	) as src
	on ([Name] = p.product_name)
	when matched then
		update set 
			product_ID = ProductID,
			product_name = [Name],
			product_number = ProductNumber,
			color_ID = src.color_ID,
			safety_stock_level = SafetyStockLevel,
			reorder_point = ReorderPoint,
			standard_cost = StandardCost,
			list_price = ListPrice,
			product_size = Size,
			ps_measure_ID = size_measure,
			product_line_ID = src.product_line_ID,
			product_category_ID = src.product_category_ID,
			model_ID = src.model_ID

	when not matched by target then 
		insert (
			product_ID,	product_name, product_number, 
			color_ID, safety_stock_level, reorder_point, 
			standard_cost, list_price, product_size, 
			ps_measure_ID, product_weight, pw_measure_ID, 
			product_line_ID,product_category_ID, model_ID
		)
		values (
			ProductID, [Name], ProductNumber, 
			color_ID, SafetyStockLevel, ReorderPoint, 
			StandardCost, ListPrice, Size, 
			size_measure, [weight], weight_measure, 
			product_line_ID, product_category_ID, model_ID
		)
	when not matched by source then 
		delete;
end
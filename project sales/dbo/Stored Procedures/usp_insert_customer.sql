create   procedure usp_insert_customer
as 
begin
	merge dim.customer as cus
	using stg_customer as stg_cus
	on (stg_cus.CustomerId = cus.cus_ID)
	when matched then 
		update set
			cus.cus_title = stg_cus.Title,
			cus.first_name = stg_cus.FirstName,
			cus.middle_name = stg_cus.MiddleName,
			cus.last_name = stg_cus.LastName,
			cus.suffix = stg_cus.Suffix
	when not matched by target then
		insert 
			(cus_ID, cus_title, first_name, 
			middle_name, last_name, suffix)
		values
			(stg_cus.CustomerID, stg_cus.Title, stg_cus.FirstName, 
			stg_cus.MiddleName, stg_cus.LastName, stg_cus.Suffix)
	when not matched by source then 
		delete;
end
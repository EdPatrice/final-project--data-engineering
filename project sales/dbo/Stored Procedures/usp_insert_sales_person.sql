
create   procedure usp_insert_sales_person
as 
begin
	merge dim.sales_person as dsp
		using stg_sales_person as ssp
		on(dsp.sp_ID = ssp.SalesPersonID)
		when matched then 
		update set
			dsp.sales_quota = ssp.SalesQuota,
			dsp.bonus = ssp.Bonus,
			dsp.commission_pct = ssp.CommissionPct
		when not matched by target then
			insert 
				(sp_ID, sales_quota, bonus, commission_pct)
			values
				(SalesPersonID, SalesQuota, Bonus, CommissionPct);
end
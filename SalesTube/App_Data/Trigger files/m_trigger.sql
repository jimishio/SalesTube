USE SalesDB
GO

create trigger d_trigger2
on dbo.sales_master
for delete
as

Declare @d_invoiceno VARCHAR(50);

Select @d_invoiceno= i.invoice_no from deleted i;

delete from sales_details where sales_details.invoice_no = @d_invoiceno;
GO
Use SalesDB
GO

Create trigger u_trigger1
on dbo.sales_details
for update
as
Declare @val FLOAT
Declare @val1 FLOAT
Declare @val2 FLOAT
Declare @no VARCHAR(50)
Declare @no1 VARCHAR(50)

Select @val= i.total_amount from inserted i;
Select @val1= i.total_amount from deleted i;
Select @no= i.invoice_no from inserted i;
Select @no1= i.invoice_no from deleted i;

if UPDATE(total_amount)
begin
if(@val>=@val1)
update sales_master set aarmount=aarmount+(@val-@val1);

if(@val<@val1)
update sales_master set aarmount=aarmount-(@val1-@val);
end

if(@no1 Is NULL And @no IS NOT NULL)
update sales_master set aarmount=aarmount+@val where sales_master.invoice_no = @no;


if(@no IS NULL And @no1 IS NOT NULL)
update sales_master set aarmount=aarmount-@val1 where sales_master.invoice_no = @no1;
GO






create trigger i_trigger1
on dbo.sales_details
for insert
as
Declare @a_val FLOAT;
Declare @i_no VARCHAR(50);

Select @a_val= i.total_amount from inserted i;
Select @i_no= i.invoice_no from inserted i;

update sales_master set aarmount=aarmount+@a_val where sales_master.invoice_no=@i_no;
GO





create trigger d_trigger1
on dbo.sales_details
for delete
as
Declare @d_val FLOAT;
Declare @d_no VARCHAR(50);

Select @d_no= d.invoice_no from deleted d;
Select @d_val= d.total_amount from deleted d;

update sales_master set aarmount=aarmount-@d_val where sales_master.invoice_no=@d_no;
GO
USE SalesDB
GO

Create trigger p_trigger
on dbo.product
for update 
as

Declare @old_id VARCHAR(50);
Declare @new_id VARCHAR(50);

Select @old_id= i.prod_id from deleted i;
Select @new_id= i.prod_id from inserted i;

update item set prod_id=@new_id where item.prod_id = @old_id;
GO
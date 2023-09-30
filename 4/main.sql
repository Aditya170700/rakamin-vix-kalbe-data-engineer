# Create a database with ‘KALBE’ as the name.
create database KALBE;

use KALBE;

# Inside the database, create a table with the name
# ‘Inventory’, with columns Item_code,
# Item_name, Item_price, and Item_total. Choose
# its own best data type and the length of it
# according to best practice. Choose one unique
# column as a primary key and decide columns
# constraints.
create table Inventory (
    Item_code int primary key auto_increment,
    Item_name varchar(255),
    Item_price int,
    Item_total int
);

# Insert data into the table
insert into Inventory (Item_code, Item_name, Item_price, Item_total)
values
    (2341, 'Promag Tablet', 3000, 100),
    (2342, 'Hydro Coco 250ML', 7000, 20),
    (2343, 'Nutrive Benecol 100ML', 20000, 30),
    (2344, 'Blackmores Vit C 500Mg', 95000, 45),
    (2345, 'Entrasol Gold 370G', 90000, 120);

# Show Item_name that has the highest number in Item_total.
select @max_item_name := Item_name from Inventory order by Item_total desc limit 1;

# Update the Item_price of the output of question bullet
update Inventory set Item_price = 100000 where Item_name = @max_item_name;

# What will happen if we insert another Item_name with Item_code of 2343 into the table?
# Jika kita insert nama lain dengan Item_code 2343 ke tabel,
# akan menghasilkan error karena Item_code adalah primary key sehingga tidak boleh duplikat

# Delete the Item_name that has the lowest number of Item_total.
select @min_item_total := Item_total from Inventory order by Item_total asc limit 1;
delete from Inventory where Item_total = @min_item_total;

SELECT * FROM product
WHERE ListPrice = 57.50;

select max(ListPrice) FROM product
where listprice = 57.50;

select productID, code, Description, ListPrice
FROM product;    -- comment

-- select p.productID, p.code, p.Description, p.ListPrice
-- FROM product p;    -- creates an alias
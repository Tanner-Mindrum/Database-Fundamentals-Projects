SELECT * FROM customers;

SELECT productName, productLine FROM products;

SELECT productName FROM products
    WHERE productLine = 'Motorcycles';

SELECT productVendor FROM products
    WHERE productName = '1968 Ford Mustang';

SELECT orderNumber, status FROM orders
    WHERE status = 'Resolved' OR status = 'Cancelled';

SELECT orderNumber, shippedDate FROM orders
    WHERE status = 'Shipped' AND shippedDate > requiredDate;

SELECT productName, quantityInStock FROM products
    WHERE buyPrice > MSRP;

/* 1. Tampilkan hanya kolom order_id, customer_id, dan sales*/
SELECT 
	order_id,
	customer_id,
	sales-
FROM orders 

/* 2. Tampilkan semua transaksi yang berasal dari Kota Seattle */
SELECT * FROM orders WHERE city = 'Seattle'

/* 3. Tampilkan semua daftar transaksi dari konsumen perorangan (segment = Consumer) 
yang membeli produk Furniture di Kota New York City */
SELECT 
	* 
FROM 
	orders 
WHERE 
	segment = 'Consumer' AND 
	category = 'Furniture' AND 
	city = 'New York City'




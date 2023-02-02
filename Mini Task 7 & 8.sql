											-- JAWABAN MINI TASK 7 --

/* 1. Tampilkan hanya kolom order_id, customer_id, dan sales */
SELECT order_id, customer_id, sales FROM orders

/* 2. Tampilkan semua transaksi yang berasal dari Kota Seattle */
SELECT * FROM orders WHERE city = 'Seattle'

/* Tampilkan semua daftar transaksi dari konsumen perorangan (segment = Consumer) 
yang membeli produk Furniture di Kota New York City */
SELECT 
	* 
FROM orders 
WHERE 
	segment = 'Consumer' AND 
	category = 'Furniture' AND 
	city = 'New York City'


										-- JAWABAN MINI TASK 8 --

/* 1. Tampilkan daftar berisi nama-nama produk yang dijual */
SELECT product_name FROM orders 

/* 2. Tampilkan 10 baris teratas berdasarkan nilai sales mulai dari yang terbesar */
SELECT * FROM orders ORDER BY sales desc limit 10 

/* 3. Tampilkan daftar oder yang masuk pada bulan Maret 2015 */
SELECT * FROM orders WHERE order_date BETWEEN '2015-03-01' AND '2015-03-31'


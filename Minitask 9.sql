SELECT * FROM orders
SELECT MAX(sales) FROM orders
/*Produk apa yang best selling (berdasarkan kuantitas yang terjual)?*/
SELECT 
	product_name, 
	SUM(quantity) AS best_selling
FROM 
	orders 
GROUP BY 
	product_name 
ORDER BY 
	SUM(quantity) DESC
	
/*Kamu ingin memberikan promo kepada 100 konsumen perorangan (segment = ‘Consumer’) 
dengan rata-rata nilai order tertinggi. Buatlah daftar konsumen tersebut!
*/
SELECT
	customer_name as seratus_customer,
	AVG(sales) AS highest_order
FROM
	orders
WHERE 
	segment = 'Consumer'
GROUP BY
	customer_name
ORDER BY
	AVG(sales) desc LIMIT 100
	
/*Konsumen bernama Joel Eaton meminta rekapan transaksi berisi 
produk apa saja yang dibeli beserta kuantitasnya selama dia menjadi 
konsumen Tokopaedi. Buatlah data rekapan tersebut!
*/
SELECT
	product_name,
	sum(quantity) as jumlah
FROM 
	orders
WHERE 
	customer_name = 'Joel Eaton'
GROUP BY 
	product_name

/* Pada tanggal berapa Tokopaedi menerima order paling banyak? */
SELECT 
	order_date,
	MAX(sales) as banyaknya_order
FROM 
	orders
GROUP BY 
	order_date
ORDER BY 
	MAX(sales) desc

/*5. Produk apa yang memiliki rata-rata keuntungan terbesar per unit terjualnya?*/
SELECT 
	product_name,
	AVG(profit) as Keuntungan_terbesar
FROM 
	orders
GROUP BY 
	product_name
ORDER BY 
	avg(profit) desc


/*[tokopaedi] Buat daftar konsumen dengan rata-rata 
spending per transsaksi di atas rata-rata seluruh konsumen */

SELECT 
	customer_name,
	sum(sales)/avg(sales) as rata_rata
from 
	orders 
WHERE 
	
GROUP BY 
	customer_name
ORDER BY 
	sum(sales)/avg(sales) desc


	

    

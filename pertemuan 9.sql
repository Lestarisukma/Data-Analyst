/* isi dari basket A
	isi : Apple, Orange, Banan, Cucumber 
*/
SELECT * FROM basket_a

/* isi dari basket B
	isi : Orange, apple, watermelon, pear 
*/
SELECT * FROM basket_b

/* INNER JOIN: manampilkan hanya elemen/data yang ada di kedua tabel*/

Select 
	fruit_a,
	fruit_b
from 
	basket_a inner join basket_b on basket_a.fruit_a = basket_b.fruit_b

select 
	*
from 
	basket_a inner join basket_b on basket_a.fruit_a = basket_b.fruit_b


/* basket_a.fruit_a = ambil kolom fruit_a yang berasal dari basket_a */

/*alias & orefix*/
select 
	*
from 
	basket_a as tab1 inner join basket_b as tab2
	on tab1.fruit_a = tab2.fruit_b

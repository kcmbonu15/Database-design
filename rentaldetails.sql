Question 1 
UPDATE movie SET movie_year = ‘2008’ 
WHERE movie_num = ‘1245’;

 Question 2 
UPDATE price set price_rentfee = price_rentfee + 0.50;

Question 3 
SELECT movie_year, movie_title, movie_cost 
FROM movie 
ORDER BY movie_year DESC;

Question 4
SELECT movie_title, movie_year, movie_genre 
FROM movie;

Question 5 

SELECT movie_title, movie_year, movie_genre 
FROM movie 
ORDER BY movie_genre asc, movie_year DESC; 

 Question 6 
SELECT movie_num, movie_title, price_code 
FROM movie 
WHERE title LIKE “r%”;

Question7 
SELECT movie_num, movie_title, movie_cost 
FROM movie 
WHERE movie_cost > 40;

 Question 8 
SELECT movie_num, movie_title, movie_cost, movie_genre  
FROM movie 
WHERE movie_genre in('ACTION', 'COMEDY') and movie_cost < 50 
ORDER BY movie_genre ASC;

 Question 9 
SELECT movie_genre, COUNT(movie_num) 
FROM movie 
GROUP BY movie_genre;
Question 10
SELECT movie_title, movie_genre, price_description, price_rentfee 
FROM movie, price
WHERE movie.price_code = price.price_code;

 Question 11 
SELECT movie_genre, COUNT(movie_num), AVG(movie_cost) 
FROM movie 
GROUP BY movie_genre;

Question 12 
SELECT movie_title, movie_year, price_description, price_rentfee, movie_genre
FROM movie, price
WHERE movie.price_code = price.price_code AND (movie_genre='FAMILY' OR movie_genre='COMEDY' OR movie_genre= 'DRAMA');
Question 13 
SELECT movie_genre,AVG(price_rentfee)AS AVG_rentfee
FROM movie, price
WHERE movie.price_code=price.price_code
GROUP BY movie_genre;


 Question 14 
SELECT movie_title, movie_year, (movie_cost/price_rentfee) AS movie_breakeven 
FROM movie, price
WHERE movie.price_code = price.price_code;
Question 15 
SELECT movie_title, movie_year, movie_cost
FROM movie
WHERE movie_cost BETWEEN 44.99 and 49.99;
Question 16
SELECT mem_num, mem_fname, mem_lname, mem_balance
FROM membership
WHERE mem_num IN (SELECT mem_num FROM rental );

 Question 17 
SELECT MIN (mem_balance) AS “Minimum Balance”, MAX (mem_balance) AS “Minimum Balance”, AVG(mem_balance) AS “Average Balance”
FROM membership
WHERE mem_num IN (SELECT mem_num FROM rental);

Question 18 
SELECT membership.mem_num, mem_lname SUM(detail_fee)
FROM membership, rental, detailrental
WHERE membership.mem_num = rental.mem_num AND
rental.rent_num = detailrental.rent_num
GROUP BY membership.mem_num;

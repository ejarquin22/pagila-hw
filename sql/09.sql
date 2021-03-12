/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 *
 */

SELECT first_name, last_name, sum(amount) AS "sum"
FROM staff
INNER JOIN payment USING(staff_id)
WHERE payment_date BETWEEN '2020-01-01' AND '2020-02-01'
GROUP BY first_name, last_name;

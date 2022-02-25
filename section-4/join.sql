SELECT
	ac.custumer_id,
	ac.fav_color,
	rc.num_purchases
FROM
	active_customer ac,
	reward_customer rc
WHERE
	ac.customer_id = rc.custumer_id
;


#JOIN example

SELECT
	ac.custumer_id,
	ac.fav_color,
	rc.num_purchases
FROM
	active_customer ac
		JOIN reward_customer rc ON ac.custumer_id = rc.custumer_id
;


#LEFT JOIN

SELECT
	ac.custumer_id,
	ac.fav_color,
	rc.num_purchases
FROM
	active_customer ac
		LEFT JOIN reward_customer rc ON ac.custumer_id = rc.custumer_id
;

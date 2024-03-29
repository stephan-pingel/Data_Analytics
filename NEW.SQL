'''
Seven       (Select)
Fun         (From)
Werewolves  (Where) 
Get         (Group By)
Happy       (Having)
Over        (Order by)
Lunch       (Limit)
'''

SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT

/*
ORDER:

When you write any query, your query is processed in the following steps:

1. Getting Data (FROM/JOIN)
2. Row Filter (WHERE)
3. Grouping (GROUP BY)
4. Group Filter (HAVING)
5. Return Expression (SELECT)
6. Order & Paging (ORDER BY & LIMIT/OFFSET)
--
1. FROM / JOIN	When you write any query, SQL starts by identifying the tables for the data retrieval and how they are connected.
2. WHERE	It acts as a filter; it filters the record based on the conditions specified by the users.
3. GROUP BY	The filtered data is grouped based on the specified condition.
4. HAVING	It is similar to the WHERE clause but applied after grouping the data.
5. SELECT	The clause selects the columns to be included in the final result.
6. DISTINCT	Remove the duplicate rows from the result. Once you apply this clause, you are only left with distinct records.
ORDER BY	It sorts (increasing/decreasing/A->Z/Z->A) the results based on the specified condition.
LIMIT / OFFSET	It determines the number of records to return and from where to start.
*/
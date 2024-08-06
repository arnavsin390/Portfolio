# **Instacart Predictor**
### Libraries: os, pandas, itertools, collections, time
#### Description: 
Utilized map reduce function pairs to learn association rules that can accurately predict what a customer will buy based on a subset of items in an order. 
1. Created a function to convert frequent itemsets determined by map/reduce into association rules with high precision (and adequate recall). Rules are a list of tuples, each tuple consisting of a set of products (the left-hand side of the rule) and a right-hand side which is either a single product or a set of products
2. Converted the frequent itemsets found by algorithms into association rules with higher recall than algorithm #1

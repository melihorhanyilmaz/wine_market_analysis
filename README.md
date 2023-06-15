# Wine Market Analysis

This repository contains a market analysis report for Vivino, a company in the wine industry. The report provides insights and answers to various questions related to the wine market using data from Vivino's database.

Questions:
- We want to highlight 10 wines to increase our sales, which ones should we choose and why?
- We have a marketing budget for this year, which country should we prioritise and why?
- We would like to give a price to the best winery, which one should we choose and why?
- We has detected that a big cluster of customers like a specific combination of tastes. We have identified few `primary` `keywords` that matches this and we would like you to **find all the wines that have those keywords**. To ensure accuracy of our selection, ensure that **more than 10 users confirmed those keywords**. Also, identify the `flavor_groups` related to those keywords.
	- Coffee
	- Toast
	- Green apple
	- cream
	- citrus
- We would like to do a selection of wines that are easy to find all over the world. **Find the top 3 most common `grape` all over the world** and **for each grape, give us the the 5 best rated wines**.
- We would to give create a country leaderboard, give us a visual that shows the **average wine rating for each `country`**. Do the same for the `vintages`.
- One of our VIP client like `Cabernet Sauvignon`, he would like a top 5 recommandation, which wines would you recommend to him?

## Installation

To run the analysis, you will need the following:

- SQLite: The database is provided in SQLite format. Make sure you have SQLite installed on your machine to access and query the database.

## Usage

1. Clone the repository:

```bash
git clone https://github.com/melihorhanyilmaz/wine_market_analysis.git
```

2. Access the repository:

```bash
cd wine_market_analysis
```

3. Explore the data:

The data is provided in the `vivino_v2.db` file in SQLite format. You can use SQLite command line or any SQLite client to explore the data and run queries.

4. Execute SQL queries:

The SQL queries to answer the market analysis questions are available in the `questions` directory. You can run the queries in any SQLite client or using the command line.

Example using SQLite command line:

```bash
sqlite3 vivino.db < queations/filename.sql
```

This will execute the SQL query in `filename.sql` and display the result.

## Contributors

This is a solo project created by Melih Orhan YILMAZ.
-- CTE to calculate the total emissions per state and generate a rank and category

WITH state_emissions AS (
  SELECT
    state_abbr,
    SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS Total_Emissions
  FROM
    emissions.default.emissions_data
  GROUP BY
    state_abbr
),
totals AS (
  SELECT
    SUM(Total_Emissions) AS all_states_total
  FROM
    state_emissions
)
SELECT
  state_abbr,
  Total_Emissions,
  ROUND((Total_Emissions / all_states_total) * 100, 2) AS percentage_of_total,
  ROW_NUMBER() OVER (ORDER BY Total_Emissions DESC) AS rank,
  CASE
    WHEN ROW_NUMBER() OVER (ORDER BY Total_Emissions DESC) <= 10 THEN 'Top 10'
    ELSE 'Other'
  END AS category
FROM
  state_emissions CROSS JOIN totals
ORDER BY
  Total_Emissions DESC
-- Calculate the emission for each person in every state.

SELECT 
  county_state_name,
  population,
  `GHG emissions mtons CO2e` AS emissions,
  ROUND(TRY_CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) / NULLIF(TRY_CAST(REPLACE(population, ',', '') AS DOUBLE), 0), 3) AS emissions_per_person
FROM emissions.default.emissions_data
ORDER BY emissions_per_person DESC
SELECT state_abbr,
       SUM(cast(
         replace(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE
       )) as Total_Emissions
FROM `emissions`.`default`.`emissions_data`
GROUP BY state_abbr
ORDER BY Total_Emissions DESC
LIMIT 10
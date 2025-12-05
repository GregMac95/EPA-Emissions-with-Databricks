select county_state_name,
       population,
       cast(
         replace(`GHG emissions mtons CO2e`, ',', '') as double
       ) / nullif(
         cast(replace(population, ',', '') as double), 0
       ) as Emissions_per_person
from `emissions`.`default`.`emissions_data`
ORDER BY emissions_per_person desc;
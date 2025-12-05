select county_state_name,
       population,
       cast(
         replace(`GHG emissions mtons CO2e`, ',', '') as double
       ) as Total_Emissions
from `emissions`.`default`.`emissions_data`
ORDER BY total_emissions desc;
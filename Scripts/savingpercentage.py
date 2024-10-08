# Constants
on_demand_t3_medium = 0.0418
on_demand_t3_large = 0.0835
ri_standard_t3_medium = 0.026
ri_standard_t3_large = 0.052
ri_convertible_t3_medium = 0.030
ri_convertible_t3_large = 0.060

# Total hours in a year
hours_per_year = 24 * 365

# Calculate yearly costs for each type
yearly_cost_on_demand_t3_medium = on_demand_t3_medium * hours_per_year
yearly_cost_on_demand_t3_large = on_demand_t3_large * hours_per_year
yearly_cost_ri_standard_t3_medium = ri_standard_t3_medium * hours_per_year
yearly_cost_ri_standard_t3_large = ri_standard_t3_large * hours_per_year
yearly_cost_ri_convertible_t3_medium = ri_convertible_t3_medium * hours_per_year
yearly_cost_ri_convertible_t3_large = ri_convertible_t3_large * hours_per_year

# Calculate percentage savings
savings_standard_t3_medium = ((yearly_cost_on_demand_t3_medium - yearly_cost_ri_standard_t3_medium) / yearly_cost_on_demand_t3_medium) * 100
savings_standard_t3_large = ((yearly_cost_on_demand_t3_large - yearly_cost_ri_standard_t3_large) / yearly_cost_on_demand_t3_large) * 100
savings_convertible_t3_medium = ((yearly_cost_on_demand_t3_medium - yearly_cost_ri_convertible_t3_medium) / yearly_cost_on_demand_t3_medium) * 100
savings_convertible_t3_large = ((yearly_cost_on_demand_t3_large - yearly_cost_ri_convertible_t3_large) / yearly_cost_on_demand_t3_large) * 100

(savings_standard_t3_medium, savings_standard_t3_large, savings_convertible_t3_medium, savings_convertible_t3_large)

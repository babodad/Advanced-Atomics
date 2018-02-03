if data.raw["technology"]["kovarex-enrichment-process"] then
	data.raw["technology"]["plutonium"].prerequisites = {"kovarex-enrichment-process"}
else
	data.raw["technology"]["plutonium"].prerequisites = {"nuclear-power"}	
end

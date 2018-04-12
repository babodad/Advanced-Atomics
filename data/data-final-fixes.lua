if data.raw["technology"]["kovarex-enrichment-process"] then
	data.raw["technology"]["plutonium"].prerequisites = {"kovarex-enrichment-process", "atomic-bomb"}
else
	data.raw["technology"]["plutonium"].prerequisites = {"nuclear-power", "atomic-bomb"}	
end

function get_all_factors(n)
	--[[--
	--Gets all of the factors of a given number
	--@Param: n
	--	Factored number
	--
	--@Return: A table of factors
	--]]--
	local factors = {}
	for possible_factor=1, math.sqrt(n), 1 do
		local remainder = n%possible_factor

		if remainder == 0 then
			local factor, factor_pair = possible_factor, n/possible_factor
			table.insert(factors, factor)

			if factor ~= factor_pair then
				table.insert(factors, factor_pair)
			end
		end
	end


	table.sort(factors)
	return factors
end

--The meaning of the universe is 42.

the_universe = 42
factors_of_the_universe = get_all_factors(the_universe)

print("count", "The Factors of Life, the Universe, and Everything")
table.foreach(factors_of_the_universe, print)


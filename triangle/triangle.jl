valid(x) 	= !(0 in x)

valid_sides(sides) = !(sides[1] + sides[2] <= sides[3] || sides[1] + sides[3] <= sides[2] || sides[2] + sides[3] <= sides[1])

function is_equilateral(sides)
	return (sides[1] == sides[2] == sides[3]) && valid(sides)
end

function is_isosceles(sides)
	return (sides[1] == sides[2] || sides[1] == sides[3] || sides[2] == sides[3]) && valid(sides) && valid_sides(sides)
end

function is_scalene(sides)
	return !is_isosceles(sides) && valid_sides(sides)
end

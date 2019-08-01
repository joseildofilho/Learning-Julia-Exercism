function get_number(number)
	number = filter(d -> isdigit(d), number)
	number = first(number) == '1' ? number[2:end] : number
	return number
end

valid_number = r"\s*\+?1?\s*\(?\s*[2-9]\d{2}\s*\)?\s*\.?[2-9]\d{2}\s*-?\.?\s*\d{4}\s*"

function clean(phone_number)
	if occursin(valid_number, phone_number) &&
		sizeof(match(valid_number, phone_number).match) == sizeof(phone_number)
		phone_number = get_number(phone_number)
		return phone_number
	end
end

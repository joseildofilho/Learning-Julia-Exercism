function get_number(number)
	value = ""
	for m in eachmatch(r"\d+", number)
		value *= m.match
	end
	if value[1] == '1'
		value = value[2:end]
	end
	return value
end

valid_number = r"\s*\+?1?\s*\(?\s*[2-9]\d{2}\s*\)?\s*\.?[2-9]\d{2}\s*-?\.?\s*\d{4}\s*"

function clean(phone_number)
	if occursin(valid_number, phone_number) &&
		sizeof(match(valid_number, phone_number).match) == sizeof(phone_number)
		phone_number = get_number(phone_number)
		return phone_number
	end
end



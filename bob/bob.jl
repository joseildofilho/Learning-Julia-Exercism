function bob(stimulus::AbstractString)
	if strip(stimulus) == ""
		return "Fine. Be that way!"
	end
	if last(strip(stimulus)) == '?'
		if yell(stimulus)
			return "Calm down, I know what I'm doing!"
		end
		return "Sure."
	end
	if yell(stimulus)
		return "Whoa, chill out!"
	end
	return "Whatever."
end

function yell(stimulus::AbstractString)
	if !occursin("OK", stimulus) && occursin(r"[A-Z]{2,}", stimulus[2:end])
		return true
	end
	return false
end

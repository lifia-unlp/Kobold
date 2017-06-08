private
compare: string against: otherString
	^ (string levenshteinDistanceTo: otherString) < self maximumDistance
private
recalculateBadSmells
	self clients do: [:client | client recalculateBadSmells]
accessing
addToGroups: string

	self groups do: [:group | group tryAndAdd: string]
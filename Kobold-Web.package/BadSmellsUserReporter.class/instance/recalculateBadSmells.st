controlling
recalculateBadSmells
	self client
		recalculateBadSmellsForVersion: (self client defaultVersion);
		save
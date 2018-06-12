controlling
recalculateBadSmells
	self client
		recalculateBadSmellsForVersion: (self defaultVersion);
		save
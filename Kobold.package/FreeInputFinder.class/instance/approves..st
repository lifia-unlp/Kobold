bad smells
approves: freeInput

	^(super approves: freeInput) 
		and: [freeInput hasNoPasswords
			and: [freeInput unfrequentValuesProportion < self maximumUnfrequentValuesProportion]]
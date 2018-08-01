hashing
process: chunk

	| c |
	chunk do: 
			[:char |
			self incrementNumChar.
			c := char asUnicode.
			self window size > 1
				ifTrue: [self incrementAccumulatorAt: (self tran53HashA: c b: self window first c: self window second n: 0)].
			self window size > 2
				ifTrue: [
					self incrementAccumulatorAt: (self tran53HashA: c b: self window first c: (self window third) n: 1).
					self incrementAccumulatorAt: (self tran53HashA: c b: self window second c: (self window third) n: 2)
					].
			self window size > 3
				ifTrue: [
					self incrementAccumulatorAt: (self tran53HashA: c b: self window first c: self window fourth n: 3).
					self incrementAccumulatorAt: (self tran53HashA: c b: self window second c: self window fourth n: 4).
					self incrementAccumulatorAt: (self tran53HashA: c b: self window third c: self window fourth n: 5).
					self incrementAccumulatorAt: (self tran53HashA:  self window fourth b: self window first c: c n: 6).
					self incrementAccumulatorAt: (self tran53HashA:  self window fourth b: self window third c: c n: 7).
					].
			self window addFirst: c.
			self window size >= 4
				ifTrue: [ self window: (self window first: 4) ]
			]
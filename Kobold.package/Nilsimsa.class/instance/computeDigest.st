hashing
computeDigest
	|trigramsCount threshold |
	trigramsCount := 0.
	(self numChar = 3)
		ifTrue: [ trigramsCount := 1 ].
	(self numChar = 4)
		ifTrue: [ trigramsCount := 4 ].
	(self numChar > 4)
		ifTrue: [ trigramsCount := 8 * self numChar - 28 ].
		
	threshold := trigramsCount / 256.
	
	0 to: 255 do: [ :index | 
		(self accumulator at: 1+ index) > threshold 
			ifTrue: [ digest at: 1+ (index bitShift: -3 ) put: ((digest at: 1+ (index bitShift: -3 )) + ( 1 bitShift: (index bitAnd: 7)  ) )  ]  ].
		
	self complete: true.
	digest := digest reversed.
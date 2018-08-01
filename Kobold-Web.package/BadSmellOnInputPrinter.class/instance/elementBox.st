printing
elementBox

	| origin corner |
	origin := super elementBox origin - (100 @ 10).
	corner := super elementBox corner + (10 @ 10).
	^origin corner: corner
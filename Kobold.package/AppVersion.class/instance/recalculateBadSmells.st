bad smells
recalculateBadSmells	
	self finders do: [ :finder | finder reevaluateSmells ].
	self badSmells: (self finders flatCollect: [ :finder | finder badSmells ])
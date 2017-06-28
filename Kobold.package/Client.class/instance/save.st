voyage
save
	super save.
	self finders do: [ :finder | finder save ].
	self badSmells do: [ :smell | smell save ]
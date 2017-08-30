voyage
save
	super save.
	self cachedSmells do: [ :smell | smell save ].
	self allSmells do: [ :smell | smell save ]
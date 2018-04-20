accessing
defaultVersion
	^ (self versions select: [ :version | version canBeEdited not ]) first.
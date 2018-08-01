accessing
cachedSmells
	^ cachedSmells reject: [ :smell | smell ignored ]
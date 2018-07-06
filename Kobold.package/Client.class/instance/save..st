voyage
save: cascade
	super save.
	cascade
		ifTrue: [ self versions do: [ :version | version save ] ]
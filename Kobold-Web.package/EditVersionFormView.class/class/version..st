versions
version: aVersion
	^ self new
		originalVersion: aVersion;
		version: aVersion clone;
		yourself
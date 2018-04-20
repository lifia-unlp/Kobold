testing
validateVersion: aVersion
	^ self versions detect: [ :anotherVersion | (anotherVersion tag = aVersion tag) and: [ anotherVersion ~= aVersion ]] ifFound: [false] ifNone: [ true ]
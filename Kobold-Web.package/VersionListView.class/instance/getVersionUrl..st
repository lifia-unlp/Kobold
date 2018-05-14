accessing
getVersionUrl: aVersion
	(aVersion url isEmpty or: [ aVersion url isNil ]) ifTrue: [ ^'#' ] ifFalse: [ ^aVersion url ]
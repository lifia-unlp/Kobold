validation
hasValidTag
	| versionTagged |
	versionTagged := self client versionTagged: (self version tag).
	^ versionTagged isNil or: [ versionTagged = self originalVersion ]
accessing
getTargetVersions
	| versionNames |
	versionNames := $, split: self targetVersions.
	^ self client versions
		select: [ :version | 
			(versionNames includes: version versionName)
				and: [ (version hasAppliedRefactoringOfKind: self refactoring on: self smell) not ] ]
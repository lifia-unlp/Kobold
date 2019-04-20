*Kobold-RefactoringsServer
extractRESTListedParametersFrom: listedParameters
	"Get a Dictionary organized like this:
	[
		[{'id'->'1','value'->'Value01'},{'id'->'1','value'->'Value02'},{'id'->'1','value'->'Value03'}],
		[{'id'->'2','value'->'OtherValue01'},{'id'->'2','value'->'OtherValue02'}]
	]
	and turn into a collection of associations looking like this:
	[ {1->['Value01' 'Value02' 'Value03']}, {2->['OtherValue01' 'OtherValue02']}	]
	Not returning a Dictionary so it's easier to concatenate to other collections of associations before turning all into a Dictionary
	"

	^ (listedParameters
		collect: [ :parameterList | 
			| id valuesList |
			id := (parameterList anyOne at: #id) asNumber.
			valuesList := parameterList collect: [ :parameter | parameter at: #value ].
			id -> valuesList asOrderedCollection ]) asOrderedCollection
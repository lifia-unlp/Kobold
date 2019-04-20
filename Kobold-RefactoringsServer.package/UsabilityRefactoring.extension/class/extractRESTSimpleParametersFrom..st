*Kobold-RefactoringsServer
extractRESTSimpleParametersFrom: simpleParameters
	"Get a Dictionary organized like this:
		[{'id'->'1','value'->'Value01'},{'id'->'2','value'->'Value02'},{'id'->'3','value'->'Value03'}]
	and turn into a collection of associations looking like this:
		['1'->'Value01', 2->'Value02', 3->'Value03']
	Not returning a Dictionary so it's easier to concatenate to other collection of associations before turning all into a Dictionary
	"

	^ (simpleParameters
		collect: [ :parameter | (parameter at: #id) asNumber -> (parameter at: #value) ])
		asOrderedCollection
rendering
updateUrlScript
	| baseURL |
	(self client url isNil or: [ self client url isEmpty ])
		ifTrue: [ baseURL := 'http://my-app-com' ]
		ifFalse: [ baseURL := self client url ].
	^ '$("#version-url").html("' , baseURL , '?version=" + $("#version-tag").val())'
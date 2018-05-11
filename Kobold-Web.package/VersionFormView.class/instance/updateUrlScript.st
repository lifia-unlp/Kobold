rendering
updateUrlScript
	| baseURL |
	self client url ifNil: [ baseURL:= 'my-app-com' ] ifNotNil: [ baseURL:= self client url ].
	^ '$("#version-url").html("', baseURL, '?version=" + $("#version-tag").val())'
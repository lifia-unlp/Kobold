accessing
getVersionURL
	self client url ifNil: [^''] ifNotNil: [ ^ self client url, '?version=', self version tag ].  
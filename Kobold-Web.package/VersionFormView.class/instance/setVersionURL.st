accessing
setVersionURL
	self client url ifNil: [ self version url: ''] ifNotNil: [ self version generateUrl: self client url ].  
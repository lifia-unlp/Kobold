accessing
generateUrl: baseUrl
	baseUrl isEmpty ifTrue: [ url:='' ] ifFalse: [ url:= baseUrl, '?version=', self tag ]. 

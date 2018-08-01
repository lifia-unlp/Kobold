bad smells
approves: boringForm
('*<img*src=*captcha*' match: (boringForm domElement html)) ifTrue: [ ^(super approves: boringForm)and: [boringForm failsProportion > self minimumFailsProportion]] 
ifFalse:[ ^false ].
 
		
	
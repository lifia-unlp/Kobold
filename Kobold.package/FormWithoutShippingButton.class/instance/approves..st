bad smells
approves: boringForm
('*<input*type="submit"*' match: (boringForm domElement html)) ifFalse: [ ^(super approves: boringForm)and: [boringForm failsProportion > self minimumFailsProportion]] 
ifTrue:[ ^false ].
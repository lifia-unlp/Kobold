actions
returnIfMatches: another
	(self passwordsMatches: another encriptedPassword) ifTrue:[
		^self.	
	].
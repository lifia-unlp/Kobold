accessing
submissionsByValidationType

	^self events groupedBy:[:submission | submission validationType]
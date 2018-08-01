accessing
successfulSubmissions

	^self events reject: [:submission | submission failed]
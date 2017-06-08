accessing
failedSubmissions

	^self events select: [:submission | submission failed]
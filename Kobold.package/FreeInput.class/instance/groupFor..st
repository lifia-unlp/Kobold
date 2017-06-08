private
groupFor: string

	^self groups detect: [:group | group admits: string]
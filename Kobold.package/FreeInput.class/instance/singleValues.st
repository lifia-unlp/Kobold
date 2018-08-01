accessing
singleValues

	^self groups inject:OrderedCollection new into:[:values :group | values addAll: group uniqueValues]
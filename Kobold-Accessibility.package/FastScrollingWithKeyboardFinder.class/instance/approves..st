bad smells
approves: distantContents
	^ (super approves: distantContents)
		and: [ distantContents landedScrollingPercentage > self minimumLandedPercentage ]
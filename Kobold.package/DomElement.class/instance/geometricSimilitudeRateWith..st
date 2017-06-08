scoring map
geometricSimilitudeRateWith: aDomElement
	| sameRowLikeness sameColumnLikeness heightDifferenceRate topRemotenessRate widthDifferenceRate leftRemotenessRate |
	heightDifferenceRate := (1 - (self boundingBox height / (aDomElement boundingBox height max: 1))) abs.
	topRemotenessRate := (1 - (self boundingBox top / (aDomElement boundingBox top max: 1))) abs.
	widthDifferenceRate := (1 - (self boundingBox width / (aDomElement boundingBox width max: 1))) abs.
	leftRemotenessRate := (1 - (self boundingBox left / (aDomElement boundingBox left max: 1))) abs.
	sameRowLikeness := 1 - heightDifferenceRate - topRemotenessRate.
	sameColumnLikeness := 1 - widthDifferenceRate - leftRemotenessRate.
	^ sameRowLikeness max: sameColumnLikeness
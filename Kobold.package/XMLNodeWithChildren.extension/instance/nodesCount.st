*Kobold
nodesCount
	^ 1 + (self nodes sumNumbers: [ :node | node nodesCount ])
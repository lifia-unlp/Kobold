accessing
averageBrowsingTime

	^(self navigations inject: 0 into: [:total :nav | nav timeBrowsing + total])
		/ self navigations size floor asFloat
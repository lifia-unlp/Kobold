baseline
seaside: spec
	spec
		project: 'Seaside3'
		with: [ spec
				className: 'ConfigurationOfSeaside3';
				versionString: #stable;
				repository: 'github://SeasideSt/Seaside:master/repository' ].
	spec
		package: 'Seaside-REST-Core'
		with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ]
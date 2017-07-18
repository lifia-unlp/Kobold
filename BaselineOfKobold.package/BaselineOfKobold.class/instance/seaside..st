baseline
seaside: spec
	spec
		project: 'Seaside3'
		with: [ spec
				className: #ConfigurationOfSeaside3;
				versionString: #'release3.2';
				repository: 'github://SeasideSt/Seaside:v3.2.0/repository' ].
	spec
		package: 'Seaside-REST-Core'
		with: [ spec repository: 'github://SeasideSt/Seaside:v3.2.0/repository' ].
	spec
		package: 'Seaside-Pharo-JSON-Core'
		with: [ spec repository: 'github://SeasideSt/Seaside:v3.2.0/repository' ]
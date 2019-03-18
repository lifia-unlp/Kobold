baseline
seaside: spec
	spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ].
	spec
		package: 'Seaside-REST-Core'
with: [ spec repository: 'github://SeasideSt/Seaside:master/repository' ]

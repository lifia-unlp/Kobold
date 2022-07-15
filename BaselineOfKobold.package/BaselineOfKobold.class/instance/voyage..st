baseline
voyage: spec

	spec baseline: 'Voyage' with: [ 
		spec
			loads: #( mongo );
			repository: 'github://pharo-nosql/voyage:pharo10-ready/mc' ]
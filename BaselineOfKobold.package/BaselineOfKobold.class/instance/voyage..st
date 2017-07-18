baseline
voyage: spec
	spec
		baseline: 'Voyage' with: [ spec repository: 'github://pharo-nosql/voyage/mc' ];
		load: #(mongo)
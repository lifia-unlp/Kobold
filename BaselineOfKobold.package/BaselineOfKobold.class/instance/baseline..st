baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				voyage: spec.
			spec
				package: 'Kobold';
				package: 'Kobold-Web' with: [ spec requires: #('Seaside3' 'Bootstrap' 'VoyageMongo' 'Kobold') ].
			spec group: 'default' with: #('Kobold' 'Kobold-Web').
			spec postLoadDoIt: #postLoadActions ]
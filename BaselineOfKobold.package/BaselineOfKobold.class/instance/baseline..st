baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap: spec;
				xmlParserHTML: spec;
				voyage: spec;
				zincAWS: spec.
			spec
				package: 'Kobold' with: [ spec requires: #('XMLParserHTML' 'Voyage') ];
				package: 'Kobold-Web'
					with: [ spec requires: #('Seaside3' 'Seaside-REST-Core' 'Bootstrap' 'Zinc-AWS' 'Kobold') ].
			spec group: 'default' with: #('Kobold' 'Kobold-Web').
			spec postLoadDoIt: #postLoadActions ]
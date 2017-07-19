baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap: spec;
				xmlParserHTML: spec;
				voyage: spec.
			spec
				package: 'Kobold' with: [ spec requires: #('XMLParserHTML') ];
				package: 'Kobold-Web'
					with: [ spec
						requires:
							#('Seaside3' 'Seaside-JSON-Core' 'Bootstrap' 'Voyage' 'Kobold' 'Seaside-Pharo20-Core' 'Javascript-Pharo20-Core' 'Seaside-REST-Core') ].
			spec group: 'default' with: #('Kobold' 'Kobold-Web').
			spec postLoadDoIt: #postLoadActions ]
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
				package: 'Kobold' with: [ spec requires: #('XMLParserHTML') ];
				package: 'Kobold-Web'
					with: [ spec
						requires:
							#('Seaside3' 'Seaside-Pharo20-Core' 'Seaside-REST-Core' 'Seaside-Pharo40-Continuation' 'Javascript-Pharo20-Core' 'Seaside-JSON-Core' 'Seaside-Pharo-JSON-Core' 'Bootstrap' 'Voyage' 'Kobold') ].
			spec group: 'default' with: #('Kobold' 'Kobold-Web').
			spec postLoadDoIt: #postLoadActions ]
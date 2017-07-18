baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self
				seaside: spec;
				bootstrap: spec;
				voyage: spec.
			spec
				package: 'Kobold';
				package: 'Kobold-Web'
					with: [ spec
						requires:
							#('Seaside3' 'Seaside-Pharo20-Core' 'Bootstrap' 'Voyage' 'Kobold' 'Seaside-JSON-Core' 'Seaside-Pharo-JSON-Core' 'Seaside-REST-Core') ].
			spec group: 'default' with: #('Kobold' 'Kobold-Web').
			spec postLoadDoIt: #postLoadActions ]
code generation
script
	^ String
		streamContents: [ :stream | 
			stream << super script.
			stream << ('if(typeof(<1s>[0]) != "undefined") <1s>.dateDropdowns();' expandMacrosWith: self elementVarName) ]
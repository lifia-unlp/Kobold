code generation
script
	^ String
		streamContents: [ :stream | 
			stream << super script.
			stream << ('if(typeof(<1s>[0]) != "undefined") {' expandMacrosWith: self elementVarName).
			stream << (' <1s>.attr("type","hidden");' expandMacrosWith: self elementVarName).
			self printRadiosOn: stream.
			stream << '};' ]
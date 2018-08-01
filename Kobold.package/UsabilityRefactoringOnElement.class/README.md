# UsabilityRefactoringOnElement
A  refactoring that applies on a DOM Element
All subclasses must implement #printElementScriptOn:
Within this method, they can refer to the JS element as {elementVarName}. This expression will be expanded with a macro into the variable name for the affected element.
Other macros can also be added by redefining  #macros that returns a Dictionary, by adding entries to it.

Instance Variables:
	domElement	<DOMElement>	The domElement to be refactored
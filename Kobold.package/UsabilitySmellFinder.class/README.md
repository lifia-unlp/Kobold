A SingleBadSmellFinder is designed to find out one specific Bad Smell fron a collection of threats.
Subclasses are required to indicate the events they will use by redefining the #uses[UsabilityEventClass] messages, which return false by default. E.g. InadequateInputFinder redefines usesTextInputTyping to return true.

Instance Variables
	minimumThreatsCount <Integer> The minimium number of threats that must be reached to start evaluating a US
	smellsByCriterion <Dictionary> The US, classified by the object defined as criterion according each one
	cachedSmells <Set> Cached US, according last findings

Subclasses must implement the following messages:
   #badSmellOn:

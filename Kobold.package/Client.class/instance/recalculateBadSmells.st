bad smells
recalculateBadSmells

	self finders do: [ :finder | finder reevaluateSmells ]."a todos los finder recalcular la presencia del smell"

	"(finders detect: [:findera | findera usesAbandonedFormAccesibility ])allSmells inspect."
	self badSmells: (self finders flatCollect: [ :finder | finder badSmells ])
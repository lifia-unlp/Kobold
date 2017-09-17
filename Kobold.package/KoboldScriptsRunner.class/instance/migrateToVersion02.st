migrations
migrateToVersion02
	'db.UsabilityEvent.update({"#instanceOf":"TextInputTyping"}, {$set:{"#instanceOf":"TextInput"}}, {multi:true})'.
	'db.UsabilitySmell.update({"#instanceOf":"ShortInput"}, {$set:{"#instanceOf":"UnmatchedInputSize"}}, {multi:true})'
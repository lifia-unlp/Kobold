UnnecessaryBulkActionFinder detects its associated Bad Smell.
Detection Process: 
1.	For each form, take all MultipleItemAction threats related to it.
2.	For a given form, group the threats by performed action (e.g. ‚Äúdelete‚Äù).
3.	For each group related to an action, split the threats in two groups: those that apply to a single item, and those that apply to many.
4.	If the proportion of threats with a single item is larger than a given thresh-old, then the bad smell is detected for that action.


Instance Variables
	action	<MessageForwarder | Object | ProtoObject | ProtoObject>	description of action


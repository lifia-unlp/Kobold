Hash Based strategy for grouping events.
Create with #hashBlock:  with a unary block that takes a usability event.
For example

PluggableHashEventsGroupingStrategy hashBlock: [ :event | event url hash ]
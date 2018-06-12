actions
save
	self finders do: [ :finder | finder save ].
	self badSmells do: [ :smell | smell save ].
	self events do: [ :event | event save ]
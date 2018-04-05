removing
removeVersion: anAppVersion
	self client removeVersion: anAppVersion.
	self client save.
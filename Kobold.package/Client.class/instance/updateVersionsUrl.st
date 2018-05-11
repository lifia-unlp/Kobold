accessing
updateVersionsUrl
	self versions do: [ :version | version generateUrl: self url ]
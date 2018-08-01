rendering
renderLogs: html forClass: aHtmlClass
	(self getLogs: aHtmlClass) do: [ :each | each toTbsAlert: html ]
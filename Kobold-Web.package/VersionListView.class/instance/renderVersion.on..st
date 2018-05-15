rendering
renderVersion: anAppVersion on: html
	html div
		class: 'list-group-item';
		with: [ html anchor
				tbsTooltip: anAppVersion description direction: #bottom;
				callback: [ self call: (RefactoringsManager version: anAppVersion) ];
				with: anAppVersion versionName.
			html space.
			html tbsBadge
				class: 'tag-badge';
				with: anAppVersion tag.
			self renderVersionUrl: anAppVersion on: html.
			anAppVersion canBeEdited
				ifTrue: [ self renderRemoveButton: html version: anAppVersion.
					self renderEditButton: html version: anAppVersion ] ]
*Kobold-Web
tbsModalSwitch
	"Creates a link for displaying a bootstrap modal"

	^ self anchor
		attributeAt: 'data-toggle' put: 'modal';
		yourself
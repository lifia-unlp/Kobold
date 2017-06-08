rendering
renderRegisterButton: html

	(html div)
		class: 'register';
		with: [	html paragraph: 'Don''t have an account?'.
				(html tbsModalSwitch)
					class: ' btn btn-success btn-lg btn-block';
					attributeAt: 'data-target' put: '#registerModal';
					with: 'Register']
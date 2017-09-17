running
newTextInputWithTextLength: textLength
	| mockParameters |
	mockParameters := Dictionary new.
	mockParameters
		at: 'url' put: 'http://www.testsite.net/register';
		at: 'xpath' put: '/body/div/div[2]/form[0]/input[0]';
		at: 'elementContent' put: '<input type="text"/>';
		at: 'elementLeft' put: '120';
		at: 'elementTop' put: '300';
		at: 'elementWidth' put: '250';
		at: 'elementHeight' put: '30';
		at: 'parentsList' put: 'html';
		at: 'time' put: '0';
		at: 'timestamp' put: '1504480552475';
		at: 'text' put: 'hello';
		at: 'keystrokes' put: '6';
		at: 'correction' put: 'false';
		at: 'textWidth' put: '0';
		at: 'fieldWidth' put: '200'.
	^ (TextInputTyping fromGetParameters: mockParameters)
		textWidth: textLength;
		yourself
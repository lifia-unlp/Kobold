tests-accessing
testAverageTime
	| mockParameters |
	self assert: smell averageTime equals: times average.
	mockParameters := Dictionary new.
	mockParameters
		at: 'sourceURL' put: 'http://www.testsite.net/register';
		at: 'targetURL' put: 'http://www.testsite.net/welcome';
		at: 'form[xpath]' put: '/body/div/div[2]/form[0]';
		at: 'time' put: '13233';
		at: 'timestamp' put: '1504480552475'.
	smell addEvent: (LongRequest fromGetParameters: mockParameters).
	times add: 13233.
	self assert: smell averageTime equals: times average
instance creation
fromGetParameters: getParameters
	^ (super fromGetParameters: getParameters)
		failed: (getParameters at: 'failed') = 'true';
		validationType: (getParameters at: 'validation') asSymbol;
		isSearchForm: (getParameters at: 'isSearchForm') = 'true';
		time: (getParameters at: 'time') asNumber;
		emptyInputs: (getParameters allAt: 'emptyTextInputs[]');
		yourself
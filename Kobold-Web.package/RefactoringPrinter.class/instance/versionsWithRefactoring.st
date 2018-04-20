accessing
versionsWithRefactoring
	 ^ (self client versionsWithRefactoring: self refactoring on: self smell) collect: [:version | version tag]
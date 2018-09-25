instance creation
fromGetParameters: getParameters
getParameters inspect.
^ (super fromGetParameters: getParameters) url: (ZnUrl fromString: (getParameters at: 'url'));
yourself
instance creation
fromGetParameters: getParameters
getParameters inspect.
^ (super fromGetParameters: getParameters) xpathsList: (getParameters at: 'xpaths');
url: (ZnUrl fromString: (getParameters at: 'url'));
yourself
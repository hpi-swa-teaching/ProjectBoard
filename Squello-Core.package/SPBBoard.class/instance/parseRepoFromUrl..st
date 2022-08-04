initialize-release
parseRepoFromUrl: aString

	| pathComponents url |
	url := aString asUrl.
	pathComponents := url fullPath splitBy: '/'.
	self boardProvider user: (pathComponents at: 2).
	self boardProvider repo: (pathComponents at: 3).
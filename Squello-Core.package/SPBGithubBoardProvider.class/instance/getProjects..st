initialize-release
getProjects: aString

	| url pathComponents |
	url := aString asUrl.
	pathComponents := url fullPath splitBy: '/'.
	self user: (pathComponents at: 2).
	self repo: (pathComponents at: 3).
	^ self api queryProjectsForUser: self user repo: self repo.
initialize-release
getProjects: aString

	| url pathComponents result |
	url := aString asUrl.
	pathComponents := url fullPath splitBy: '/'.
	self user: (pathComponents at: 2).
	self repo: (pathComponents at: 3).
	result := self api queryProjectsForUser: self user repo: self repo.
	result isArray ifFalse: [Error signal].
	^ result.
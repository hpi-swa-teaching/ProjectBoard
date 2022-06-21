initialize-release
getProjects: aString

	| projects url pathComponents |

	url := aString asUrl.
	pathComponents := url fullPath splitBy: '/'.
	self user: (pathComponents at: 2).
	self repo: (pathComponents at: 3).
	projects := self api queryProjectsForUser: self user repo: self repo.
	projects isArray ifFalse: [(projects at: 'message') ifNotNil: [^ self error: (projects at: 'message')]].
	
	^ projects.
	
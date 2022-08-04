initialize-release
getProjects

	| result |
	result := self api queryProjectsForUser: self user repo: self repo.
	result isArray ifFalse: [Error signal].
	^ result.
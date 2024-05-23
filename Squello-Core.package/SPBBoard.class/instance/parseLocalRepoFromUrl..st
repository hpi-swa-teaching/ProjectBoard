initialize-release
parseLocalRepoFromUrl: aString

	| repoNum |
	(aString beginsWith: self localPrefix) ifFalse: [^ self error].
	repoNum := aString allButFirst: self localPrefix size.
	
	self boardProvider repo: repoNum asInteger.
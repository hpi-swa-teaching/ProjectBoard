as yet unclassified
queryProjectsForUser: aString repo: anOtherString

	| url |
	url := 'https://api.github.com/repos/' , aString , '/', anOtherString , '/projects'.
	
	^ self queryGithubAPI: url.
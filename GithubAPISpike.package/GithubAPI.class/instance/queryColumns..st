as yet unclassified
queryColumns: aNumber

	"aNumber -> Project id"
	| url |
	
	url := 'https://api.github.com/projects/' , aNumber , '/columns'.
	
	^ self queryGithubAPI: url
as yet unclassified
queryCards: aNumber

	"aNumber -> Column id"
	| url |
	url := 'https://api.github.com/projects/columns/' , aNumber , '/cards'.
	
	^ self getApiWithUrl: url.
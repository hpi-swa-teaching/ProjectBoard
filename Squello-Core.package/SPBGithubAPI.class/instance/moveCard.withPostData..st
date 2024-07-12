api call post request
moveCard: aNumber withPostData: aDictionary
	
	"aNumber -> CardID"
	"aDictionary Parameter:
		column_id -> integer
		position -> string (top / bottom / after: <card_id>)"
	
	| stream url |
	url := 'https://api.github.com/projects/columns/cards/' , aNumber , '/moves'.
	
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self postRequestToURL: url withData: stream.
api call post request
moveLane: aNumber withPostData: aDictionary
	
	"aNumber -> columnID"
	"aDictionary Parameter:
		position -> string (first / last / after: <column_id>)"
	
	| stream url |
	url := 'https://api.github.com/projects/columns/' , aNumber , '/moves'.
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	self postRequestToURL: url withData: stream.
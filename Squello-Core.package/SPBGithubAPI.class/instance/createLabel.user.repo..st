api call post request
createLabel: aDictionary user: aString repo: anotherString
	
	"aDictionary Parameter:
		name -> string
		description -> string
		color -> hex color code without leading #"
	
	| stream url |
	url := 'https://api.github.com/repos/' , aString , '/' , anotherString, '/labels'.
	stream := WriteStream with: OrderedCollection new.
	aDictionary jsonWriteOn: stream.
	
	^ self postRequestToURL: url withData: stream.
api calls
moveCard: aNumber after: aSecondNumber ToColumn: aThirdNumber

	"aNumber -> CardID"
	"aSecondNumber -> FrontIdCard"
	"aThirdNumber -> target column id"
	| request response stream url afterCard |
	url := 'https://api.github.com/projects/columns/cards/' , aNumber , '/moves'.
	afterCard := 'after:' , aSecondNumber , ''.
	
	stream := WriteStream with: OrderedCollection new.
	(Dictionary newFrom: {'position' -> afterCard . 'column_id' -> aThirdNumber}) jsonWriteOn: stream.
	
	request := self createPostRequestTo: url.
	request headerAt: 'Content-Length' put: stream size.
	
	response := (WebClient new initializeFromUrl: url) sendRequest: request content: stream readStream size: stream size.
	stream := ReadStream on: response content from: 1 to: response content byteSize.
			
	^ Json readFrom: stream.
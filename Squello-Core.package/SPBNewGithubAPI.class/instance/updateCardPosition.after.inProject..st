cards
updateCardPosition: aString after: anotherString inProject: aThirdString
	
	"aString => Card ID of moved Card"
	"anotherString => Card ID where to insert OR null for top"
	"aThirdString => project ID"
	| data |
	data := (self getUpdateCardPositionQuery: aString after: anotherString project: aThirdString) parseAsJson.
	^ self postRequestwithData: data.
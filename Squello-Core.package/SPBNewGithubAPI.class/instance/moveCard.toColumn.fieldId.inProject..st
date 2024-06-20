cards
moveCard: aString toColumn: anotherString fieldId: aThirdString inProject: aForthString

	"aString => Card ID"
	"anotherString => Column ID"
	"aThirdString => ID for Column Field in Project"
	"aForthString => Project ID"
	| data |
	data := (self getMoveCardMutation: aString toColumn: anotherString fieldID: aThirdString inProject: aForthString) parseAsJson.
	^ self postRequestwithData: data.
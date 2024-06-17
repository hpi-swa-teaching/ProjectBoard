cards
queryCards: aString fromProject: anotherString

	"aString => Column ID"
	"anotherString => Project ID"
	| data response nodes |
	self flag: #TODO.
	"TODO: refactor to single board query"
	"see SPBNewGithubBoardProvider #createCardsFromColumn"
	data := (self getQueryColumnQuery: anotherString) parseAsJson.
	response := self postRequestwithData: data.
	nodes := (((response at: 'data') at: 'node') at: 'items') at: 'nodes'.
	
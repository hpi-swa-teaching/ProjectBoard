columns
moveCard: anSPBCard after: anotherSPBCard toColumn: anSPBColumn

	"move aSPBCard after card with ID = aNumber"
	| payload |
	payload := Dictionary newFrom: {'position' -> ('after:' , anotherSPBCard id) . 'column_id' -> anSPBColumn id}.
	self api moveCard: anSPBCard id withPostData: payload.
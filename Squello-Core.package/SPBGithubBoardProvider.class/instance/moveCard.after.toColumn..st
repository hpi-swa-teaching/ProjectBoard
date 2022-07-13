cards
moveCard: anSPBCard after: anotherSPBCard toColumn: anSPBLane

	"move aSPBCard after card with ID = aNumber"
	| payload |
	payload := Dictionary newFrom: {'position' -> ('after:' , anotherSPBCard id) . 'column_id' -> anSPBLane id}.
	
	self api moveCard: anSPBCard id withPostData: payload.
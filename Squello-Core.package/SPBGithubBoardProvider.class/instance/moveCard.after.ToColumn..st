cards
moveCard: aSPBCard after: aNumber ToColumn: aSPBLane

	"move aSPBCard after card with ID = aNumber"
	| payload |
	payload := Dictionary newFrom: {'position' -> ('after:', aNumber) . 'column_id' -> aSPBLane id}.
	^ self api moveCard: aSPBCard id withPostData: payload.
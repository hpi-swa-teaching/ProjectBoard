cards
moveLane: aSPBLane after: aNumber 

	"move aSPBLane after lane with ID = aNumber"
	| payload |
	payload := Dictionary newFrom: {'position' -> ('after:', aNumber)}.
	^ self api moveLane: aSPBLane id withPostData: payload.
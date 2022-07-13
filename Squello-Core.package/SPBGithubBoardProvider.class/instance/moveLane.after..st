cards
moveLane: anSPBLane after: anotherSPBLane

	"move aSPBLane after lane with ID = aNumber"
	| payload |
	payload := Dictionary newFrom: {'position' -> ('after:' , anotherSPBLane id)}.
	self api moveLane: anSPBLane id withPostData: payload.
columns
moveColumn: anSPBColumn after: anotherSPBColumn

	"move anSPBColumn after column with ID = aNumber"
	| payload |
	payload := Dictionary newFrom: {'position' -> ('after:' , anotherSPBColumn id)}.
	self api moveColum: anSPBColumn id withPostData: payload.
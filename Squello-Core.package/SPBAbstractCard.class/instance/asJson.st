converting
asJson

	^ JsonObject fromAssociations: {
		'id' -> self id.
		'title' -> self title.
		'body' -> self description.
		'closed' -> self isClosed.
		'isNote' -> self isNote.
		'assignees' -> (self assignees collect: [:each| each asJson]).
		'labels' -> (self labels collect: [:each| each asJson]).
	}.
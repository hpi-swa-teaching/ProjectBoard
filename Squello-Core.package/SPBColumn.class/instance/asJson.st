converting
asJson

	^ JsonObject fromAssociations: {
		'id' -> self id.
		'title' -> self title.
		'cards' -> (self cards collect: [:each| each asJson]).
	}.
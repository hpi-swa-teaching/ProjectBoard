converting
asJson

	^ JsonObject fromAssociations: {
		'id' -> self id.
		'name' -> self title.
		'cards' -> (self cards collect: [:each| each asJson]).
	}.
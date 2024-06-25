converting
asJson

	^ JsonObject fromAssociations: {
		'title' -> self boardName.
		'columns' -> (self columns collect: [:each| each asJson]).
	}.
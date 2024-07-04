converting
asJson

	^ JsonObject fromAssociations: {
		'title' -> self boardName.
		'currentID' -> self boardProvider currentID.
		'columns' -> (JsonObject fromAssociations: (self columns collect: [:each| each id -> each asJson])).
	}.
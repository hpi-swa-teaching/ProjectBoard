converting
asJson

	^ JsonObject fromAssociations: {
		'id' -> self id.
		'name' -> self title.
		'color' -> self color printHtmlString.
	}.
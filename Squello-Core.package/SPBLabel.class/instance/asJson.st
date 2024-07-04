converting
asJson

	^ JsonObject fromAssociations: {
		'id' -> self id.
		'title' -> self title.
		'color' -> self color printHtmlString.
	}.
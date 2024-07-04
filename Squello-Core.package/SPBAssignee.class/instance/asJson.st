converting
asJson

	^ JsonObject fromAssociations: {'login' -> self username. 'id' -> self id}.
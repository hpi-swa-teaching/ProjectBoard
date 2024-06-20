cards
updateDraft: aSPBCard

	| data |
	data := (self getUpdateDraftMutation: aSPBCard) parseAsJson.
	^ self postRequestwithData: data.
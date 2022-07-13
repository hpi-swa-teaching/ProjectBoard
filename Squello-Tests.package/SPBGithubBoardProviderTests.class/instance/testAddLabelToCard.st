tests
testAddLabelToCard

	| card label target |
	card := SPBCard new.
	label := SPBLabel new title: 'label label tralalalala'.
	target := {
		#issue -> nil.
		#user -> provider user.
		#repo -> provider repo.
		#label -> {'labels' -> {label title}} asDictionary.
	} asDictionary.
	provider addLabel: label toCard: card.
	self assert: target equals: provider api messages first.
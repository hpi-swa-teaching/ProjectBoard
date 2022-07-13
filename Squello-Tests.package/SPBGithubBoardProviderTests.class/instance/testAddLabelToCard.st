tests
testAddLabelToCard

	| card label target |
	card := SPBCard new.
	label := SPBLabel new title: 'label label tralalalala'.
	target := Dictionary newFrom: {
		#issue -> nil.
		#user -> provider user.
		#repo -> provider repo.
		#label -> (Dictionary newFrom: {'labels' -> {label title}}).
	}.
	provider addLabel: label toCard: card.
	self assert: target equals: provider api messages first.
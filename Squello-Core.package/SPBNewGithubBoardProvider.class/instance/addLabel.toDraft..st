labels
addLabel: aSPBLabel toDraft: aSPBCard

	"this is for testing"
	(aSPBLabel = #test) ifTrue: [^ true].
	UIManager inform: 'Drafts/Notes do not have Labels'.
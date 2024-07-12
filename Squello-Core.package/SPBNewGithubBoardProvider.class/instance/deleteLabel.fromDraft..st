labels
deleteLabel: aSPBLabel fromDraft: aSPBCard

	"this is for testing"
	(aSPBLabel = #test) ifTrue: [^ true.].
	UIManager inform: 'Drafts/Notes do not have labels'.
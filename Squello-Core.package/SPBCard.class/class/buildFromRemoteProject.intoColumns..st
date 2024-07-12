instance creation
buildFromRemoteProject: aJsonObject intoColumns: aDictionairy

	| columnID column contentType body instance title content isIssueOrPR isDraftIssue cardId |
	self flag: #TODO.
	"TODO: refactor this into smaller methods!"
	columnID := (aJsonObject at: 'fieldValueByName') at: 'optionId'.
	column := aDictionairy at: columnID.
	column
		ifNil: [self error: 'The Card has no matching Column'.].
	contentType := aJsonObject at: 'type'.
	content := aJsonObject at: 'content'.
	title := content at: 'title'.
	body := content at: 'body'.
	cardId := aJsonObject at: 'id'.
	instance := self newWithTitle: title body: body id: cardId into: column.
	isDraftIssue := contentType = 'DRAFT_ISSUE'.
	isDraftIssue
		ifTrue: [instance isNote: true.].
	isIssueOrPR := (contentType = 'ISSUE') or: [contentType = 'PULL_REQUEST'].
	instance 
		issueId: (content at: 'id');
		assignees: (((content at: 'assignees') at: 'nodes') collect: [:each| SPBAssignee newFrom: each.]) asOrderedCollection;
		labels: OrderedCollection new;
		isClosed: (isDraftIssue not and: [content at: 'closed']).
	isIssueOrPR
		ifTrue: [
			instance labels: (((content at: 'labels') at: 'nodes') collect: [:each| SPBLabel newFrom: each.]) asOrderedCollection].
	instance buildUI.
	instance openInWorld.
	
	instance setCardColumn: column.
	^ instance.
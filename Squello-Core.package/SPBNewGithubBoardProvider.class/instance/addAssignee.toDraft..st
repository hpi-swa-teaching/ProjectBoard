assignees
addAssignee: anSPBAssignee toDraft: anSPBCard
	
	"the Assignee is probably already in the list, so just forward current list to server"
	| newAssignees assigneeString |
	newAssignees := anSPBCard assignees collect: [:each| each id].
	(newAssignees includes: anSPBAssignee id) ifFalse: [newAssignees add: anSPBAssignee id].
	assigneeString := self getAssigneeString: newAssignees.
	^ self api updateAssignees: assigneeString fromDraft: anSPBCard issueId.
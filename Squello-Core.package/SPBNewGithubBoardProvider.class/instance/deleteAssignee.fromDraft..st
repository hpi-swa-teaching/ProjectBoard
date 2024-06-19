assignees
deleteAssignee: anSPBAssignee fromDraft: anSPBCard
	
	"the Assignee is probably already removed, so just forward current list to server"
	| newAssignees assigneeString |
	newAssignees := anSPBCard assignees collect: [:each| each id].
	newAssignees remove: anSPBAssignee id ifAbsent: [].
	assigneeString := self getAssigneeString: newAssignees.
	^ self api updateAssignees: assigneeString fromDraft: anSPBCard issueId.
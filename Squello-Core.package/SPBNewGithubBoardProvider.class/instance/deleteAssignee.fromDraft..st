assignees
deleteAssignee: anSPBAssignee fromDraft: anSPBCard
	
	"the Assignee is probably already removed, so just forward current list to server"
	| newAssignees x assigneeString |
	newAssignees := anSPBCard assignees collect: [:each| each id].
	newAssignees remove: anSPBAssignee id ifAbsent: [].
	assigneeString := self getAssigneeString: newAssignees.
	x := self api updateAssignees: assigneeString fromDraft: anSPBCard id.
	^ x.
as yet unclassified
acceptNewAssignee: anObject

	^ anObject class = SPBAssignee and: [self activeCard assignees size <= 10].
accessing
parseChange: aJsonObject
	
	"Code to parse a given change"
	| action data |
	
	action := aJsonObject at: 'action'.
	
	action = 'moved' ifTrue: [data := 'moved: ', ((aJsonObject includesKey: 'project_card') ifTrue: 
		['card: ' , ((aJsonObject at: 'project_card') at: 'id') asString , '; column: ' , ((aJsonObject at: 'project_card') at: 'column_id') asString , '; after: ' , ((aJsonObject at: 'project_card') at: 'after_id') asString]
	ifFalse: [(aJsonObject includesKey: 'project_column') ifTrue: 
		['column: ', ((aJsonObject at: 'project_column') at: 'id') asString , '; after: ' , ((aJsonObject at: 'project_column') at: 'after_id') asString]])].
	action = 'created' ifTrue: [data := 'created: ', ((aJsonObject includesKey: 'project_card') ifTrue:
		['card: ' , ((aJsonObject at: 'project_card') at: 'id') asString , '; content: ', ((aJsonObject at: 'project_card') at: 'content_url')]
	ifFalse: [(aJsonObject includesKey: 'project_column') ifTrue:
		['column: ', ((aJsonObject at: 'project_column') at: 'id') asString]])].
	action = 'deleted' ifTrue: [data := 'deleted: ', ((aJsonObject includesKey: 'project_card') ifTrue: 
		['card: ' , ((aJsonObject at: 'project_card') at: 'id') asString]
	ifFalse: [(aJsonObject includesKey: 'project_column') ifTrue:
		['column: ' , ((aJsonObject at: 'project_column') at: 'id') asString]])].
	
	action = 'labeled' ifTrue: [data := 'labeled: ', ((aJsonObject at: 'issue') at: 'id') asString , '; labels: ', (((aJsonObject at: 'issue') at: 'labels') collect: [:each | ' label: ' , (each at: 'id') , ' / ' , (each at: 'name')])].
	action = 'unlabeled' ifTrue: [data := 'unlabeled: ', ((aJsonObject at: 'issue') at: 'id') asString , '; labels: ', (((aJsonObject at: 'issue') at: 'labels') collect: [:each | ' label: ' , (each at: 'id') , ' / ' , (each at: 'name')])].
	
	action = 'assigned' ifTrue: [data := 'assigned: ', ((aJsonObject at: 'issue') at: 'id') asString , '; new assignee: ', ((aJsonObject at: 'assignee') at: 'id')].
	action = 'unassigned' ifTrue: [data := 'unassigned: ', ((aJsonObject at: 'issue') at: 'id') asString , '; removed assignee: ', ((aJsonObject at: 'assignee') at: 'id')].
	
	action = 'edited' ifTrue: [data := 'edited: ', ((aJsonObject includesKey: 'issue') ifTrue: 
		['issue: ' , ((aJsonObject at: 'issue') at: 'id') asString , '; changed: ' ,  (aJsonObject at: 'changes')]
	ifFalse: [(aJsonObject includesKey: 'project_column') ifTrue:
		['column: ' , ((aJsonObject at: 'project_column') at: 'id') asString , ': changed: ', (aJsonObject at: 'changes')]])].
	
	
	action = 'opened' ifTrue: [data := 'opened; not relevant'].
	data ifNil: [Transcript show: aJsonObject. ^ self].
	
	Transcript show: data , Character cr.
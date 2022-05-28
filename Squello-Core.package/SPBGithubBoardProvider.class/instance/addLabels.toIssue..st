labels
addLabels: aCollection toIssue: aSPBCard
	
	"aCollection => Collection of SPBLables"
	| payload |
	payload := Dictionary newFrom: { 'labels' -> (aCollection collect: [:aSPBLabel | aSPBLabel title]) }.
	self api addLabels: payload toIssue: aSPBCard issueId user: self user repo: self repo.
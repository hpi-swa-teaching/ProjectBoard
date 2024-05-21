tests
testBuildIssueFromJson

	| issueJson |
	issueJson := '{
	"content_url": "https://api.github.com/repos/test-organization/test-repo/issues/42"}' 	parseAsJson.
	
	card buildCard: issueJson.
	self assert: card isNote not.
	self assert: card issueId = 3
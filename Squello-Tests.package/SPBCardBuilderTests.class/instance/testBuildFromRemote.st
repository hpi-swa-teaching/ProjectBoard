tests
testBuildFromRemote

	| cards card |
	cards := Json readFrom: (ReadStream on: '{"url":"https://api.github.com/projects/columns/cards/82245819","project_url":"https://api.github.com/projects/14427987","id":82245819,"node_id":"PRC_lALOHRXsAc4A3CdTzgTm-Ls","note":null,"archived":false,"creator":{"login":"test1","id":73845255,"node_id":"MDQ6VXNlcjczODQ1MjU1","avatar_url":"https://avatars.githubusercontent.com/u/73845255?u=b4d067c1d4522ea689464609ad03d6fb7d653292&v=4","gravatar_id":"","url":"https://api.github.com/users/test1","html_url":"https://github.com/test1","followers_url":"https://api.github.com/users/test1/followers","following_url":"https://api.github.com/users/test1/following{/other_user}","gists_url":"https://api.github.com/users/test1/gists{/gist_id}","starred_url":"https://api.github.com/users/test1/starred{/owner}{/repo}","subscriptions_url":"https://api.github.com/users/test1/subscriptions","organizations_url":"https://api.github.com/users/test1/orgs","repos_url":"https://api.github.com/users/test1/repos","events_url":"https://api.github.com/users/test1/events{/privacy}","received_events_url":"https://api.github.com/users/test1/received_events","type":"User","site_admin":false},"created_at":"2022-05-22T00:11:26Z","updated_at":"2022-05-22T12:03:14Z","column_url":"https://api.github.com/projects/columns/18615917","content_url":"https://api.github.com/repos/test/test/issues/3"}').
	
	builder buildFromRemote: cards into: ((SPBColumn new) pasteup: PasteUpMorph new).
	card := builder card.
	
	self assert: 'Found a bug' equals: card title.
	self assert: 3 equals: card issueId.
	self assert: '' equals: card description.
	
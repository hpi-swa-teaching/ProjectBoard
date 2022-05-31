toolbuilder
checkUserValid
	| provider |
	provider := SPBGithubBoardProvider new.
	^ (((provider checkUser: userName) at: 'message') = 'Not Found') not.
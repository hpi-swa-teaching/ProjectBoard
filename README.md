Squellooo
=======
[![CI](https://github.com/hpi-swa-teaching/ProjectBoard/workflows/CI/badge.svg?branch=master)](https://github.com/hpi-swa-teaching/ProjectBoard/actions)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/ProjectBoard/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/ProjectBoard?branch=master)

Manage your GitHub Project Boards directly from Squeak!

## Setup

### Installation

Download the latest `.sar` from the [releases section](https://github.com/hpi-swa-teaching/ProjectBoard/releases), drag it onto your open Squeak image and press `install sar`. The shortcut from the apps menu will be installed automatically.

### Authentication-Token

Squello needs a *Personal Access Token* to access the Github api. The scope of the token is dependent on your use case:
- If you are using *only* public repositories / project boards, the `public_repo` scope is sufficient ([Click here to generate a token with the proper scope](https://github.com/settings/tokens/new?description=Squello&scopes=public_repo))
- If you are using one or more private repositories / project boards, the `public_repo` scope is *not* sufficient. Instead you need to grant squello full access to your repositories (`repo` scope). ([Click here to generate a token with the proper scope](https://github.com/settings/tokens/new?description=Squello&scopes=repo))

### please note:

At the moment Squello can only display cards that are issues or pull requests. If you open a board that has notes on it, they won't be displayed in Squello. If you create a new card inside Squello, this will open an issue on GitHub.

Squello
=======
[![CI](https://github.com/hpi-swa-teaching/ProjectBoard/workflows/CI/badge.svg?branch=master)](https://github.com/hpi-swa-teaching/ProjectBoard/actions)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/ProjectBoard/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/ProjectBoard?branch=master)

Manage your GitHub Project Boards directly from Squeak!

## Setup

### Installation

Download the latest `.sar` from the [releases section](https://github.com/hpi-swa-teaching/ProjectBoard/releases), drag it onto your open Squeak image and press `install sar`. Follow the instructions below to open the application.

### Opening the Application

Open the workspace and use `SPBLandingPage open.` to open the LandingPage. Follow the instructions below to obtain an GitHub access token. If you do not want to sync your board to GitHub, you can use a local board. For local boards, no access token is required.

### Authentication-Token

Squello needs a *Personal Access Token (classic)* to access the Github api. The scope of the token is dependent on your use case:
- In any case you are going to need a token with the `project` scope (or `read:project` scope if you do not wish to edit the project). 
- If you are using project boards that are *only* linked to public repositories, the `public_repo` scope is sufficient ([Click here to generate a token with the proper scope](https://github.com/settings/tokens/new?description=Squello&scopes=public_repo,project))
- If you are using a project board linked to one or more private repositories, the `public_repo` scope is *not* sufficient. Instead you need to grant Squello full access to your repositories (`repo` scope). ([Click here to generate a token with the proper scope](https://github.com/settings/tokens/new?description=Squello&scopes=repo,project))

### please note:

- At the moment Squello does only support projects that are linked to one repository only.
- Columns can not be edited
- Adding cards is not supported yet
- Projects (classic) are supported until Github will sunset them. It is highly recommended to migrate any classic Project. 

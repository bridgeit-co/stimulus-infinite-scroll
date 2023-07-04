# Prerequisites

In order to start working on this quest you need the following: 

## Ruby

[Ruby](https://www.ruby-lang.org/en) is a dynamic, open source programming language with a focus on simplicity and productivity. Check that you have version 3.1.2 by default with the command:

```bash
ruby -v
```

Refer to the official [documentation](https://www.ruby-lang.org/en/documentation/) if Ruby is not installed or you have an different version.

## Yarn

[Yarn](https://yarnpkg.com) is a package manager to install JavaScript libraries. In a terminal, run the following command:

```bash
yarn -v
```

If you see a version, you're good! Otherwise, refer to the official [documentation](https://yarnpkg.com/getting-started/install) for installation instructions.


## Git
[Git](https://git-scm.com/) is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Run the following command to check if Git is already installed:

```bash
git --version
```

Refer to the official [documentation](https://git-scm.com/downloads) if  Git is not installed. 

## GitHub CLI

CLI is the acronym of [Command-line Interface](https://en.wikipedia.org/wiki/Command-line_interface). We will use [GitHub CLI](https://cli.github.com/) to interact with GitHub directly from the terminal.

Check if it is already be installed and configured on your computer with the following command.

```bash
gh auth status
```

You should see `Logged in to github.com as <YOUR USERNAME> `, if not, refer to the official [README](https://github.com/cli/cli#installation) to install.

## Setup

Once you have all the prerequisites set up, we will clone our forked repo, and start on the quest! Clone your forked repo with one of the following methods: 

via SSH:

```bash
git clone <YOUR SSH REMOTE URL>
```

via Github CLI:

```bash
gh repo clone <YOUR REPO NAME>
```

Finally, paste the following commands in your terminal to run the necessary steps to finish setting up your local enviroment:

```bash
# Go to folder
cd stimulus-infinite-scroll

# Open folder in your VS code
code .

#Installing dependencies
bundle && yarn

#Create the database, run all migrations and seed the database
rails db:create
rails db:migrate
rails db:seed

```

Click the Mark as Complete button to move to the next step when you are done!

#risorsa 
[[Informatica]]
# Instructions 
____
 
## Git basics

1.  Create a "repository" (project) with a git hosting tool 
2.  Copy (or clone) the repository to your local machine
3.  Add a file to your local repo and "commit" (save) the changes
4.  "Push" your changes to your main branch
5.  Make a change to your file with a git hosting tool and commit
6.  "Pull" the changes to your local machine
7.  Create a "branch" (version), make a change, commit the change
8.  Open a "pull request" (propose changes to the main branch)
9.  "Merge" your branch to the main branch
10. To permanently cache the credentials: `git config --global credential.helper store`
___
# Obsidian sync (Git + iSH)
### A new repo from an existing project (vault)
Let's start with the iPad. Open iSH and install Git `apk add git`
- Create a new directory called obsidian in your home directory: `cd ~ mkdir obsidian`
- Now mount your local vault folder into the obsidian folder: `mount -t ios . obsidian` A file picker willl show up, select the folder where you stored your local vault. 
- Go into the directory containing the project `cd obsidian`
- `git init`
- `git add .` to add all the files
- `git commit -m "commit message here"`

You've now got a local git repository. Now connect it to GitHub: 
- Go to github.com and log in 
- create a new repository
Now link the local Git repo with the GitHub one: 
- `git remote add origin https://github.com/username/repo_name`
- `git push -u origin master`

You should now have the files synced with the GitHub repository. 

### Open the vault on the PC

- Install Git on the computer [From here](https://git-scm.com/downloads)
- Follow the instructions 
- Open Git Bash and create a new directory `mkdir obsidian`
- type `git clone`and then paste the github repository URL you copied earlier 

You should now have all the files copied on your computer. Now open Obsidian and select `open folder as vault`and select the folder where you cloned your repository. 

Now to test everything, make some changes on a Obsidian file on your computer. Go back to Git Bash and make sure to `cd obsidian `
Type `git status` to see what changes you made. Then `git add . `to indicate that the files are ready to be committed. Next, run `git commit -m "commit message here"` 
- Push to github: `git push` 
Follow the rules below and see how to `git pull` from the iPad, to make sure everything is working. 

____
# PUSH
1.  1.  Change directory to `obsidian` in your home directory: `cd ~/obsidian`
    2.  Run `git status` to confirm that there _are_ modified files
    3.  _First-time setup_ - tell git who you are:
        1.  [Set username](https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git) for _this_ repository only (or set it globally with a slightly different command): `git config user.name ForceBruMobile`
        2.  [Set e-mail address](https://docs.github.com/en/github/setting-up-and-managing-your-github-user-account/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-in-git): `git config user.email "ForceBru@users.noreply.github.com"`
    4.  Add files, commit and push. For example:
        1.  Add _all_ files into the commit: `git add .`
        2.  Commit: `git commit -m "Commit from mobile"`
        3.  Push: `git push`
            1.  This will ask you to enter your username and password
            2.  [Git can use your personal access token to login automatically](https://docs.github.com/en/get-started/getting-started-with-git/why-is-git-always-asking-for-my-password)
        4.  That's it! Take a look at [this example commit from iSH](https://github.com/ForceBru/ObsidianVaultTest/commit/f642c3334a870ca8ab2aa1355528403502433b2b)

___

# PULL 
1. Open iSH: 
	1. make sure directory is set to obsidian
	2. (optional) check whether there is stuff to pull 
		1. Bring remote refs  up to date: `git remote update`
		2. Check status: `git status`
	3. actually update wiht `git pull`
: D

___
### .gitignore
Creare il file: 
`touch .gitignore`
Scrivere nel file aggiungendo le directory: 
`echo .obsidian .trash > .gitignore`
Con un `>` **sovrascrive** il contenuto. Con `>>` appende
`git cat .obsidiangit` per visualizzare il contenuto del file 

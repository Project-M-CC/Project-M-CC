# How To Contribute

To contribute to the completion of this community build of Project M you will need a basic understanding of how Git and GitHub work. In the following sections I will do a basic overview of Git/GitHub commands and terminology, followed by a tutorial on how to make your changes to the build, and finally making a pull request.

## Git and GitHub

### What is Git?

Git is a type of source control. If you have Git installed, there should be no reason to **ever** lose your work. The first step to using Git is to set up a repository. After you initialize a repository, Git will begin tracking the following:
1. Changes to existing files in the repository directory
2. Additions of new files in the repository directory
3. Deletions of files in the repository directory

### What is GitHub?

GitHub is just a website that is dedicated to hosting repositories in a central location for developers to connect and collaborate. GitHub hosts the online repository for [Project-M-CC](https://github.com/TheOriginalSINe/Project-M-CC).

## Terminology

- **Repository (or repo)** - A central location where the files for a project are stored. When you clone or fork a repository onto your machine, you have created a _local repository_. The repository for [Project-M-CC](https://github.com/TheOriginalSINe/Project-M-CC) is the _upstream repository_.

- **Clone** - Download a copy of a Git repository.

- **Fork** - Basically the same thing as _clone_ for the purposes of this explanation. In fact, this is a term that GitHub kinda made up to make the idea of deviating from the path of the original repository more clear. When you hit the _fork_ button on a GitHub repository, you are actually cloning the repository into your GitHub account.

- **Commit** - When you make a _commit_, you are basically telling the Git repository to save your changes. When you make a _commit_ the change is only saved on your _local repository_. This is a useful feature and should be used every time you've made a significant change that you want to save. If you later decide that the change should be undone, you can revert or reset to a previous _commit_.

- **Push** - After you've made some commits, you need to _push_ the changes to the _upstream repository_. For this project, you will only be able to _push_ changes into **your forked repository**. Unless TheOriginalSINe has given you special permissions, you will never be able to add your files to the [Project-M-CC](https://github.com/TheOriginalSINe/Project-M-CC) repository without first making a _pull request_.

- **Pull** - Update the _local repository_ by downloading and _merging_ the _upstream repository_.

- **Pull Request** - By making a _pull request_, you are asking the original repository ([Project-M-CC](https://github.com/TheOriginalSINe/Project-M-CC)) to accept the changes you have made in your _local repository_. Your changes will not be added until the _pull request_ has been evaluated and accepted by the owner or admins of the original repository.

- **Merge** - A _merge conflict_ sometimes occurs when you try to perform a _pull_. If a file you modified (before pushing) conflicts with a file that is being pulled from the _upstream repository_, Git will be unsure as to which file you wanted to keep. In the case of text/code files, the merge conflict will mark conflicted areas in the file itself. In binary files (such as .pac or .pcs files), Git will not be able to tell you which parts of the file conflicted. More on this later!

## Setting up Your Fork

Now we're ready to contribute to [Project-M-CC](https://github.com/TheOriginalSINe/Project-M-CC)!

First, we need to set up your fork. You should only need to do this once.

NOTE: I'm assuming you are using Windows (since BrawlBox is for Windows).

1. Log in or create an account on GitHub. You do not need to pay for anything.
2. Download [Git Bash](https://git-scm.com/downloads) - a command line tool for Git.
3. Go to the original repository for [Project-M-CC](https://github.com/TheOriginalSINe/Project-M-CC).
4. Click the **Fork** button in the top right corner of the page. This creates a _clone_ of the project into your account.
5. You should now be on the page for **your fork** of the Project-M-CC repository.
6. Copy the URL of the repository from the search bar at the top and add `.git` to the end. For example, my URL is:

    `https://github.com/andybond006/Project-M-CC.git`
7. Go to the folder where you want your _local repository_ to reside. For example, I would go to:

    `C:\Users\Andy\Documents\ProjectM\Project M Community Complete - Fork\`
8. Right-Click in the whitespace of the folder you want your _local repository_ to reside and then click the **Git Bash** option. This opens a terminal in the current directory.
9. Next, we need to copy your repository into this folder. To do this, in the Git Bash terminal type: `git clone` followed by the URL you copied earlier. For example, I would type:

    `git clone https://github.com/andybond006/Project-M-CC.git`
10. Now, Git should be downloading your fork into this folder. Wait until it completes.
11. After it completes, you need to enter the Project-M-CC folder that was downloaded in the Git Bash terminal. To do this, type:

    `cd Project-M-CC`
12. At this point, we need to tell your repository where the _upstream repository_ is. Type:

    `git remote add upstream https://github.com/TheOriginalSINe/Project-M-CC.git`
13. Now, to download the _upstream repository_ simply type:

    `git fetch upstream`

## Making Your Changes

At this point, we've already set up our fork so now we need to make a change!
Let's say, for example, that you decided to modify one file: FitMarth.pac

Most of the time, people make their changes in a temporary folder somewhere other than your fork's folder. To make your change, just edit FitMarth.pac and then drag it into the correct folder in your fork's directory (projectm/pf/fighter/marth/).

So, you made your change to FitMarth.pac and now you want it to be in the original Project-M-CC repository.

1. Open Git Bash in your fork's Project-M-CC folder. For example, I would right-click in the whitespace of the folder and click the **Git Bash** option in:

    `C:\Users\Andy\Documents\ProjectM\Project M Community Complete - Fork\Project-M-CC\`
2. In the Git Bash terminal, type:

    `git status`.
This command tells you which files you added, modified, or deleted for this commit.
    ```
    Since we modified FitMarth.pac, you should see something that says (in red):
    modified    projectm/pf/fighter/marth/FitMarth.pac
    ```
3. Assuming it says you modified something, you now need to commit your changes. Here is the command you will type:

    `git commit -am "Detailed Commit Message Here"`

    ```
    Obviously, git commit tells Git that you are committing a change. The "-am"
    part has a very specific meaning however.
    "a" - Add all modified, added, or deleted files to this commmit.
    "m" - The following message is my commit message.

    The commit message should be a fairly detailed description of the changes
    that you made to the files. In the example, we did something to
    FitMarth.pac, remember? So the commit message should say "Increased Marth
    Forward Air damage and reduced knockback to make Ken Combos even easier."
    ```
4. Now that you've successfully, _committed_ the change, you need to _push_ it to your fork's online repository (the one associated with you GitHub account). To do this, simply type:

    `git push`

    ```
    You may need to log in via the command line before you can push the changes.
    The error responses that appear should walk you through how to log in (usually
    enter your email and username and password).
    ```

## Making a Pull Request

Now that you've made your changes, you want to have it added to the original Project-M-CC repository.

1. Go to the GitHub webpage for **your fork**. For example, I access mine at:

    `https://github.com/andybond006/Project-M-CC`
2. Click the **New Pull Request** button.
3. Give the Pull Request a name, write a detailed message (with pictures if possible) of what you changed, click submit!

## Updating your Fork

After changes occur in the original repository owned by TheOriginalSINe, you may need to "sync" your fork to the original repository.

1. Open Git Bash in your fork's Project-M-CC folder. For example, I would right-click in the whitespace of the folder and click the **Git Bash** option in:

    `C:\Users\Andy\Documents\ProjectM\Project M Community Complete - Fork\Project-M-CC\`
2. To pull the changes from the original repository into your fork, type:

    `git merge upstream/master`

## Handling a Merge Conflict

Merge conflicts occur when you pull changes from the _upstream repository_ and it tries to overwrite a file that you have modified, added, or deleted. Most of the files that we deal with in Brawl Modding are binary files. These steps will help resolve merge conflicts for a binary file.

After you get a merge conflict, do the following:
- If you want to keep your changes:

    `git checkout --ours -- path/to/conflicted-file.txt`
- If you want to throw away your changes and overwrite them with the changes from the _upstream repository_:

    `git checkout --theirs -- path/to/conflicted-file.txt`

    ```
    In both cases, "path/to/conflicted-file.txt" is the full path to the file
    that is giving you a conflict. For example, if there is a conflict on the
    file FitMarth.pac and you wanted to get rid of your changes in favor of the
    FitMarth.pac that is in the upstream repository, you would do:
    "git checkout --theirs -- projectm/pf/fighters/marth/FitMarth.pac"
    ```

## Squashing Commit Messages

Sometimes, you make lots of commit messages before pushing to the _upstream repository_. When you do this, each commit message also makes it into the Pull Request you make later. You can fix this by _squashing_ commits. Basically, you just choose a specific commit message that you want included with the Pull Request that you make later.

Rather than explain this, I will just leave this informative link: [How to Squash Commits](http://stackoverflow.com/a/6934882)

## Reverting to the Previous Commit

Hopefully, you won't need this often, but here's the command to reset to the previous commit.

**WARNING: THIS THROWS AWAY ANY UNCOMMITTED CHANGES!**

`git reset --hard HEAD`

For more information on resetting your fork to a previous version, see this link: [Reset Build to Certain Commit](http://stackoverflow.com/questions/4114095/revert-git-repo-to-a-previous-commit)

## Further help

If you need more help, feel free to ask on the Discord Chat in the #help thread!

## Helpful Links

- [What is GitHub?](http://www.howtogeek.com/180167/htg-explains-what-is-github-and-what-do-geeks-use-it-for/)
- [How to Make a Pull Request](http://stackoverflow.com/a/14680805)
- [Contributing to a Project](https://guides.github.com/activities/contributing-to-open-source/)
- [Syncing your Fork with the Original Repository](https://help.github.com/articles/syncing-a-fork/)
- [Resolve Merge Conflict for Binary Files](http://stackoverflow.com/a/2163926)
- [How to Squash Commits](http://stackoverflow.com/a/6934882)
- [Reset Build to Certain Commit](http://stackoverflow.com/questions/4114095/revert-git-repo-to-a-previous-commit)
- [Git Town Plugin for Simplifying Git Workflow](http://www.git-town.com/)
- [Full Git Documentation](http://git-scm.com/documentation)

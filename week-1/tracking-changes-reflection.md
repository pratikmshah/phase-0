# Tracking Changes Reflection

How does tracking and adding changes make developers' lives easier?
 - Tracking and adding changes makes developers lives easier for many reason but for the most part it help a project to have a controlled environment. Each change is being tracked by who, what, and why. Also each code is allowed to be reviewed before it is embedded with the source.

What is a commit?
 - Commit in git terms is a process to saving changes made to a file(s) that will most likely be pushed. Just like the definition to bind or obligate.

What are the best practices for commit messages?
- The best practice for writing commit messages it to write in the present tense and in terms of what in the code will change if the commit is merged. There are also formatting guidelines by Tim Pope who suggests that the summary should be 50 words or less and that you should wrap your text to 72 columns; leaving four columns to indenting and four at the end.

What does the HEAD^ argument mean?
- The keyword HEAD represents the current commit you are in and when you add in additional character like ^ it represents the previous commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
- The three stages of a git change once your in a new branch is to check the git status, add the changed files, and then commit and write a description of the the changes.
The steps below will move you from one stage to the other:
0. NEW BRANCH
1. git status
2. git add file-name
3. git commit -m "Change Message"

Write a handy cheatsheet of the commands you need to commit your changes?
- git branch New-Branch
- git checkout New-Branch
- git status
- git add file-name
- git commit -m "changes"

What is a pull request and how do you create and merge one?
- A pull request is a formal inquiry stating one has made contributions to a project and would like the code to be reviewed in order to merge with the origin. You can create a pull request once you push your commit to a remote repository such as GitHub. Once this is done go to the repository and you should see a pull request. In the two fork fields your base fork should be pointing towards master while the head fork should be pointing towards your branch. Once finished you can comment on your changes and "create pull request". To merge you simply have to click on the pull request review the code and click "merge pull request" and then delete the branch.

Why are pull requests preferred when working with teams?
- A pull request is a preferred method because it allows for a code review and final adjustments before merging to the original version of the project.

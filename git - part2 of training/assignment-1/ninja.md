# git
##### Create a folder ninja at the root level of your cloned code
>****`git clone code(URL)`****
##### Add a file README.md with content "Trying fast forward merge"
[screenshot]()
##### Create a branch ninja and move to it
>`git branch ninja`
Run git status command
Commit your changes to ninja branch
Merge ninja branch to master branch make sure that a new commit get's created
Assuming you are in master branch, modify README.md with content Changes in master branch, commit the changes in master branch.
Switch to ninja branch, modify README.md with content Changes in ninja branch, commit the changes in ninja branch.
Merge the ninja branch to the branch in such a fashion that a merge conflict is generated and resolve it using the ours and theirs concept so that the changes of the ninja branch overrides changes in master branch
Revert the above merge commit
Merge master branch to ninja branch in such a fashion that changes of both branches gets accumulated
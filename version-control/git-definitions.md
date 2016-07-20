# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

  Version control allows you to take snapshots of your work as you make changes on a project. It's useful because you can revert your work back to an earlier version if your latest updates create bugs or errors. It also serves as a back up of your work.

* What is a branch and why would you use one?
  
  A branch is a copy of the master version of your project. It's useful because it enables you to work on a new feature in a safe way. The master version is not affected by any changes you make on the feature branch, until you merge the feature branch back into master. At that point, if any errors or conflicts are found, they can be resolved before being merged into the master branch.

* What is a commit? What makes a good commit message?
  
  A commit takes a snapshot of your project as it is now. A good commit message is written in present tense and explains what specific changes you've made. A good commit message is written in present tense and explains what specific changes you've made. 

* What is a merge conflict?
  
  A merge conflict is when two branches have changed the same part of a file. For example, if two developers branch off master and are told to fix the error on line #12, they might fix the error in two different ways. Then, when they both try to merge back into master, Git won't know which version it should use and will throw a merge conflict error. At that point, the reviewer will be able to see the two version and will have to choose one to be used for the merge.

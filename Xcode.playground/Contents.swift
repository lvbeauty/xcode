import UIKit
/*
 SDLC：Software Development Lifecycle
 Navigators
 + Project
 + Source Control
 + Symbol / Hierarchy
 + Find / Search
 + Issues / Bug
 + Test (UI/Unit)
 + Debug / ProjectRun
 + Breakpoint
 + Report / Log

 Utility Inspectors
 + File
 + History (new addition circa Xcode 11)
 + Quick Help
 + Identity
 + Attributes
 + Size
 + Connections

 Debug Area
 + Variables View/Pane
 + Console View/Pane

 Editors
 + Standard
 + Assistant
 + Version

 Library
 + Object (Storyboard)
 + Code Snippet
     - adding custom Code snippet.

 Misc.
 + Document Outline
 + Title Bar
 + Jump Bar
 + Breadcrumb Menu
 + Customisation
     - Tabs
     - Xcode Behavior
     - Project Schemes
         - Active
         - Edit
         - Manage
 Interface Builder (IB)?

 Storyboard?


 Xib?

 Nib?


 Source Control
 Team Exa Mobile Development, Today at 11:23 AM
 As in, Version Control

 Subversion / SVN

 Distributed VCS (Version Control Systeem)
 + Git (most preferred)
 + TLS
 + Mercurial

 Various products in the market:
 GitHub
 GitLab
 BitBucket

 Types of Branching in Git
  + Team wise
  + Feature wise
  + Environment based
AGILE DEVELOPMENT -> Sprint
 Feasible == possible/plausible within a context
 External factors

 Why create SRS?
 So that the requirements are in B&W
 =>Text in the Profile screen will be colored
 => Text in the Profile screen will be in brown color
 requirement should be clear
 => Text in the Profile screen will be in blue (#336699) color
 The DEPENDENCIES should be LEAST
 Waterfall = Linear SDLC

 1 .. 2 .. 3 .. 4

 1 4 5 2 7
 //  today
 PROJECT: Shopping App
 PRODUCTS: Website, WebApp/Hybrid, iOS app, Android app


 Native app
 Titanium Appcelerator : JS

 Blending Calculator
 Chevron - Oil
 PoC: Proof of Concept / Demo (just Functional requirement)
 Shelf product = PoC + Sales (UI to be good)

 Cold Calling

 VERSION CONTROL: Managing the source code / codebase

 Approach-1: Team wise
 Shawn Li’s —> ShawnL —> Login —> ShoppingApp ——> iOS —-> Final / Master

 Approach-2: Feature wise
 Shawn —> Base (optional) —> Login —> ShoppingApp ——> iOS —-> Final / Master
 Zhao —> SignUp —> ShoppingApp —> …
 Tong —> Profile —> Shopping App —> …

 ALL_PROJ_REQUIREMENT = Sprint1 + Sprint2 + …
 20 features = 3 features + 6 + 6 + 5 (decided first, and then you may start w the project)

 Sprint-1:
 Login and Signup
 Dashboard / Home
 Profile


 Approach-3: Iteration/Sprint/Cycle based
 Shawn Li’s —> Sprint 1 —> Base —> ShoppingApp ——> iOS —-> Final / Master
 Shawn Li’s —> Base2 —> Sprint 2 —> Base —> ShoppingApp ——> iOS —-> Final / Master

 Base = Rough work
 Master = Final work

 Shawn Li’s —> Login/Signup —> Sprint 1 —> ShoppingApp ——> iOS —-> Final / Master
 Shawn Li’s —> Dashboard/Home —> Sprint 1 —> ShoppingApp ——> iOS —-> Final / Master
 Shawn Li’s —> Profile —> Sprint 1 —> ShoppingApp ——> iOS —-> Final / Master

 Shawn Li’s —> Settings —> Sprint 2 —> ShoppingApp ——> iOS —-> Final / Master
 Shawn Li’s —> Calculation —> Sprint 2 —> ShoppingApp ——> iOS —-> Final / Master
 Shawn Li’s —> Demo —> Sprint 2 —> ShoppingApp ——> iOS —-> Final / Master

 Approach-4: Environment wise
 Deployment -> Where are you deploying?

 Development >>> App build (shared w Client or Devs)
 iOS-Production >>> Apple AppStore
 Web-Production >>> website going live
 Android-Production >>> Google PlayStore

 Shawn Li’s —> Development —> ShoppingApp ——> iOS —-> Final / Master
 Shawn Li’s —> Production —> ShoppingApp ——> iOS —-> Final / Master
 Shawn Li’s —> Caveat —> ShoppingApp ——> iOS —-> Final / Master

 Caveat
 Development
 Production == Development + Tested code
*/

/*github
 GIT COMMANDS:

 git fetch
 git pull
 git push
 git status
 git add
 git reset
 git commit
 git clone
 git merge
 git stash (ignore + record)
 git checkout branch_name
 git clone == copy a repo
 git checkout == switch to specified branch
 
 Important to remember: Merge and Stash
 
 EMPTY FOLDER NOT ALLOWED TO COMMIT or ADD !!!
 
 Commit 1
 Added xyz.txt

 Commit 2
 Added abc.txt
 Modified per.txt

 ——— git reset “commit 1”———
 …We’re here…
 What’s the status?   (git status -s)
 A xyz.txt
 D abc.txt
 M per.txt

 Commit: Save
 Stash: Reject/Remove
 Merge: Include


 Commit 3
 Removing Xyz and then adding Xyz???
 
 -l / -ls / -la / -s
 
 DOS (Disk Operating System)

 MS-DOS
 
 mkdir
 cd
 
 COMMON CMD LINE COMMANDS:

 ls : listing
 ls -l : long
 ls -a : include hidden files/folders
 ls -la : long + hidden

 mkdir : create new dir
 cd : change current dir
 rm : remove a file

 sudo : switch user and do something (after giving passwd)

 clear : clear the visible area of the command line window
 Pull : download Shawn's code + you olredy have yours

 Push : server ll get both the codes
 
 git fetch is the command that tells your local git to retrieve the latest meta-data info from the original (yet doesn't do any file transferring. It's more like just checking to see if there are any changes available).

 git pull on the other hand does that AND brings (copy) those changes from the remote repository
 
 git commit ./Hello.txt -m "Modified content."

 git commit -a : all changeable files
 git commit -m : commit with a text
 git commit -am : both a and m
 
 git commit ./Hello.txt -m "Modified content."

 git commit -a : all changeable files
 git commit -m : commit with a text
 git commit -am : both a and m
 */


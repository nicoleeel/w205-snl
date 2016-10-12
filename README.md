# w205-snl
MIDS W205, Fall 2016: Scott, Nikki, Lisa

## setting up this git repository on your EC2 instance

Pre) attach volume, mount to /data, su - w205


1) Generate a new SSH key

`ssh-keygen -t rsa -b 4096 -C "yourgithub@email.com"`

> When prompted "enter a file in which to save the key" just PRESS ENTER

> Default location is ~/.ssh/id_rsa

> Enter a password that you will NOT forget - will need to use this to push


2) Make sure ssh-agent is enabled

`eval "$(ssh-agent -s)"`

Add the new SSH key to the ssh-agent

`ssh-add ~/.ssh/id_rsa`


3) Copy the id_rsa.pub contents - open in text editor (vi) and copy

Go to the github repo, click settings (under your icon at the very top right), SSH and GPG keys, and add new key

Copy the id_rsa.pub contents into the "Key" field.

To quit text editor without saving, hit your *Esc* button and then type `:quit!`


4) Now go to the folder you want to clone the github repo into
Configure your username and email


```
git config --global user.name "First, Last"
git config --global user.email "your@email.com"
```

5) Clone the repo

`git clone git@github.com:nicoleeel/w205-snl.git`


6) Switch to your branch

`git checkout scott | nikki | lisa`
> whichever one you are


To make sure you are in the right branch, check your status

`git status`


7) Everytime you log in, remember to pull the most recent version of master to update all your files

`git pull origin master`


8) Do your work, make all your changes, and then push your changes to your branch

```
git add -u * <-- -u includes anything you deleted, * means everything
git commit -m "whatever message to describe your update"
git push origin yourbranchname
```
> Make sure to type those in that order, and don't leave out a step.


9) Once you've pushed successfully, there should be a pull request either made in the github, or you can go to the site and manually create a pull request. This will be a request to merge with master.






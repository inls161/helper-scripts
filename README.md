# INLS 161 Helper Scripts

This repository contains various scripts that are intended to help you through certain tasks, like installing software in your CodeAnywhere container. 

## List of scripts:

###install-gh-pages.sh

This bash script will install the GitHub Pages stack in your CodeAnywhere container. 
This is the same software that GitHub uses to build our sites. 

To use this, you will need to clone the repo into your CodeAnywhere container workspace directory: `git clone git@github.com:inls161/helper-scripts.git`

Descend into the directory: `cd helper-scripts`

Now you have to make this script executable: `chmod install-gh-pages.sh`

Then you have to run the script as a superuser or root user to get it to make the appropriate system changes. 

We do this by running: `sudo ./install-gh-pages.sh`

This will take a LONG time. Plan to let it run for as long as it takes. 

Luckily, you can open another shell and continue working while it works its magic. 

Once it is finished, you will be able to test your website changes locally on your CodeAnywhere container using Jekyll. 
You can also use Jekyll to build static pages now. 

It's a good idea after running this script to 

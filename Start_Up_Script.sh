#!/usr/bin/bash

echo Welcome this is a set up script for installing the necessary tools!

#this is the basic set up method. This will just download brew, kube, aws cli, etc
basic_setup(){
    echo =============================== Installing Homebrew / cask ===============================
    #This installs homebrew a package installer for MAC OS
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap caskroom/cask

    echo =============================== Installing Python ===============================

    #this installs python
    brew install python

    #checks the current version of Python
    pip3 --version

    echo installing aws awscli

    #installs aws awscli, command line tool to manage AWS
    echo =============================== Installing awsCLI ===============================

    echo =============================== Have AWS key, and AWS secret key ready ===============================
    #configures awscli 
    aws configure

    echo =============================== Installing Kubernetes =============================== 

    #installs kubernetes 
    brew install kubectl
    #version check
    kebect1 version

    #makes kubenetes directory in home directory
    echo =============================== Making directory in home directory named .kube =============================== 

    cd
    mkdir .kube

    echo Must download the config file, then move the config file into the .kube directory.

    echo =============================== Downloading Java/Jdk and MVN ===============================

    brew cask install java

    java --version

    #installs mvn
    brew install mvn 
    #shows where mvn is
    which mvn 

    echo =============================== Installing Virtual Box =============================== 
    brew cask install virtualbox 

    echo =============================== Installing Docker ===============================
    brew cask install docker 

    echo =============================== Installing Minikube ===============================
    brew cask install minikube

    echo =============================== Installing Source Tree ===============================
    brew cask install sourcetree 

}

#this is the IDE installer, you can choose between VSCODE, ATOM, or SUBLIME TEXT
ide_setup(){

    #IDE prompt
    echo select your IDE of choice
    echo 1. Visual Studio Code
    echo 2. Atom
    echo 3. Sublime Text
    echo 4. PyCharm
    echo 5. None, Exit Program

    echo enter 1,2,3,4, or 5
    read CHOICE 

    if [ "$CHOICE" == "1" ];
    then
        echo =============================== installing VS-Code ===============================
        brew cask install visual-studio-code

    elif [ "$CHOICE" == "2" ];
    then
        echo =============================== installing Atom ===============================
        brew cask install atom 

    elif [ "$CHOICE" == "3" ];
    then
        echo =============================== Installing Sublime Text ===============================
        brew cask install sublime-text 

    elif [ "$CHOICE" == "4" ];
    then
        echo =============================== Installing PyCharm ===============================
        brew cask install pycharm

    else
        echo =============================== EXITING ===============================

    fi

}

basic_setup
ide_setup










 

# Learn Haskell

Welcome to Learn Haskell. I've set up this repo to help you... wait
for it... *learn Haskell*. I'm going to liberally borrow and refer to
many other resources. There's a large community of friendly
Haskellers out there to help!

# Lessons

* [Prelude](#getting-started) Set up `git` and your repos.
* [Lesson 00](hw00): Make sure the moving parts are moving.

# Getting Started

You're welcome to use this repo in any way you like, but if I'm
personally mentoring you, here's what you need to do:

1. [Install `git` on your local machine](https://git-scm.com/downloads).
1. [Create a GitHub account](github.com/join) (if you don't already have one).
1. [Fork this repo](https://guides.github.com/activities/forking/).
1. [Clone your fork on your local
   machine](https://help.github.com/articles/cloning-a-repository/).
   Be sure to clone *your* fork, not this repo!
```
$ git clone https://github.com/YOUR-GITHUB-NAME/learn-haskell.git
```
1. [Add a new `upstream` remote](https://help.github.com/articles/adding-a-remote/).
```
$ git remote add upstream https://github.com/instinctive/learn-haskell.git
```

If you don't know `git`, here are some good resources:
* [GitHub Guides](https://guides.github.com/)
* [git - the simple guide](http://rogerdudler.github.io/git-guide/)

# Staying Current

You will use the `upstream` remote whenever new material is added to this repo:
```
$ git merge upstream master
```

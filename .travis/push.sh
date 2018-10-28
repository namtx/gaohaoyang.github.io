#!/bin/sh

commit_files() {
  cd _site
  git add -A
  git commit --allow-empty -m "Travis build: $TRAVIS_BUILD_NUMBER"
  git push --quiet --set-upstream origin-pages master -f
}

setup_git
commit_files

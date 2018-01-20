#!/bin/bash

# Verifys if branch is master and not a pull request.
if [ "$TRAVIS_BRANCH" == "master" ] && [ ! "$TRAVIS_PULL_REQUEST" ]; then
  echo "Deploying to Firebase hosting"
  firebase deploy --token $FIREBASE_TOKEN
else
  echo "No deployment required"
fi

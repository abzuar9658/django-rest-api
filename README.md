# django-rest-api
Django Rest APIs

### Using Precommit hooks
1. Install pre-commit `brew install pre-commit`
2. Run `pre-commit --version` just to check if installed correctly
3. Run `pre-commit install` to install pre-commit on your system
4. Run `chmod +x .github/hooks/autopep8.sh` from current wkdir to let your system be able to run .sh file
5. You'll also need to have autopep8 installed on your system so run `pip3 install autopep8`
- In case you want to skip pre-commit on a commit do `git commit -nm` instead of `git commit -m`
- Check guide to [pre-commit](https://pre-commit.com/) if need further help!

###### P.S: I'll switch to [mirrors-commit](https://github.com/pre-commit/mirrors-autopep8) instead of custom hook for autopep8 so that it's no longer a system level dependency and you'll ever not need to configure anything locally, that's the heart of docker!

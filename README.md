## Welcome to my "Pipenv" GitHub Actions Testbed

Following up on the Github Actions course/tutorial I decided to attempt
putting my own pipenv action that would allow specifying a Python version.

## Tested Version

| Python Version | Result        | Reason |
| -------------- |:-------------:| :----- |
| 3.5.2          | Failed        | apt-get update not successful
| 3.6            | Success       |
| 3.7            | <untested>    |
| 3.8            | <untested>    |
| 3.9            | <untested>    |

### Failures

### Python 3.5.2 (failed)

Failed on apt-get update:
```
Reading package lists... Done
W: There is no public key available for the following key IDs:
AA8E81B4331F7F50
```

## Links

* [Pipenv main Web page](https://pipenv.pypa.io/en/latest/)
* [Pipenv main repository](https://github.com/pypa/pipenv)
* [Currently the most popular Pipenv action](https://github.com/marketplace/actions/pipenv-for-github-actions)

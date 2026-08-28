# IDS706 Week 1 Assignment

![CI](https://github.com/whraw76/IDS706-W1-Assignments/actions/workflows/test.yml/badge.svg)

This Python project asks the user for a name and prints a personalized welcome
message for the Data Engineering course. It includes automated tests, code-quality
checks, a Docker image, and a GitHub Actions workflow.

## Project structure

- `src/main.py` contains the application and `welcome_message` function.
- `tests/test_main.py` verifies that the function returns the expected message.
- `Makefile` provides shortcuts for installing, testing, linting, and Docker tasks.
- `.github/workflows/test.yml` runs the CI checks on pushes and pull requests.

## Setup

Python 3.12 is recommended.

```bash
python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

On Windows, activate the environment with:

```powershell
.venv\Scripts\activate
```

## Run the application

```bash
python src/main.py
```

Example input and output:

```text
Enter your name: Haoran
Haoran, welcome to the Data Engineering course.
```

## Run the checks

Run the test suite:

```bash
python -m pytest
```

The same test can be run with `make test`. Formatting and lint checks are
available with:

```bash
make format
make lint
```

## Main function

`welcome_message(name)` accepts a name and returns a string in this format:

```text
<name>, welcome to the Data Engineering course.
```

When `src/main.py` is run directly, it prompts for a name and prints the value
returned by this function.

## Continuous integration

GitHub Actions installs the dependencies, checks formatting and linting, runs
the tests, builds the Docker image, and runs the tests inside Docker. The badge
at the top of this README shows the current workflow status.

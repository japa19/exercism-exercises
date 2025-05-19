# exercism-exercises

https://exercism.org



Search for the following plugins:

- [Ansible](https://marketplace.visualstudio.com/items?itemName=redhat.ansible)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [GO](https://marketplace.visualstudio.com/items?itemName=golang.Go)
- [Linter](https://marketplace.visualstudio.com/items?itemName=fnando.linter)
- [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [ShellCheck](https://marketplace.visualstudio.com/items?itemName=timonwong.shellcheck)
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)

# Configuration file for MegaLinter

# See all available variables at <https://megalinter.io/configuration/> and in linters documentation

ENABLE_LINTERS:

- ANSIBLE_ANSIBLE_LINT
- BASH_SHELLCHECK
- DOCKERFILE_HADOLINT
- GO_GOLANGCI_LINT
- JSON_JSONLINT
- MARKDOWN_MARKDOWNLINT
- PYTHON_PYLINT
- YAML_YAMLLINT
q
DISABLE:
- COPYPASTE
- REPOSITORY
- SPELL
DISABLE_ERRORS: false
FILTER_REGEX_EXCLUDE: (\.github|development)
FLAVOR_SUGGESTIONS: false
JSON_REPORTER: true
JSON_REPORTER_OUTPUT_DETAIL: simple
VALIDATE_ALL_CODEBASE: true

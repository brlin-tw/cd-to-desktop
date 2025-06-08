# cd-to-desktop

A fun (and highly unnecessary) hack to make the Bash shell's built-in `cd` command change the working directory to the user's Desktop folder by default.

<https://gitlab.com/brlin/cd-to-desktop>  
[![The GitLab CI pipeline status badge of the project's `main` branch](https://gitlab.com/brlin/cd-to-desktop/badges/main/pipeline.svg?ignore_skipped=true "Click here to check out the comprehensive status of the GitLab CI pipelines")](https://gitlab.com/brlin/cd-to-desktop/-/pipelines) [![GitHub Actions workflow status badge](https://github.com/brlin-tw/cd-to-desktop/actions/workflows/check-potential-problems.yml/badge.svg "GitHub Actions workflow status")](https://github.com/brlin-tw/cd-to-desktop/actions/workflows/check-potential-problems.yml) [![pre-commit enabled badge](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white "This project uses pre-commit to check potential problems")](https://pre-commit.com/) [![REUSE Specification compliance badge](https://api.reuse.software/badge/gitlab.com/brlin/cd-to-desktop "This project complies to the REUSE specification to decrease software licensing costs")](https://api.reuse.software/info/gitlab.com/brlin/cd-to-desktop)

\#bash \#hack \#fun

## Prerequisites

The following prerequisites must be met before using this product:

* You need to be using the [Bash shell](https://www.gnu.org/software/bash/) as your command line interface.

## Installation

Refer to the following steps to install this product:

1. Download the release archive from the [GitLab releases page](https://gitlab.com/brlin/cd-to-desktop/-/releases).
1. Extract the archive to a directory of your choice.
1. Add the following line to your `~/.bashrc` file:

   ```bash
   source /path/to/cd-to-desktop/cd-to-desktop.source.sh
   ```

   Replace the `/path/to/cd-to-desktop/` placeholder text with the actual path where you extracted the archive.
1. Restart your currently running bash session to apply the changes, or run the following command to reload the updated `~/.bashrc` file:

   ```bash
   source ~/.bashrc
   ```

## Usage

If the [Installation](#installation) went well, you should be able to use the `cd` command to switch the working directory to your Desktop folder by default, like so:

```bash
cd
```

This product adheres to the xdg-user-dirs de facto standard, ensuring compatibility for users whose Desktop folder is located in a non-default path or named in a different language.

## Credits

This product is inspired from the [CD shortcut : r/bash](https://www.reddit.com/r/bash/comments/1l69apz/cd_shortcut/) Reddit post, by [bakismarsh](https://www.reddit.com/user/bakismarsh/).

## See also

Check out my [brlin-tw/dot-bashrc.d: Distributed bash run commands(rc) management solution.](https://github.com/brlin-tw/dot-bashrc.d), where you can easily integrate this product by just installing the file to the `~/.bashrc.d/` directory after installing it.

## References

The following materials are referenced during the development of this project:

* [Command Search and Execution | Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Command-Search-and-Execution)  
  Explains the process of bash running command-like language constructs.
* [`command` | Bash Builtin Commands | Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#index-command)  
  Explains the usage of the `command` builtin command, which is used to bypass our `cd` function call.

## Licensing

Unless otherwise noted([comment headers](https://reuse.software/spec-3.3/#comment-headers)/[REUSE.toml](https://reuse.software/spec-3.3/#reusetoml)), this product is licensed under [the 3.0 version of the GNU Affero General Public License](https://www.gnu.org/licenses/agpl-3.0.en.html), or any of its more recent versions of your preference.

This work complies to [the REUSE Specification](https://reuse.software/spec/), refer to the [REUSE - Make licensing easy for everyone](https://reuse.software/) website for info regarding the licensing of this product.

# shellcheck shell=bash
# Set up a fake `cd` command to change the working directory to the user's desktop folder when no arguments are provided.
#
# Refer to:
#
# * CD shortcut : r/bash
#   https://www.reddit.com/r/bash/comments/1l69apz/cd_shortcut/
#
# Copyright 2025 林博仁(Buo-ren Lin) <buo.ren.lin@gmail.com>
# SPDX-License-Identifier: AGPL-3.0-or-later
cd(){
    if test "${#}" -eq 0; then
        local user_dirs_file="${HOME}/.config/user-dirs.dirs"
        local user_desktop_dir

        # Out of scope
        # shellcheck source=/dev/null
        if ! test -e "${user_dirs_file}" \
            || ! source "${user_dirs_file}" \
            || ! test -v XDG_DESKTOP_DIR; then
            echo "cd-to-desktop: Warning: Could not detect the desktop directory from ${user_dirs_file}. Defaulting to ~/Desktop."
            user_desktop_dir="${HOME}/Desktop"
        else
            user_desktop_dir="${XDG_DESKTOP_DIR}"
        fi

        cd "${user_desktop_dir}" || return
    else
        # Ensure we use the correct cd command
        command cd "${@}" || return
    fi
}

complete --no-files pkg
complete pkg -d 'Remove all outdated packages from pacman cache.' -a autoclean -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Remove all packages from pacman cache. Using 104M now.' -a clean -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Show all files installed by packages.' -a files -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'

complete pkg -d 'Install specified packages.' -a install -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'

complete pkg -d 'List all packages available in repositories.' -a list-all -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'List installed packages.' -a list-installed -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Reinstall specified installed packages at the latest version.' -a reinstall -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Search package by query, for example by name or description part.' -a search -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Show basic metadata, such as dependencies.' -a show -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Uninstall specified packages. Configuration files will be left intact.' -a uninstall -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Upgrade all installed packages to the latest version.' -a upgrade -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'
complete pkg -d 'Update pacman databases from configured repositories.' -a update -n 'not __fish_seen_subcommand_from autoclean clean files install list-all list-installed reinstall search show uninstall upgrade update'


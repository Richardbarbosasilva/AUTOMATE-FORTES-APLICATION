# Changelog

## [1.0.0] - 2023-12-01
### Added
- Automation Fortes (AC, AG, PONTO) scripts are now functional, implemented for all domain users.

## [1.0.1] - 2023-12-13
### Added
- The scripts are now non-interactive, auto-run after PC's initialization by GPO's logon script functionality, also auto-closes after executing the automation.

## [1.0.2] - 2023-12-15
### Added
- The scripts self-execute in minimized mode, without showing any windows on the user's desktop screen.
- The script's execution time is reduced by more than half (usually less than 6s).

## [1.1] - 2023-12-19
### Added
- AC, AG, PONTO scripts are now integrated in only one script that executes all the three automations at once.
- The script's execution time now lasts 50% more than it's previous version (usually 9s).
- Now the automation is only executed if the User has the Fortes folder, if he has no one, or has only one or two of the three fortes, the automation runs only on those folders.  


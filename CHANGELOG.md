## [43.0.0] - 02/Nov/2025

### Add

- Add restart (Down & Up) to composer. (Issue 21)

## [42.0.0] - 30/Sep/2025

### Fix

- Remove debug messages.

## [41.0.0] - 20/Sep/2025

### Add

- Allow user to choose stop options.

## [40.0.0] - 03/Sep/2025

### Add

- Only show information on MenuText/Icon if there is any information to show.

### Fix

- Crash displaying containers when there is no network info. (Issue 18)

## [39.0.0] - 02/Sep/2025

### Fix

- Error on counter when changing menu type, counter not destroyed correctly. (Issue 18)

## [38.0.0] - 05/Aug/2025

- Compatibility with gnome shell 49.

## [37.0.0] - 16/Fev/2025

### Fix

- Remove compatibility with old versions because of new Custom Logger

## [36.0.0] - 16/Fev/2025

### Add

- Compatibility with gnome shell 48.

### Update

- Start using Custom Logger

## [35.0.0] - 08/Nov/2024

### Add

- Support docker install via Snaps.

## [34.0.0] - 18/Sep/2024

### Add

- Compatibility with gnome shell 47.

### Update

- Indonesian translation. (@ilhamsetiawan)

### Fix

- Stop asking "Start docker" right after boot.

## [33.0.0] - 3/May/2024

### Fix

- Review.

## [32.0.0] - 29/Apr/2024

### Add

- Quick Settings Menu.
- Eslint.
- Add support for docker version 26.

### Changes

- Remove duplicate code to run commands.
- Simplify code.
- Organize Preferences window.

### Fix

- Fix count of containers.
- Use translation everywhere (except schema/preferences).

## [31.0.0] - 28/Feb/2024

### Fix

- Fix compatibility with gnome shell 45.

## [30.0.0] - 28/Feb/2024

### Added

- Compatibility with gnome shell 46.

## [29.0.0] - 12/Nov/2023

### Changes

- Switching from sh to bash. (#12)

## [28.0.0] - 25/Oct/2023

### Fix

- Updating and resizing the icons. (@jdorigao)

## [27.0.0] - 25/Oct/2023

### Fix

- Remove the timeout on destroy, inside of Menu.

## [26.0.0] - 24/Oct/2023

### Fix

- [Timeout should be removed on disable](https://gjs.guide/extensions/review-guidelines/review-guidelines.html#remove-main-loop-sources)

### Remove

- Unnecessary console logs

## [25.0.0] - 19/Oct/2023

### Added

- Change icon automatically without the need of enabling and disabling application. (#8)
- Display the number of containers running in the taskbar (#10)

### Changes

- Substitute ComboBox with DropDown because of deprecation.
- Organize the prefs code.

## [24.0.0] - 10/Oct/2023

### Added

- Indonesian translation. (@ilhamsetiawan)

### Fix

- Popup not appearing because of a css attribute. (@adlerdias)

### Changes

- Make default logo white. (suggested by @bittner)

## [23.0.0] - 11/Sep/2023

### Fix

- Remove unnecessary dependencies.
- Change how to open URL.

## [22.0.0] - 11/Sep/2023

- Gnome 45 Port

## [21.0.0] - 18/Fev/2022

### Added

- Information section for containers.

## [20.0.0] - 17/Fev/2022

### Fix

- Remove button of docker-compose.

## [19.0.0] - 16/Fev/2022

### Fix

- Object in global scope

## [18.0.0] - 16/Feb/2022

### Added

- Compatibility with gnome shell 44.
- Ports now gives the option for direct ip.

### Fix

- Sort of containers
- False positives compose containers
- Terminal compatibility

## [17.0.0] - 11/Jan/2022

### Added

- Czech translation (@Amerey.eu)

## [16.0.0] - 05/Jan/2022

### Fix

- Compatibility with gnome-shell 42.

## [15.0.0] - 05/Jan/2022

### Added

- White logo (@hashtagsandro).

## [14.0.0] - 29/Oct/2022

### Added

- Dialog to confirm critical actions of user (delete for example).

### Changes

- Change UI to make commands of Docker and Docker Compose belong to different sections.

## [13.0.0] - 26/Oct/2022

### Added

- Allow users to choose the size of the submenu (only visible when are more containers/images than the size screen).
- Docker compose support (Up, Stop, Remove)
- Allow user to choose between 3 logos.

### Changes

- Old button "Attach Shell" should be really called "Exec Bash". The current one "Attach Terminal" now really attaches the shell and not just create a new one. (@redeven)

### Fix

- Bug where the submenu icon would not close after an action.

## [12.0.0] - 23/Oct/2022

### Fix

- Fix issue <https://gitlab.com/stickman_0x00/gnome_shell_extension_docker/-/issues/3>

## [11.0.0] - 21/Sep/2022

### Added

- Support gnome-shell 43.

## [10.0.0] - 8/Sep/2022

### Added

- Add button to hide/show ports submenu.

### Improvements

- Improve preferences dialog.

## [9.0.0] - 31/Ago/2022

### Added

- Start button to initialize docker service if off.

### Improvements

- Improve space when the container is type image, only show 3 buttons per row.

## [8.0.0] - 23/Ago/2022

### Added

- Start button to initialize docker service if off.
- Let user change terminal.
- Add inspection button to container and images.
- Add logs button to container.

## [7.0.0] - 5/Jul/2022

### Added

- User has the option to show/hide containers/images. (@arunk140)

## [6.0.0] - 22/Jun/2022

### Added

- Container ports functionality.

## [5.0.0] - 19/Jun/2022

### Added

- Added Icons menu. User can choose between two types of menus (text and icons).

## [4.0.0] - 10/Jun/2022

### Added

- Image menus

## [2.0.0] - 2/Jun/2022

### Added

- Container menus


5.4.9.0 (2021-05-29)
====================

- `window-scale 1` does not work correctly in mpv,
  so I've removed support for it and added my own implementation:
  `script-message mpv.net window-scale`.
- The CS-Script library was replaced with my own C# scripting implementation.
- If a player window border is near to a screen border and the window size
  changes, the player windows sticks to that near screen border location.
  Furthermore the `remember-window-position` option remembers a near screen
  border position instead of remembering the window center position.
- Multi monitor fix using different DPI values.
- `start-size` option has new options, see config editor and manual.
- Improved `script-message mpv.net cycle-audio` OSD info.
- The logic for finding the config directory has changed, see manual.
- The dotnet script and extension host was a little redesigned, this breaks
  backward compatibility unfortunately, but I can help fixing existing
  open source code however. Example scripts and extensions were updated.
- Fix console not working due to incorrect mpv.conf value generated
  (script-opts=console-scale=0).
- Settings are stored in the file settings.xml now instead of the Registry.
- Video rotation support added.
- After using the config editor it's no longer necessary to restart mpv.net.
- Improved input editor theming. 


5.4.8.8 Beta (2021-05-09)
=========================

- Improved window scaling.
- Title property implementation.
- Command palette shows commands without assigned menu item.
- The code from the included JavaScript file was ported into the core
  player because JavaScript is currently broken in the builds of shinshiro.
- New option `--command=<input command>`, can be used in combination
  with `process-instance=single` to control mpv.net via command line,
  for instance to create global hotkeys with AutoHotkey.
- New global hotkey feature added using the file global-input.conf.
- The global-media-keys option was removed because global-input.conf
  can be used instead.
- MediaInfo 21.3
- libmpv shinchiro 2021-04-04


5.4.8.7 Beta (2021-03-09)
=========================

- History feature can be configured to ingore defined strings:
  script-opt = history-discard=value1;value2
- Web stream audio and subtitle track selection.
- On Windows 10 1903 and later the default code page was changed to UTF-8.
- Support of --version command.
- File associations and auto-load-folder can be customized with
  video-file-extensions, audio-file-extensions and image-file-extensions.
- Fix menu not showing key '&'.


5.4.8.6 Beta (2020-12-24)
=========================

- Santa hat shown in december. (#216)
- Filename not being always shown in title bar. (#214)
- Improved OSD message when cycling audio.
- DVD audio and subtitle track selection.
- Input keylist can be shown on the command-line with --input-keylist
- Profiles can be shown on the command-line with --profile=help
- Decoders can be shown on the command-line with --ad=help and --vd=help
- Decoders can be shown in the menu under: View > Show Decoders
- Demuxers can be shown in the menu under: View > Show Demuxers
- Audio devices can be shown in the menu under: View > Show Audio Devices
- Audio devices can be shown on the command-line with --audio-device=help
- Protocols can be shown in the menu under: View > Show Protocols
- Allow mpv.net to start from different startup locations
  without showing the setup dialog. (#218)
- libmpv updated to shinshiro 2020-12-20


5.4.8.5 Beta
============

- Load AviSynth DLL from environment variable AviSynthDLL
  in order to support AviSynth portable mode.
- New option global-media-keys (next, previous, play/pause, stop).
- Redesigned PowerShell based setup and setup dialog, it was done
  because of a bug and upcoming chocolately and winget integration.
- Redesigned auto update using different file name, using zip instead
  of 7zip format now, 7zip distribution will shortly get dropped.
- Whenever there is a new startup location, the setup dialog is shown.
- libmpv updated to shinshiro 2020-12-06
- youtube-dl is no longer included, users have to install it
  on their own (put it in the startup or a PATH folder).


5.4.8.4 Beta
============

- Blu-rays with dozens of titles showed all titles in the menu
  which was difficult to choose and extremely slow.
- Blu-ray folder paths are auto detected when received
  from drag & drop and command-line.
- Cycle audio was not working for Blu-ray.
- Message asking if image is BD or DVD in case image is < 10 GB.


5.4.8.3 Beta
============

- Support Wheel_Left and Wheel_Right. (arnesacnussem)
- Default screen was changed from primary to OS default to start
  from the same screen where the File Explorer window is located.
- When mpv.net was started maximized and next was invoked then the
  window state was changed to normal instead of staying maximized.


5.4.8.2 Beta
============

- CLI --shuffle issue fix.
- ISO image files can be opened like any other files, files smaller
  than 10 GB are handled as DVD and larger as BluRay.
- Menu support for BluRay title, audio and subtitle selection.
- Property input-key-list can be shown with: View > Show Keys
- youtube-dl 2020.06.16.1
- libmpv 2020-06-21 shinchiro


5.4.8.1 Beta
============

- fix stdin support


5.4.8.0
=======

- fix learn window of input editor (much work)
- fix black one pixel bar on right side
- fix beep sound when closed from taskbar


5.4.7.4 Beta (not yet released)
============

- the media key issue should now be fixed!
- libmpv and youtube-dl update


5.4.7.3 Beta
============

- new setting media-keys added, can be found in the config editor in the input tab.


5.4.7.2 Beta
============

- another attempt to fix a app command issue. WM_APPCOMMAND (mpv calls this media keys)
  based input is no longer directly passed to mpv but rather handled in mpv.net directly
  translating the native commands to mpv keys and sent via keypress input command to mpv
- another attempt to fix a crash caused by powershell 5.1 not being installed


5.4.7.1 Beta
============

- log error fix, mpv.net does now ignore all log messages because libmpv already
  prints the log messages to the the terminal
- the release script now also outputs x86 beta versions so x86 users can test betas


5.4.7.0
=======

- log error fix
- workaround to support AviSynth portable (ffmpeg blocks loading AviSynth from path env var)
- attempt to fix not reproducible volume input issue
- attempt to fix exception caused by powershell being not available on Win 7


5.4.6.0
=======

- youtube-dl update
- auto update routine fix


5.4.5.1 Beta
============

- extensions no longer need to end with *Extension.dll but rather
  the file name and the directory name must be identical
- text encoding exception fix
- the PowerShell script host is more feature complete, easier to use
  and more efficient, there were however many PowerShell and C# breaking
  changes requrired to make the core more robust and efficient
- Python 2 script host removed, Python 3 support is planned for summer


5.4.5.0
=======

stable release, no changes since the last beta


5.4.4.6 Beta
============

- using start-size=video the window size was not remembered
  after fullscreen mode was left.
- using start-size=video the window can now use the entire
  working area using autofit-larger=100


5.4.4.5 Beta
============

- overhaul of the [webpage](README.md) and the [manual](Manual.md).
- change that possibly could fix a multimedia keyboard volume issue.


5.4.4.4 Beta
============

- with `border=no` the OSC top bar window buttons min, max and close are fully supported.
- anamorphic videos are shown without black bars, the window is resized according to the ascpect ratio.
- PowerShell 5.1 was made optional.
- full implementation for `window-minimized` and `window-maximized`,
  scripts that depend on this like pause-when-minimize.lua are now fully supported.
- fix cycling from maximized to fullscreen and back.


5.4.4.3 Beta
============

- update MediaInfo 20.03
- update libmpv 2020-04-12, it supports vpy playback, read manual or ask in forum
- mpv property `window-maximized` support added, cycling it from input.conf
  is not recommended, use native Windows shortcuts Win+Up, Win+Down
- the mpv.net `start-size` option supports `always` to always remember the window height
- if the window was maximized before fullscreen was entered, it's now set to
  maximized after fullscreen was left
- with `border=no` the OSC did not auto hide after the mouse curser left the window
- the script that modified the seek OSD was removed, it still can be found in the mpv wiki
- certain videos were showed with black bars


### 5.4.4.2

- update: libmpv shinchiro 0.32.0-258-g281f5c63c1
- update: youtube-dl

- new: d3d11va-zero-copy setting added to conf editor
- new: hdr-compute-peak  setting added to conf editor
- new: flag cli switches support now `--no-flag` in addition to `--flag=no`
       https://mpv.io/manual/master/#usage
- new: cli switches can also start with single `-` instead of double `--`
       https://mpv.io/manual/master/#legacy-option-syntax
- new: PowerShell script host was completely rewritten, events can be assigned
       by using `Register-ObjectEvent`, the scripting wiki page was updated
       https://github.com/stax76/mpv.net/wiki/Scripting#powershell
- new: Context Menu > View > Show Profiles
       https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L147
- new: Context Menu > View > Show Properties
       https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L148
- new: Context Menu > View > Show Commands
       https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L149
- new: config editor tab is now remembered
- new: osd-duration setting added to config editor and default mpv.conf
- new: external console replaced with internal console, in case mpv.conf is missing it's
       generated with correct Hight DPI font size scale settings.
       `script-opts=console-scale=<dpiscale>`
       https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L150
       https://mpv.io/manual/master/#console
- new: blue color in dark theme is now less intense
       https://github.com/stax76/mpv.net/blob/master/Manual.md#color-theme
- new: menu item 'View > Show Progress' (p key) to show progress bar
       https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L146
- new: `script-message mpv.net playlist-first`, unlike mpv does not
       restart if the first file is already active
       https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L44
- new: if mpv.net is started from the terminal and an error happens then the error
       is printed to the terminal instead of shown with a message box
- fix: update routine did only work when mpv.net was located in 'Program Files'
- fix: fatal errors were ignored and only seen in the terminal, now a message box is shown
- fix: when start-size=video was used then enlarging or shrinking the window size was broken

### 5.4.4.0

- new: forecolors in the dark theme are slightly darker now
- new: readme/website and manual were improved
- new: source code includes now the release script to build the archives and setup files
- new: the history feature now uses the full path
- new: install via Scoop and Chocolatey added to readme/website (Restia666Ashdoll)
- new: update check, it must be enabled first in the conf editor under General
- new: update feature, requires PowerShell 5 and curl,
       an up to date Windows 10 system has both included.
       Main menu (input.conf) must be reset or updated manually ([defaults](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt))

- update: libmpv shinchiro 2019-11-10 

- fix: often the OSC was shown when fullscreen was entered
       or on app startup, this is now suppressed
- fix: the file association routine uses no longer 'Play with mpv.net' for the
       default open verb caption because it doesn't support multi selection,
       it shows now only Open, the manual explains how to get multi selection
       in File Explorer, read about it [here](https://github.com/stax76/mpv.net/blob/master/Manual.md#open-with)
- fix: x86 builds had an older version included because
       of a misconfiguration in the solution file

### 5.4.3.0

- new: the color themes can now be customized ([manual](https://github.com/stax76/mpv.net/blob/master/Manual.md#color-theme))
- new: three new sections were added to the [manual](https://github.com/stax76/mpv.net/blob/master/Manual.md):
       1. [Color Theme](https://github.com/stax76/mpv.net/blob/master/Manual.md#color-theme)
       2. [Hidden and secret features](https://github.com/stax76/mpv.net/blob/master/Manual.md#hidden-and-secret-features)
       3. [External Tools](https://github.com/stax76/mpv.net/blob/master/Manual.md#external-tools)

- fix: window restore from maximized and from minimized was broken
- fix: it's possible to multi select files in File Explorer and press
       enter to open the files, this did however only work when the
	   auto load folder feature was disabled or the shift key was
	   pressed (blocks auto load folder). Now it should also work
	   without shift key and with auto load folder being enabled

- update: libmpv shinchiro 2019-10-27
- update: youtube-dl 2019-10-31

### 5.4.2.1 Beta

- pressing shift key suppresses auto-load-folder
- switch --queue added, this will not clear the playlist but append
  and it will suppress auto-load-folder. To get a 'Add to mpv.net playlist'
  context menu item in explorer with multi selection support use my
  [Open with++](https://github.com/stax76/OpenWithPlusPlus#add-to-mpvnet-playlist) shell extension, as far as I know multi selection
  can not be done using the Registry but only via shell extension
- window-size mpv property support added ([default bindings](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L137))
- the config editor keeps profiles and comments in mpv.conf intact!
- the options in the config editor are better organized

### 5.4.2

- new: the [scripting wiki page](https://github.com/stax76/mpv.net/wiki/Scripting#powershell) was improved
- new: Toggle Shuffle has been added to the menu defaults
- new: for URLs the media title is shown in the title bar and in the info command
       instead of displaying the URL, mpv.conf defaults were changed to use
       [protocol.https] osd-playing-msg = '${media-title}'

- fix: on the very first start volume was set to 0 and mute was set to yes
- fix: there was a sound when closed from taskbar
- fix: the log feature was not working
- fix: clipboard monitoring removed because it was causing to many issues
- fix: restore resulted in collapsed window when maximized = yes was used

- update: libmpv shinchiro 2019-10-06
- update: youtube-dl 2019-10-01

### 5.4.1.1

- a issue with the taskbar-progress feature was fixed
- improved PowerShell scrip host

### 5.4.1

- fix ArgumentOutOfRangeException

### 5.4

- added taskbar-progress implementation
- added new setting to start with maximized window
- long file paths work now even if not enabled by the OS
- fixed history being written even when history file wasn't created prior
- libmpv updated to shinchiro 2019-08-31

### 5.3

- added new feature: Open > Open DVD/Blu-ray Drive/Folder...
- the default of remember-volume has been set to yes
- scale, cscale, dscale defaults have been set to spline36,
  profile=gpu-hq is not used in the defaults because it starts very slow
- new menu items have been added to navigate to the first and
  last playlist position, key bindings: Home, End
- new config setting recent-count added, amount of menu items
  shown under 'Open > Recent'
- in the config dialog the description for keep-open was corrected
  because unlike mpv, mpv.net will never terminate automatically
- there was a rare occasion where the mpv.net logo wasn't shown
- fix excessive memory usage using `osd-scale-by-window = no`
- mpv setting osd-scale-by-window added to config dialog

### 5.2.1

- fixed race condition causing various features to fail

### 5.2

- bug fix for single-instance not working with unicode filenames
- bug fix for logo not shown on start
- osd-visibility.js script was removed because the OSC uses too much memory
- youtube-dl was updated
- libmpv was updated to shinchiro 2019-08-04
- in case mpv.net was started from a terminal it sets now the mpv property input-terminal to yes,
  this means mpv.net will now receive and handle input keys from the terminal
- certain command-line properties didn't work (input-terminal, terminal, input-file,
  config, config-dir, input-conf, load-scripts, script, scripts, player-operation-mode)
- the about dialog shows now the mpv version and build date
- the dialog that asks for a config folder has now a cancel option

### 5.1

- many [wiki pages](https://github.com/stax76/mpv.net/wiki) were improved
- the logo/icon had a very small cosmetic change
- the help in the context menu was improved,
  for quick access consider the command palette (F1 key)
- config options specific to mpv.net are now available from the command-line
- the input editor no longer has known limitations, 'alt gr' and ctrl+alt are working now
- the help in the input editor was simplified and the filter logic was improved
- fixed issue in file associations causing mpv.net not to appear in OS default apps
- 'Tools > Manage File Associations' was replaced by 'Tools > OS Setup',
  it has now a feature to add and remove mpv.net to and from the Path
  environment variable and the OS default apps settings can be opened (Win 10 only)
- startup folder and config folder being identical was causing a critical issue
  as mpv.net was loading extensions twice and scripts four times, now identical
  folders are no longer permitted
- error messages are shown when unknown scripts and extensions are found in the startup folder
  because user scripts and extensions are supposed to be located in the config folder instead
- changing from maximized to fullscreen did not work
- the search field in the config editor was not always remembered
- new setting remember-volume added, saves volume and mute on exit
  and restores it on start.
- it's now enforced that mpv properties on the command-line and in
  the mpv.conf config file are lowercase, if not a error is shown
- gpu-api vulkan was not working if media files were opened via
  command-line (that included Explorer)
- new setting minimum-aspect-ratio added, minimum aspect ratio for the window,
  this was previously hard coded to 1.3
- new setting auto-load-folder added, for single files automatically load
  the entire directory into the playlist, previously this was forced,
  now it can be disabled
- new setting themed-menu added, follow theme color in context menu,
  default: no. UI related settings have now a separate UI tab in the config editor

### 5.0

- [changed icon design](https://github.com/stax76/mpv.net/blob/master/img/mpvnet.png)
- libmpv was updated to shinchiro 2019-07-14
- new or improved config editor settings: screenshot-directory,
  screenshot-format, screenshot-tag-colorspace, screenshot-high-bit-depth,
  screenshot-jpeg-source-chroma, screenshot-template, screenshot-jpeg-quality,
  screenshot-png-compression, screenshot-png-filter
- mpv.conf preview feature added to config editor, it previews the mpv.conf content
- in the entire project the term addon was replaced with the term extension,
  unfortunately this will break user extensions. The reason for this drastic
  change is that there exist too many different terms, addons, addins,
  extensions, modules, packages etc.. mpv.net follows Google Chrome as the worlds
  most popular extendable app, Chrome uses the term Extension.
- a thread synchronization bug was fixed, the shutdown thread was aborted
  if it was running more than 3 seconds, this caused the rating extension
  to fail if it was waiting for a drive to wake up
- a new JavaScript was included to show the playlist with a smaller font size,
  the script is located at startup/scripts
- terminal support added using mpvnet.com !
- script engine performance and error handling was improved
- the [scripting wiki page](https://github.com/stax76/mpv.net/wiki/Scripting) was improved
- the C# scripting host extension was converted from VB to C# because it's not
  only used for hosting but I also use it now to code and debug script code
- there was a copy paste bug in the file association feature resulting in keys
  from mpv being overwritten instead of using mpv.net keys. Thanks to floppyD!
- there was a exception fixed that happened opening rar files
- instead of using the OS theme color there are now default colors
  for dark-color and light-color

### 4.7.7

- on Win 7 the theme color was hardcoded to DarkSlateGrey because
  WPF was returning a bad color on Win 7, this was fixed by reading
  the theme color from the Registry on Win 7. If the theme color
  is identical to the background color it's corrected
- dark-color setting was added to overwrite the OS theme color used in dark mode,
  find the setting on the General tab
- light-color setting was added to overwrite the OS theme color used in non dark mode,
  find the setting on the General tab
- various changes regarding input handling, multi media keys and
  mouse forward/backward were successfully tested
- it's now possible to use a custom folder as config folder,
  A TaskDialog shows five options: 1. appdata mpv.net, 2. appdata mpv (shared with mpv),
  3. portable_config, 4. startup, 5. custom
- slightly increased startup performance, start-threshold setting added.
  Threshold in milliseconds to wait for libmpv returning the video resolution
  before the window is shown, otherwise default dimensions are used as defined
  by autofit and start-size. Default: 1500
- autofit-smaller setting added. Minimum window height in percent. Default: 40%
- autofit-larger setting added. Maximum window height in percent. Default: 75%

### 4.7.3

- fix cursor showing load activity on startup
- added file size and type to info command using audio files
- added image format support to the info command, to file
  association management, to folder loading, to Everything
- readme/github have a updated features and architecture section

### 4.7.1

- few layout problems were fixed, autosize for instance did not work

### 4.7

- remember-height was replaced with start-size, when start-size is set
  to video the main video starts directly with the native video size,
  before it was starting with the autofit size first and was only
  afterwards resized to the native video size
- on exit the window location can be saved with remember-position
- in the learn window of the input editor underscores were stripped
  because they have a special meaning in WPF labels 
- fix for keys/input not working for MBTN_LEFT_DBL, MBTN_BACK, MBTN_FORWARD
- in the learn window of the input editor support was added for
  mouse left, mouse left double, mouse mid, mouse forward, mouse back
- libmpv was updated to shinchiro 2019-07-07
- when border is none it wasn't possible to minimize the window from
  the task bar because this is the WinForms default behavier. This
  was fixed by calling Spy++ to the rescue and adding WS_MINIMIZEBOX
  in CreateParams

### 4.6

- fix for middle mouse button not working
- fix of logo overlay using a huge amount of memory (thx for the [ghacks article](https://www.ghacks.net/2019/07/05/a-look-at-mpv-net-a-mpv-frontend-with-everything-integration/))
- fix config dialog showing a message about app restart without reason
- when multiple files are selected in File Explorer and enter is
  pressed, the files are opened as selected, the order is random though
  because Explorer starts multiple mpv.net processes concurrently
- libmpv was updated to shinchiro 2019-06-30
- the [mpv.conf defaults](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/mpv.conf.txt) were changed to show a larger OSC
- in case a file is opened that has a aspect ratio smaller then 1.2 then
  the window size will use a aspect ratio of 1.8
- new JavaScript script osc-visibility.js included in the distribution
  under startup\scripts. It sets the OSC to be always on for audio files
  and auto for non audio files

### 4.5

- opening a URL manually no longer uses a input box but uses the clipboard directly
- the manifest was missing the company attribute which caused
  mpv.net not appearing in the 'Open with' menu of the File Explorer,
  thanks to 44vince44 for pointing this out!!!
- new Python and C# script examples were added to the wiki and the scripting and
  extension documentation was improved
- invalid command-line arguments were ignored, now an error message is shown
- a description on how to start mpv.net from Google Chrome was added to the
  manual, it's useful to play videos from sites like YouTube, find the
  description [here](https://github.com/stax76/mpv.net/blob/master/Manual.md#chrome-extension)
- new config setting remember-height added to remember the window height,
  otherwise the video's native resolution is used
- support for protocols other then http added

### 4.4

- clipboard-monitoring was replaced by url-whitelist:
  Keyword whitelist to monitor the clipboard for URLs to play.
  Default: tube vimeo ard zdf 
- some settings like colors didn't work because enclosing quotes were missing
- when single process queue is used the folder is no longer loaded
- the playlist is never cleared whenever the control key is down but
  files and URLs are appended instead
- powershell script hosting bugs were fixed and a new powershell example script
  was added to the [scripting wiki page](https://github.com/stax76/mpv.net/wiki/Scripting#powershell)
- the menu entry for the command palette was renamed to 'Show All Commands' and
  the default key binding was changed to F1 which is also the default in VS Code
- the default key binding of the Everything media search was changed to F3
- support for the mpv property 'border' was added to the config editor
  to show/hide the window decoration (titlebar, border). A toggle menu item and
  key binding (b) was added as well ([Default Binding](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L135))

### 4.3.1

- there was a old bug setting the screen property

### 4.3

- there was new bug in file association feature

### 4.2

- the help and layout in the config editor was improved
- clipboard monitoring for URLs can be disabled in the settings
- the context menu has a new feature: Open > Add files to playlist,
  it appends files to the playlist [(Default binding)](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L33)
- a setting was added to force using a single mpv.net process instance

### 4.1

- drag & drop support for subtitles was added
- libmpv was updated
- command-line support for stdin and URLs was added
- there was a crash happening when the player is
  minimized in the taskbar

### 4.0

- on the start screen the mpv.NET icon is shown instead of the mpv icon,
  feedback and contributions regarding the icon are welcome! The paint.net
  pdn and png source is located [here](https://github.com/stax76/mpv.net/tree/master/img)
- everytime only one file is opened the complete folder is loaded in the playlist
- the info command (i key) shows the audio format
- new options osd-font-size, sub-font, sub-font-size
- new color options with dedicated GUI support: sub-color, sub-border-color, sub-back-color
- the config editor no longer shows the command-line switches
- the github start page was greatly improved 
- the setup.ps1 PowerShell script was greatly improved in regard of error handling and readability
- a [manual to mpv.net](Manual.md) was created

### 3.7

- new icon design, probably better then before but still too simple
- the radio buttons in the config editor have now a Windows 10 like design,
  they are larger and use the Windows theme color

### 3.6.1

- there was a bug causing an exception if both the input editor and config editor
  is opened, as soon as one is opened, the other can't be opened

### 3.6

- playing files from rar archives caused an exception
- there was a bug that caused underscores beeing removed from input like MBTN_LEFT_DBL
- the search clear button in the input editor had a render issue in dark mode
- new search feature added to search and play media files, requires
  [Everything](https://www.voidtools.com) to be installed. [Default Binding](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L29)

### 3.5

- when the main windows gets activated and the clipboard content starts with http
  mpv.net will ask to play the URL, previously this was restricted to YouTube URLs
- Python script errors show line and column whenever it is supported by IronPython
- if conf files exist in the startup directory mpv.net will use the startup
  directory as config directory instead of creating default conf files in appdata
- renamed commands are handled now by migration code instead of being broken

### 3.4

- new feature added to manage file associations from within the app. It can be found in the menu at: Tools > Manage... [Default Binding](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt#L149)
- new zip download option added
- new x86 download option added
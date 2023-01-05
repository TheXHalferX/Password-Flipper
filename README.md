# Password-Flipper

## Simple tool (for macOS for now) to create totp.conf for Flipper Zero's Authenticator plugin and to sort exported passwords

# How-to

- Build an app or get one from Releases
- Drop it anywhere you want
- Go to System Preferences -> Passwords
- Click ... near search field
- Click "export all"
- Open Terminal and dran-&-drop an app into Terminal window
- Drag-&-drop file.csv you exported into Terminal window
- Hit "Return" and type one of the folowing:
	- totp.conf: t
	- Only passwords WITH TOTP: w
	- Only passwords WITHOUT TOTP: wo
	- All-passwords file: f
	- Everything above: e
- Hit "Return" again
- Generated files will appear in your Downloads folder in folder "Passwords"

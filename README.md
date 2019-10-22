# pliny

Shell script to simplify maintaining a journal/diary in an encrypted directory. Uses `EncFS` for encryption. Note that `EncFS` has some known vulnerabilities, so this script should not be used to store nuclear launch codes.

# Dependencies

* `EncFS`

# Installation

Do `make install_local` to install to `$HOME/.local/bin`

# Usage

Run `pliny`

After providing the password, the journal will be mounted to the mount directory, which is printed out.
Then the script will ask if you want to create an entry for the day.
While this prompt is up, the journal files are accessible in the mount point and can be interacted with from another terminal window, for example.
If the user responds "yes", a journal entry with today's date will be opened in a text editor.
If the user says "no" or after closing the text editor created with a "yes" response, the journal will be unmounted.

The first time `pliny` is run, `EncFS` will prompt with some setup questions (see `man encfs` for details) and ask you to create a password.
This password will be needed next time to access the journal.

Some functionality can be modified by setting the following variables:

* `EDITOR` - The command to run for the text editor (default: `vi`)
* `PLINY_ENCFS_PATH` - The path of the encrypted file system (default: `$HOME/.journal`)
* `PLINY_MOUNT_PATH` - The path that the journal will be mounted to (default: `$HOME/mnt/journal`)

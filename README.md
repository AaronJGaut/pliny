# pliny

Shell script to simplify maintaining a journal/diary in an encrypted directory. Uses `EncFS` for encryption. Note that `EncFS` has some known vulnerabilities, so this script should not be used to store nuclear launch codes.

# Dependencies

* `EncFS`

# Installation

Do `make install_local` to install to `$HOME/.local/bin`

# Usage

Run `pliny`

## First run

The first time `pliny` is run, `EncFS` will prompt with some setup questions (see `man encfs` for details) and ask you to create a password.
This password will be needed next time to access the journal.
Once the first time setup is done, `pliny` goes into the behavior described in the next section.

## Regular usage

After providing the password to decrypt the journal, it will be mounted to the mount directory, which is printed out.
Then the script will give an opportunity to edit today's journal entry, or yesterday's.
After you close the editor or opt not to edit, the journal will be unmounted.


Some functionality can be modified by setting the following variables:

* `EDITOR` - The command to run for the text editor (default: `vi`)
* `PLINY_ENCFS_PATH` - The path of the encrypted file system (default: `$HOME/.journal`)
* `PLINY_MOUNT_PATH` - The path that the journal will be mounted to (default: `$HOME/mnt/journal`)
* `PLINY_ENTRY_SUFFIX` - Goes after the date in the journal entry filename (default: `.md`)

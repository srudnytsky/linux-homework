# Variant A

## Purpose

The script creates a compressed backup of log files from a specified directory and stores it in a backup directory.

## Usage

```bash
./backup.sh <log_dir> <backup_dir>
```

Example:

```bash
./backup.sh logs backups
```

## Prerequisites

* Bash shell
* `tar` utility installed
* Existing log directory
* Existing backup directory

## Expected Output

Successful execution:

```text
Backup created: /full/path/to/archive
```

Archive name format:

```text
logs_backup_YYYY-MM-DD_HH-MM.tar.gz
```

## Troubleshooting

### Invalid arguments

```text
Usage: ./backup.sh <log_dir> <backup_dir>
```

Check:

* Number of arguments
* Existence of both directories

### Backup already running

```text
Backup already running
```

Check:

* Whether another instance is running
* Presence of `/tmp/backup.lock`

### Backup failed

```text
Backup failed
```

Check:

* Write permissions for backup directory
* Available disk space
* `tar` command availability


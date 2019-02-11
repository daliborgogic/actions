# rsync

This GitHub Action deploys *everything* in `GITHUB_WORKSPACE` to a folder on a server via rsync over ssh. 

This action will run the provided argument as a command on your $HOST via SSH.

## Usage

```
# .github/main.workflow
action "Deploy to X" {
  uses = "daliborgogic/actions/rsync@master"
  secrets = ["DEPLOY_KEY"]
  args = ["-avzr --delete", "--exclude .htaccess --exclude /uploads/", "user@server.com:/srv/myapp/public/htdocs/"]
}
```

### Required Arguments

This action can receive three ARGs:

1. The first is for any initial/required rsync flags, eg: `-avzr --delete`

2. The second is for any `--exclude` flags and directory pairs, eg: `--exclude .htaccess --exclude /uploads/`. Use "" if none required.

3. The third is for the deployment target, and should be in the format: `[USER]@[HOST]:[PATH]`

### Required Secrets

* **DEPLOY_KEY**: This should be the private key part of an ssh key pair. The public key part should be added to the authorized_keys file on the server that receives the deployment.
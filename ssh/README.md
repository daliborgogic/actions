# SSH for GitHub Actions

Run a thing on your server.

This action will run the provided argument as a command on your $HOST via SSH.

## Usage

```
# .github/main.workflow
action "Run deploy script" {
  uses = "daliborgogic/actions/ssh@master"
  args = "/opt/deploy/run"
  secrets = [
    "PRIVATE",
    "PUBLIC",
    "HOST",
    "USER"
  ]
}
```

### Required Arguments

The argument you will use is the command that will be run on your sever via SSH.

#### Examples

* ```args = "/opt/deploy/run"```
* ```args = "touch ~/.reload"```

### Required Secrets

* **PRIVATE**: Your SSH private key.
* **PUBLIC**: Your SSH public key.
* **HOST**: The host the action will SSH to to run the command. ie, `example.com`.
* **USER**: The user the SSH command will auth as with the public key.

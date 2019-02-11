# rsync

## Usage

```
# .github/main.workflow
action "Deploy to X" {
  uses = "daliborgogic/actions/rsync@master"
  args = "--experimental build --squash -t [username]/[repo]:$GITHUB_SHA -f Dockerfile ."
  secrets = [
  	"PRIVATE",
  	"HOST",
  	"HOST_PATH",
  	"USER"
  ]
}
```

### Required Arguments

### Required Secrets

* `PRIVATE`: This should be the private key part of an ssh key pair.
* `HOST`
* `HOST_PATH`
* `USER`
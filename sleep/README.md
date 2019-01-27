# Sleep 

> Call `sleep` for N seconds in case you need a little
padding in your workflow.

## Usage

```
# .github/main.workflow
action "Sleep" {
  uses = "daliborgogic/actions/sleep@master"
  args = "15"
}
```

### Required Arguments

The only argument used or required is the number of seconds you want to sleep for.
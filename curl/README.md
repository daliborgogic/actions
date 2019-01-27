# curl

## Usage

Executes cURL with arguments listed in the Action's `args`.

```
action "Shell" {
  uses = "daliborgogic/actions/curl@master"
  args = ["github.com"]
}
```
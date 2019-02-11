# 200

> Wait till the host is up.

This action will simply check that a URL is returning a `200` HTTP status code
before completing.

<img src="https://i.imgur.com/uW0tDTH.png" alt="">

## Usage

```
# .github/main.workflow
action "200" {
  uses = "daliborgogic/actions/200@master"
}
```

### Environment Variables

* **URL**: The URL you want to poll. ie, `https://daliborgogic.com`.
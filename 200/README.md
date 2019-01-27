# 200

> Wait till the host is up.

This action will simply check that a URL is returning a `200` HTTP status code
before completing. You have the option to set how many seconds between checks
and how many tries before it exits in failure.

<img src="https://i.imgur.com/uW0tDTH.png" alt="">

## Usage

```
# .github/main.workflow
action "200" {
  uses = "daliborgogic/actions/200@master"
}
```

### Environment Variables

* **URL**: The URL you want to poll. ie, `https://example.com`.
* **SECONDS_BETWEEN_CHECKS**: How many seconds you want to wait between checking if the URL returns a `200` HTTP status code. ie, `2`.
* **MAX_TRIES**: The number of tries before failing. ie, `20`.
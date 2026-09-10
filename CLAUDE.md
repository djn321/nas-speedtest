# nas-speedtest

Measures network throughput between a Mac and a Synology NAS using `iperf3`, run via Docker.

## Structure

- `docker-compose.yml` - iperf3 container definition.
- `run-test.sh` - convenience script to run a test.
- `README.md` - setup instructions (NAS server side + Mac client side).

## GitHub

- Repo: https://github.com/djn321/nas-speedtest (private)
- Deployed: self-hosted - runs on-demand against the NAS, not a persistent deployment.

## Documentation

No dedicated Obsidian docs folder yet. Create one at `Software Projects/nas-speedtest` if this grows beyond a single script/compose file.

## Web Services / External Accounts

| Service                   | Role     | Account |
| -------------------------- | -------- | ------- |
| Self-hosted (NAS/Docker)   | Runtime  | nick (Synology login) |

## Notes

Utility script rather than an app - no test suite, no build step. Changes should be verified by actually running `run-test.sh` against the NAS.

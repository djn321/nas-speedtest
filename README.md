# NAS Speed Test

Measures network throughput between a Mac and a Synology NAS using iperf3.

## Setup

### 1. NAS (server side)

Install Container Manager from the Synology Package Centre if not already installed.

Copy `docker-compose.yml` to the NAS, then in Container Manager go to **Project > Create** and point it at the file. Start the project.

Alternatively, SSH into the NAS and run:

```bash
docker compose up -d
```

The server listens on port **5201**.

### 2. Mac (client side)

Install iperf3 via Homebrew:

```bash
brew install iperf3
```

## Running a test

```bash
./run-test.sh
```

This runs three tests:
- **Upload** - Mac to NAS
- **Download** - NAS to Mac (using iperf3's reverse mode)
- **Parallel upload** - 4 simultaneous streams, which can reveal true throughput if a single TCP stream is being bottlenecked

Each test runs for 10 seconds. Results show throughput in Gbps/Mbps.

## What to expect

On a gigabit network: ~940 Mbps is the practical maximum for a single stream. If you're getting significantly less, the bottleneck is likely the NAS drive speed, the network switch, or the cable.

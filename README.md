# retroproxy

[![CI](https://github.com/kralamoure/retroproxy/actions/workflows/ci.yml/badge.svg)](https://github.com/kralamoure/retroproxy/actions/workflows/ci.yml)

`retroproxy` is a reverse proxy for login and game servers of Dofus Retro.

## Build

```sh
git clone https://github.com/kralamoure/retroproxy
cd retroproxy
go build ./cmd/...
```

## Installation

```sh
go install github.com/kralamoure/retroproxy/cmd/retroproxy@latest
```

## Usage

```sh
retroproxy --help
```

### Output

```text
Usage of retroproxy:
  -d, --debug           Enable debug mode
  -s, --server string   Dofus login server address (default "dofusretro-co-production.ankama-games.com:443")
  -l, --login string    Dofus login proxy listener address (default "0.0.0.0:5555")
  -g, --game string     Dofus game proxy listener address (default "0.0.0.0:5556")
  -p, --public string   Dofus game proxy public address (default "127.0.0.1:5556")
  -a, --admin           Force admin mode on the client
```

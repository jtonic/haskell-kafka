# haskell-kafka

## Requirements/setup
---

- Haskell `stack` build tool installed
- `nix` client installed (See the links below)
- docker client installed (Docker desktop on macos)
- [Optional] vs code used as Haskell editor (IDE)

## How to
---

- start the kafka cluster
    `docker-compose -f ./companion/docker/docker-compose.yml up -d`

- check if all is ok with kafka by pointing the browser to control center web app
    `http://localhost:9021`

- build the application (watch mode and no optimization)
  `stack build --fast --file-watch`

- run the application
  `stack run haskell-kafka`
  or
  `stack exec haskell-kafka`

- test the app in watch mode
  `stack test --fast --file-watch`

See [some stack other useful commands](./doc/stack.md)

## Useful links
---

- [Stack nix integration](https://docs.haskellstack.org/en/stable/nix_integration/)
- [Install nix](https://nixos.org/download.html)
- [Nix quick guide](https://nixos.org/manual/nix/stable/#chap-quick-start)
- [Stack user guide](https://docs.haskellstack.org/en/stable/GUIDE/#user-guide)

## Tested with
---

- stack version: 2.5.1  (`stack --version`)
  - GHC/GHCi version (through stack): `8.10.4`
- nix version: 2.3.10   (`nix --version`)
- macos version: `Big Sur 11.4`
- vs code: `1.56.2`
- Vs code haskell extensions:

  Language support for Haskell (powered by HLS)
  - `haskell.haskell@1.4.0`

  Code highlight:
  - justusadam.language-haskell@3.4.0

  format haskell code:
  - vigoo.stylish-haskell@0.0.10
  - sergey-kintsel.hfmt-vscode@0.1.1

  Support for Hoogle search
  - jcanero.hoogle-vscode@0.0.7

  Nix:
  - arrterian.nix-env-selector@1.0.7
  - bbenoist.Nix@1.0.1
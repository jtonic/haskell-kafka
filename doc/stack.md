# Some other useful stack commands

- find out local bin root
    `stack path --local-bin`

- find out local install root
    `stack path --local-install-root`

- run the application with stack
    `stack exec haskell-kafka`

- run the local installed executable
    `$(stack path --local-install-root)/bin/haskell-kafka`

- install the application
    `stack install`

- run the application static executable
    `haskell-kafka`

- show dependencies
    `stack ls dependencies`

- show all layered packages
    `stack exec -- ghc-pkg list`

- build using another resolver
    `stack --resolver lts-17.9 build`
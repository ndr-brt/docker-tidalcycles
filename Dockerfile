FROM haskell

RUN cabal update
RUN cabal install tidal --lib

COPY BootTidal.hs /BootTidal.hs

CMD ["ghci", "-ghci-script", "/BootTidal.hs"]

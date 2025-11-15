`nix build --no-write-lock-file --no-link .#cabalLib # works`

`nix build --no-write-lock-file --no-link .#stackLib # fails`

```bash
$ nix log --no-write-lock-file .#stackLib  2>/dev/null
Running phase: unpackPhase
@nix { "action": "setPhase", "phase": "unpackPhase" }
unpacking source archive /nix/store/v2wr4x21qqnzbm74fifi3km90lrsk6i9-source-root-lib-lib-lib-root
source root is source-root-lib-lib-lib-root
Running phase: patchPhase
@nix { "action": "setPhase", "phase": "patchPhase" }
Running phase: updateAutotoolsGnuConfigScriptsPhase
@nix { "action": "setPhase", "phase": "updateAutotoolsGnuConfigScriptsPhase" }
Running phase: configurePhase
@nix { "action": "setPhase", "phase": "configurePhase" }
Configure flags:
--prefix=/nix/store/md9mlpiy908d8z90l1mhksi0vrwkyxqc-lib-lib-lib-0.1.0.0 lib:lib --package-db=clear --package-db=/build/tmp.86e974Pxhg/lib/ghc-9.10.2/lib/package.conf.d --exact-configuration --dependency=plugin=plugin-0.1.0.0-1EkPbnb9MHDKjhV1ndsTkJ --dependency=ghc=ghc-9.10.2-CwCnWKm7AFqB0NOBlArzcl --dependency=binary=binary-0.8.9.3-2kPdJCnXmltBWAKB8wlxrR --dependency=bytestring=bytestring-0.12.2.0-8VwC1WW0scVJhY9zkMPLSo --dependency=containers=containers-0.7-EKgqD9h1x6l8iuZyeUNIPc --dependency=directory=directory-1.3.8.5-HjAM4KFD3KtIVe8bhXcGTU --dependency=filepath=filepath-1.5.4.0-7ox7Gkv1YtrIHx2ZOEekCh --dependency=exceptions=exceptions-0.10.9-7GfBIDlmIjfGdMpqfpFvXB --dependency=mtl=mtl-2.3.1-IeekFE2olK8S05ho2UQHR --dependency=transformers=transformers-0.6.1.1-AbhC9SWeDLiFqjfQeCp9xm --dependency=stm=stm-2.5.3.1-1zRAaIkzunn182DE9OgkAR --dependency=os-string=os-string-2.0.4-5dr0RWeM07VADDIENbMuJr --dependency=time=time-1.12.2-D72o1bgJd3zKtQRywshk2Z --dependency=unix=unix-2.8.6.0-OJ2n4Zz8rvC0D8aIXQH6Y --dependency=ghc-boot=ghc-boot-9.10.2-ElKWwQlDwg983OveNHW4dM --dependency=ghc-platform=ghc-platform-0.1.0.0-LJFvSiu3vsMFXfZnYzYLWS --dependency=ghc-heap=ghc-heap-9.10.2-HyHJAwY9gERIoSHQtMQhO6 --dependency=ghci=ghci-9.10.2-4eg102cyCz571xvQFPHOQt --dependency=hpc=hpc-0.7.0.2-Gilj0r2MaUl3KODAjpNui8 --dependency=process=process-1.6.25.0-EHjCRPQq0EkDcS1KcncrMy --dependency=semaphore-compat=semaphore-compat-1.0.0-S7HWWEDqYWpHBhOvBt6G --dependency=array=array-0.5.8.0-inplace --dependency=base=base-4.20.1.0-inplace --dependency=deepseq=deepseq-1.5.0.0-inplace --dependency=ghc-bignum=ghc-bignum-1.3-inplace --dependency=ghc-boot-th=ghc-boot-th-9.10.2-inplace --dependency=ghc-internal=ghc-internal-9.1002.0-inplace --dependency=ghc-prim=ghc-prim-0.12.0-inplace --dependency=integer-gmp=integer-gmp-1.1-inplace --dependency=pretty=pretty-1.1.3.6-inplace --dependency=rts=rts-1.0.2 --dependency=system-cxx-std-lib=system-cxx-std-lib-1.0 --dependency=template-haskell=template-haskell-2.22.0.0-inplace --with-ghc=ghc --with-ghc-pkg=ghc-pkg --with-hsc2hs=hsc2hs --with-gcc=cc --with-ar=ar --with-strip=strip --with-ld=ld --disable-executable-stripping --disable-library-stripping --disable-library-profiling --disable-profiling --enable-static --enable-shared --disable-executable-dynamic --disable-coverage --enable-library-for-ghci --datadir=/nix/store/g2ws04lfmadmrzmci8frk2xmssywb64m-lib-lib-lib-0.1.0.0-data/share/ghc-9.10.2 --enable-split-sections 
Configuring library for lib-0.1.0.0...
Running phase: buildPhase
@nix { "action": "setPhase", "phase": "buildPhase" }
Preprocessing library for lib-0.1.0.0...
Building library for lib-0.1.0.0...
<no location info>: error:
    Failed to load interface for ‘GHC.Driver.Plugins’.
no unit id matching ‘ghc-9.10.2-inplace’ was found

$ nix log --no-write-lock-file .#cabalLib  2>/dev/null
Running phase: unpackPhase
@nix { "action": "setPhase", "phase": "unpackPhase" }
unpacking source archive /nix/store/v2wr4x21qqnzbm74fifi3km90lrsk6i9-source-root-lib-lib-lib-root
source root is source-root-lib-lib-lib-root
Running phase: patchPhase
@nix { "action": "setPhase", "phase": "patchPhase" }
Running phase: updateAutotoolsGnuConfigScriptsPhase
@nix { "action": "setPhase", "phase": "updateAutotoolsGnuConfigScriptsPhase" }
Running phase: configurePhase
@nix { "action": "setPhase", "phase": "configurePhase" }
Configure flags:
--prefix=/nix/store/md9mlpiy908d8z90l1mhksi0vrwkyxqc-lib-lib-lib-0.1.0.0 lib:lib --package-db=clear --package-db=/build/>
Configuring library for lib-0.1.0.0...
Running phase: buildPhase
@nix { "action": "setPhase", "phase": "buildPhase" }
Preprocessing library for lib-0.1.0.0...
Building library for lib-0.1.0.0...
<no location info>: error:
    Failed to load interface for ‘GHC.Driver.Plugins’.
no unit id matching ‘ghc-9.10.2-inplace’ was found
Running phase: unpackPhase
@nix { "action": "setPhase", "phase": "unpackPhase" }
unpacking source archive /nix/store/msybgn1vric56p3mrzjhyjlmmfd1wq6z-source-lib-lib-lib-root
source root is source-lib-lib-lib-root
Running phase: patchPhase
@nix { "action": "setPhase", "phase": "patchPhase" }
Running phase: updateAutotoolsGnuConfigScriptsPhase
@nix { "action": "setPhase", "phase": "updateAutotoolsGnuConfigScriptsPhase" }
Running phase: configurePhase
@nix { "action": "setPhase", "phase": "configurePhase" }
Configure flags:
--prefix=/nix/store/gspb4967b41jczb27zbv6n2dg2sdwd14-lib-lib-lib-0.1.0.0 lib:lib --package-db=clear --package-db=/build/tmp.W9pPBaG7ef/lib/ghc-9.10.2/lib/package.conf.d --exact-configuration --dependency=plugin=plugin-0.1.0.0-83er9dCf1YJ4MbMRnOLvVS --dependency=array=array-0.5.8.0-inplace --dependency=base=base-4.20.1.0-inplace --dependency=binary=binary-0.8.9.3-inplace --dependency=bytestring=bytestring-0.12.2.0-inplace --dependency=containers=containers-0.7-inplace --dependency=deepseq=deepseq-1.5.0.0-inplace --dependency=directory=directory-1.3.8.5-inplace --dependency=exceptions=exceptions-0.10.9-inplace --dependency=filepath=filepath-1.5.4.0-inplace --dependency=ghc=ghc-9.10.2-inplace --dependency=ghc-bignum=ghc-bignum-1.3-inplace --dependency=ghc-boot=ghc-boot-9.10.2-inplace --dependency=ghc-boot-th=ghc-boot-th-9.10.2-inplace --dependency=ghc-heap=ghc-heap-9.10.2-inplace --dependency=ghc-internal=ghc-internal-9.1002.0-inplace --dependency=ghc-platform=ghc-platform-0.1.0.0-inplace --dependency=ghc-prim=ghc-prim-0.12.0-inplace --dependency=ghci=ghci-9.10.2-inplace --dependency=hpc=hpc-0.7.0.2-inplace --dependency=integer-gmp=integer-gmp-1.1-inplace --dependency=mtl=mtl-2.3.1-inplace --dependency=os-string=os-string-2.0.4-inplace --dependency=pretty=pretty-1.1.3.6-inplace --dependency=process=process-1.6.25.0-inplace --dependency=rts=rts-1.0.2 --dependency=semaphore-compat=semaphore-compat-1.0.0-inplace --dependency=stm=stm-2.5.3.1-inplace --dependency=template-haskell=template-haskell-2.22.0.0-inplace --dependency=time=time-1.12.2-inplace --dependency=transformers=transformers-0.6.1.1-inplace --dependency=unix=unix-2.8.6.0-inplace --with-ghc=ghc --with-ghc-pkg=ghc-pkg --with-hsc2hs=hsc2hs --with-gcc=cc --with-ar=ar --with-strip=strip --with-ld=ld --disable-executable-stripping --disable-library-stripping --disable-library-profiling --disable-profiling --enable-static --enable-shared --disable-executable-dynamic --disable-coverage --enable-library-for-ghci --datadir=/nix/store/haiwsc6p7jnywdm41cvpx8481gbbahqm-lib-lib-lib-0.1.0.0-data/share/ghc-9.10.2 --enable-split-sections 
Configuring library for lib-0.1.0.0...
Running phase: buildPhase
@nix { "action": "setPhase", "phase": "buildPhase" }
Preprocessing library for lib-0.1.0.0...
Building library for lib-0.1.0.0...
[1 of 1] Compiling Mod              ( src/Mod.hs, dist/build/Mod.o, dist/build/Mod.dyn_o )
Running phase: installPhase
@nix { "action": "setPhase", "phase": "installPhase" }
Installing library in /nix/store/gspb4967b41jczb27zbv6n2dg2sdwd14-lib-lib-lib-0.1.0.0/lib/aarch64-linux-ghc-9.10.2-inplace/lib-0.1.0.0-I9Lidn613NHDHYk0YBZyri
Running phase: fixupPhase
@nix { "action": "setPhase", "phase": "fixupPhase" }
checking for references to /build/ in /nix/store/gspb4967b41jczb27zbv6n2dg2sdwd14-lib-lib-lib-0.1.0.0...
patchelf: wrong ELF type
patching script interpreter paths in /nix/store/gspb4967b41jczb27zbv6n2dg2sdwd14-lib-lib-lib-0.1.0.0
checking for references to /build/ in /nix/store/haiwsc6p7jnywdm41cvpx8481gbbahqm-lib-lib-lib-0.1.0.0-data...
patching script interpreter paths in /nix/store/haiwsc6p7jnywdm41cvpx8481gbbahqm-lib-lib-lib-0.1.0.0-data
Running phase: installCheckPhase
@nix { "action": "setPhase", "phase": "installCheckPhase" }
/nix/store/gspb4967b41jczb27zbv6n2dg2sdwd14-lib-lib-lib-0.1.0.0/package.conf.d/lib-0.1.0.0-I9Lidn613NHDHYk0YBZyri.conf  is present

$ nix log --no-write-lock-file .#stackLib 2>/dev/null | grep prefix | tr ' ' '\n' | grep dependency=ghc=
--dependency=ghc=ghc-9.10.2-CwCnWKm7AFqB0NOBlArzcl

$ nix log --no-write-lock-file .#cabalLib 2>/dev/null | grep prefix | tr ' ' '\n' | grep dependency=ghc=
--dependency=ghc=ghc-9.10.2-inplace

```

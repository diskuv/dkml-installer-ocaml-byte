# DkML Installer - Bytecode Edition

> There is a more-powerful but slower-to-install version of the installer available as the [DkML Installer - Native Code Edition](https://github.com/diskuv/dkml-installer-ocaml) that may require Administrator permissions. This Bytecode edition was only meant for education **and has been discontinued due to limited uptake**.

DkML Bytecode Edition is an open-source set of software
that supports software development in pure OCaml. The Bytecode Edition's
strengths are its:

* full compatibility with OCaml standards like Opam, Dune and ocamlfind
* laser focus on "native" development (desktop software, mobile apps and embedded software) through support for the standard native compilers like Visual Studio
  and Xcode
* ease-of-use through simplified installers and simple productivity commands; high school, college and university students should be
  able to use it
* security through reproducibility, versioning and from-source builds

These alternatives may be better depending on your use case:

* Developing in a Javascript first environment? Have a look at [Esy and Reason](https://esy.sh/)
* Developing operating system kernels? Have a look at [Mirage OS](https://mirage.io/)
* Developing Linux server software like web servers? Plain old [OCaml on Debian, etc.](https://ocaml.org/docs/up-and-running) works well
* Writing compilers or proofs? Plain old OCaml works really well

The DkML Installer for OCaml generates and distributes installers for
the DkML distribution. Windows, Debian/x86_64 and macOS/Silicon are ready today.

For news about DkML, <!-- markdown-link-check-disable-next-line -->
[![Twitter URL](https://img.shields.io/twitter/url/https/twitter.com/diskuv.svg?style=social&label=Follow%20%40diskuv)](https://twitter.com/diskuv) on Twitter.

## Installing

**Windows user?**

Run the [latest Windows 64-bit Bytecode Edition installer](https://gitlab.com/dkml/distributions/dkml/-/releases/2.1.4/downloads/setup64bu.exe).

After your install is completed, you can read the
[Install is done! What next?](https://diskuv.com/dkmlbook/#install-is-done-what-next)
documentation.

---

The full set of releases is at <https://gitlab.com/dkml/distributions/dkml/-/releases>

The full documentation is at <https://diskuv.com/dkmlbook>

## Sponsor

<a href="https://ocaml-sf.org">
<img align="left" alt="OCSF logo" src="https://ocaml-sf.org/assets/ocsf_logo.svg"/>
</a>
Thanks to the [OCaml Software Foundation](https://ocaml-sf.org)
for economic support to the development of DkML.
<p/>

## How the installer is built

We use the [dkml-install-api](https://diskuv.github.io/dkml-install-api/index.html)
to generate installers from the following Opam packages:

* [dkml-component-ocamlrun](http://github.com/diskuv/dkml-component-ocamlcompiler)
* [dkml-component-ocamlcompiler](http://github.com/diskuv/dkml-component-ocamlcompiler)
* [dkml-component-opam](http://github.com/diskuv/dkml-component-opam)
* [dkml-component-desktop](https://gitlab.com/dkml/components/dkml-component-desktop)
* [dkml-component-unixutils](http://github.com/diskuv/dkml-component-unixutils)

## Building from Source

On Windows, if you have already installed OCaml:

```powershell
with-dkml opam install . --with-test --with-doc --deps-only
with-dkml dune build
```

On Unix:

```bash
opam install .--with-test --with-doc --deps-only
dune build
```

## Contributing

The installer makes heavy use of the dkml-install-api.
See [the Contributors section of dkml-install-api](https://github.com/diskuv/dkml-install-api/blob/main/contributors/README.md).

In addition, there are

* [code signing documents](contributors/BINARY_SIGNING.md)
* [winget package submission documents](i-offline/winget/README.md)

## Status

| What                     | Branch/Tag | Status                                                                                                                                                                                                    |
| ------------------------ | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Installer build and test |            | [![Build with DkML compiler](https://github.com/diskuv/dkml-installer-ocaml-byte/actions/workflows/build.yml/badge.svg)](https://github.com/diskuv/dkml-installer-ocaml-byte/actions/workflows/build.yml) |
| Installer syntax check   |            | [![Syntax check](https://github.com/diskuv/dkml-installer-ocaml-byte/actions/workflows/syntax.yml/badge.svg)](https://github.com/diskuv/dkml-installer-ocaml-byte/actions/workflows/syntax.yml)           |

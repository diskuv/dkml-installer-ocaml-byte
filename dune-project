(lang dune 2.9)

(name dkml-installer-ocaml-offline)
(version 2.1.1)

(generate_opam_files true)

(source
 (github diskuv/dkml-installer-ocaml))
(license Apache-2.0)
(authors "Diskuv, Inc. <opensource+dkml@support.diskuv.com>")
(maintainers "opensource+dkml@support.diskuv.com")

(package
 (name dkml-installer-ocaml-offline)
 (synopsis "DkML offline installer generator for OCaml")
 (description
  "Generates an offline installer for OCaml. The offline installer only supports bytecode unless the end-user machine has a C + ASM compilers (ex. Visual Studio on Windows) at the same location as the build machine")
 (depends
  (odoc                                   (and (>= 1.5.3) :with-doc))
  (ocaml                                  (>= 4.12.1~))
  (dkml-component-ocamlcompiler-offline   (and (>= 4.14.2~) (< 4.14.3~)))
  (dkml-component-offline-desktop-full    (>= 0.1.0))
  (dkml-install-installer                 (>= 0.5.2))
  (dkml-workflows                         (and (>= 1.1.0) :build))))

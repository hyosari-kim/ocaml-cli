(lang dune 3.3)

(name cli)

(generate_opam_files true)

(source
 (github hyosari-kim/ocaml-cli))

(authors "hyoeun kim")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name cli)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project

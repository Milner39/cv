# CV

[![Typst](https://img.shields.io/badge/typst-0.15.0-239dad)](https://typst.app) [![Nix Flake](https://img.shields.io/badge/nix-flake-5277c3?logo=nixos&logoColor=white)](https://nixos.org)

## What is this?

This repository is my CV, and the small set of Typst components that build it. Rather than fighting a word processor every time an application needs a slightly different emphasis, the document is written as plain text in [main.typ](main.typ), and in [src/](src/) reusable components are declared to control the look of the document, then `typst compile` generates single-page A4 PDF.

Sections are also declared as templates rather than hand-formatted, and each kind of entry (Work XP, Education, Projects, etc) has its own component, so adding a new entry is simple.

The whole document builds inside a Nix dev shell, so the fonts and the Typst version are pinned and the PDF looks the same wherever it is compiled.

## Getting started

Enter the dev shell, which provides Typst and the fonts the document expects:

```sh
nix develop
```

Personal details are kept out of the repository, so create your own copy of the example before building:

```sh
cp src/private.example.typ src/private.typ
```

Then fill in [src/private.typ](src/private.typ) with a name, area, phone number, email, and profile links. The file is listed in [.gitignore](.gitignore), it is the one place contact details appear, so it should not be committed.

Build the PDF:

```sh
typst compile main.typ
```

Or rebuild on every save while editing:

```sh
typst watch main.typ
```

## How it works

[main.typ](main.typ) Applies the shared formatting, imports the components, and then lists the sections.

[src/format.typ](src/format.typ) The stylesheet. It sets the page, the body font, the document metadata, and the show rules for titles, headings, links, and dividers. It also exports `base-size(mult)`, which returns `mult * 10pt`; every gap and font size in the project is expressed as a multiple of that, so the document scales in proportion rather than drifting. Points are used instead of `em` on purpose, since `em` sizes rescale awkwardly inside already-resized text.

Each component under [src/components/](src/components/) Provides a function that populates it's template to be used by [main.typ](main.typ).

[src/utils.typ](src/utils.typ) Holds the shared helpers. Currently just `clean-link`, which strips the protocol and `www.` from a URL so links read as `github.com/Milner39` while still pointing at the full address.


## Editor setup

[.vscode/](.vscode/) recommends [Tinymist](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) and configures it to compile `main.typ`, lint and refresh the live preview on save, and format with `typstyle`. Formatting on save is enabled, so commits stay free of noise from stray whitespace.

## Licence

No licence has been declared for this repository. The components are here to be read and borrowed from; the content is mine (Finn Milner).

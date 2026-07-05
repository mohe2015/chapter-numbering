# numera

Per-chapter figure and equation numbering, subfigure numbering, numbering functions that can render differently for references, equate package compatibility.

See [example](tests/example/test.typ) and [equate example](tests/compatibility-equate/test.typ) for usage.

## Development

```
cargo install --locked typst-cli
cargo install --locked tytanic
cargo install --locked typstyle
cargo install --git https://github.com/typst/package-check.git
cargo install --locked typship

typst-package-check check
typstyle --check .
tt run
typship publish
```
# redocly-cli-github-action

#### A Github action for running redocly commands

## :keyboard: Inputs

### `args`

The arguments to be provided to the `redocly/cli` cli command.
By default this is empty so that `redocly/cli` cli will print a note about its correct usage.

## :bulb: Quick Start

### Bundle

```yaml
jobs:
  bundle:
    runs-on: ubuntu-latest
    name: bundle
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: redocly bundle
        uses: CiTroNaK/redocly-cli-github-action@master
        with:
          args: 'bundle test/petstore.yml'
```

This example uses the bundle action to generate a HTML bundle for the petstore.yml OpenAPI definition.

### Lint

```yaml
jobs:
  lint:
    runs-on: ubuntu-latest
    name: lint
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: redocly lint
        uses: CiTroNaK/redocly-cli-github-action@master
        with:
          args: 'lint test/petstore.yml'
```

This example validates your OpenAPI definition files to ensure they do not contain errors and have a valid structure according to the OpenAPI specifications.

## :blue_book: References

- [Redocly CLI](https://redoc.ly/docs/cli/)

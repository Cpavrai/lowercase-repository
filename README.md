# Lowercase Repository

## Description

A Github Action for lowercase all folders and files names in the current directory, in full depth.

## Example Usage

For lowercase all files and directories in a `src` directory:

```yaml
steps:
  - name: Checkout
    uses: actions/checkout@v1
  - name: Lowercase Source
    working-directory: ./src
    uses: Cpavrai/lowercase-repository@v3
```

## License

MIT
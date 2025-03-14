# homebrew-metaplane

homebrew tap for metaplane binaries

## Updating

Before changes making here, make sure you've already followed the publishing instructions in the [`metaplane-cli` package](https://github.com/metaplane/metaplane-frontend/tree/main/packages/metaplane-cli#publishing).

At this point, the latest binaries and install script should be published behind our CDN.

First, install the latest, recently published version of the CLI. We'll need this to get the latest sha.

```sh
/bin/bash -c "$(curl -fsSL https://cli.metaplane.dev/spm/install.sh)"
```

Then, run the following command to get the latest sha.

```sh
shasum -a 256 $(which metaplane)
```

Now update the formula's `version` and `sha256`. You're now ready to open a PR.

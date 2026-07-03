# Managing Mods, Resourcepacks, and Files

## Adding

For a more extenisve guide on adding mods, resourcepacks, or files see the [Adding mods section](https://packwiz.infra.link/tutorials/creating/adding-mods/) of the packwiz wiki,
but this section covers the basics.

### Adding Mods or Resourcepacks

To manage what mods and their versions we use the tool [packwiz](https://packwiz.infra.link/).

```shell
packwiz modrinth install <MOD>
```

The command works for resourcepacks but with the resourcepack's URL instead.

### Adding Internal Files

To add internal files like config files, simply copy the files to your modpack directory and reinit the pack.

```shell
just reinit PACK_VERSION GAME_VERSION
```

## Removing

### Removing Mods or Resourcepacks

To remove mods or resourcepacks we use packwiz again.

```shell
packwiz remove <MOD>
```

You can also just remove the associated files from [`mods/`](/mods/) or [`resourcepacks/`](/resourcepacks/),
and then run `packwiz refresh`.
For example to remove bobby, delete the bobby file (`mods/bobby.pw.toml`)

### Removing Internal Files

To remove internal files just delete the file and run `packwiz refresh`.

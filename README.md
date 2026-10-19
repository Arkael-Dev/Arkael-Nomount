# Arkael-Nomount

NoMount metamodule packaged for the **Arkael kernel**, which already includes the NoMount patch.

This repository does not contain the NoMount source. A GitHub Actions workflow downloads the latest official release of
[maxsteeel/nomount](https://github.com/maxsteeel/nomount), rebrands the module (id, name, author, description),
publishes it as `Arkael-Nomount.zip`, and keeps `update.json` current so KernelSU-Next can offer updates automatically.

## Install
1. Download `Arkael-Nomount.zip` from [Releases](../../releases/latest).
2. Flash it in KernelSU-Next (Modules tab) and reboot.
3. Home screen should show: Metamodule status: Installed | NoMount.

Requires the Arkael kernel (NoMount is built in). It will not work as intended on other kernels.

## Updates
- The workflow checks upstream every 6 hours and builds a new release when upstream publishes one.
- The module declares `updateJson`, so the manager shows updates by itself.
- Manual build: Actions > Build Arkael-Nomount > Run workflow.

## Credits
- **[maxsteeel/nomount](https://github.com/maxsteeel/nomount)**: NoMount, all credit to the original author and contributors.
- Fork and packaging: [@arqzey](https://github.com/arqzey) / Arkael-Dev.

## License
GPL-3.0, same as upstream. See [LICENSE](LICENSE) and [NOTICE](NOTICE).

![spy shark](/kiri2_debloat.png)
<img align="left" src="https://img.shields.io/github/downloads/enaix/Kirikiroid2-Debloated/total?style=flat-square&link=https%3A%2F%2Fgithub.com%2Fenaix%2FKirikiroid2-debloated%2Freleases%2F" alt="GitHub Release Downloads">

# Kirikiroid2-debloated
Kirikiroid2 apk binaries without adware

[The article is available here](https://enaix.github.io/decompilation/smali/2024/02/10/patching-kirikiroid2.html)

Original projects:

* https://github.com/zeas2/Kirikiroid2

* https://github.com/YuriSizuku/Kirikiroid2Yuri

**APK files are in the Releases tab**

## Which apk to choose

Original Kirikiroid2 doesn't launch on modern Android versions, so the patched Kirikiroid2Yuri version should be preferred

## Changes

* **Now runs on Android 14**

* Removed unwanted *cn.waps* module and device id fetch

* Changed package name to prevent app conflicts

## Games compatibility list

*For Kirikiroid2-yuri based forks*

### Fate/stay night

| Game V. | Version | Src | Runs | Issues | Comment |
| :------ | :------ | :-- | :--: | :----- | :------ |
| \[Realta Nua\] | **Prepatched (Type Moon Collection)** | GDrive (reddit) | 🟩 | Fate route missing? | More vanilla-ish experience |
| \[Realta Nua\] Ultimate | **(v1.1.4 incl. hotfix) (Portable)** | nyaa | 🟩 | | Very feature-rich |
| \[Realta Nua\] Ultimate | `...Ultimate Edition.7z` | GDrive (reddit) | 🟥 | Most of the Ultimate versions are uncompatible on android, unless stated in the readme | |

### Fate/hollow ataraxia

| Game V. | Version | Src | Runs | Issues | Comment |
| :------ | :------ | :-- | :--: | :----- | :------ |
| Original | `Fate Hollow Ataraxia.7z` | GDrive (reddit) | 🟩 |  |  |

## Basic troubleshooting

#### The app crashes during startup or game launch

Try the yuri version instead of the vanilla, since it contains patches to common issues.

#### I get the wide string error during game launch

Make sure that the game is listed in the compatibility list, some game modifications do not support Kirikiroid

#### The files directory is empty

Enable *All files access* permission in system settings

## Lazy todo

- [ ] Find the source of the clicking issue during dialogue skip

## Files

Original project files are located in `kiri2_src` and yuri project in `kiri2_yuri`. Unchanged `Kirikiroid2.smali` is in the repository root.


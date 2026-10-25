# Patch files

## Applying patches

From the project directory run `git apply patches/FOO.patch` for each patch you want to apply. This will change the original file under `kiri2_yuri/lib/arm64-v8a/libgame.so`.

## Patches

[fix-file-access-crash.patch](fix-file-access-crash.patch): Prevents apk crash when the file cannot be accessed due to the SELinux policy. Disables video previews

```patch
< kiri2_yuri/lib/arm64-v8a/libgame.so:     file format elf64-littleaarch64
---
> patches/kiri2_yuri/lib/arm64-v8a/libgame.so:     file format elf64-littleaarch64
1825251,1825252c1825251,1825252
<   ae5c8c:	97f9b8a9 	bl	953f30 <_ZSt13move_backwardIiESt15_Deque_iteratorIT_RS1_PS1_ES0_IS1_RKS1_PS5_ES8_S4_@@Base+0x598>
<   ae5c90:	36001300 	tbz	w0, #0, ae5ef0 <_ZN23TVPMainFileSelectorForm13onCellClickedEi@@Base+0x358>
---
>   ae5c8c:	2a0003e0 	mov	w0, w0
>   ae5c90:	14000098 	b	ae5ef0 <_ZN23TVPMainFileSelectorForm13onCellClickedEi@@Base+0x358>
```

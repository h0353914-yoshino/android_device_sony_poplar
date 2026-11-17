# Sony Xperia XZ1（poplar）OrangeFox 16.0

此設定將 Sony Yoshino 共用 recovery 組態放在 `device/sony/yoshino-common`，poplar 的產品與裝置識別則維持在 `device/sony/poplar`。

## 分支與來源

Sony 裝置樹、Yoshino 共用樹與 msm8998 kernel 以各自的 `lineage-24.0` 為基底，在本機建立 `fox_16.0` 分支。kernel 延用 Android 16 source 所用的 4.19 設定。

## 編譯

在 OrangeFox Android 16 source 根目錄執行：

```bash
export FOX_BUILD_DEVICE=poplar
source build/envsetup.sh
lunch twrp_poplar-bp2a-eng
mka recoveryimage
```

輸出為 `out/target/product/poplar/recovery.img`。此裝置 recovery 寫入 FOTAKernel 分割區。

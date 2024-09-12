# 刷机前准备  

* 把一加6升级至最新的OxygenOS 11，刷入copy-partitions-*.zip，擦除dtbo分区   

* 参照 https://mobile.nixos.org/devices/oneplus-enchilada.html  



# 构建mobile-nixos镜像   

* 下载未被合入的文件夹example/gnome： https://github.com/NixOS/mobile-nixos/pull/576/files   

* 构建参照文档：https://mobile.nixos.org/getting-started.html   

* 启动构建：nix-build examples/gnome --argstr device oneplus-enchilada -A outputs.default   



# 刷入镜像   

* result/flash-critical.sh   

* fastboot flash userdata ./result/system.img   

* fastboot reboot   

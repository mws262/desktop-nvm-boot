@echo -off
mode 80 25
cls 
if exist fs0:\Nvm.efi then
	load fs0:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs1:\Nvm.efi then
	load fs1:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs2:\Nvm.efi then
	load fs2:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs3:\Nvm.efi then
	load fs3:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs4:\Nvm.efi then
	load fs4:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs5:\Nvm.efi then
	load fs5:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs6:\Nvm.efi then
	load fs6:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs7:\Nvm.efi then
	load fs7:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs8:\Nvm.efi then
	load fs8:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
if exist fs9:\Nvm.efi then
	load fs9:\Nvm.efi
	goto FOUNDNVMDRIVER
endif
echo "Could not find NVME driver."
goto END
:FOUNDNVMDRIVER
echo "Found nvme driver on usb drive."
connect -r
set -v efishellmode 1.1.2
map -u
if exist fs0:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS0."
fs0:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs1:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS1."
fs1:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs2:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS2."
fs2:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs3:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS3."
fs3:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs4:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS4."
fs4:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs5:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS5."
fs5:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs6:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS6."
fs6:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs7:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS7."
fs7:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs8:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS8."
fs8:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
if exist fs9:\EFI\ubuntu\grubx64.efi then
echo "Found bootloader on FS9."
fs9:\EFI\ubuntu\grubx64
goto FOUNDBOOTLOADER
endif
echo "Could not find the grub bootloader."
:FOUNDBOOTLOADER
:END
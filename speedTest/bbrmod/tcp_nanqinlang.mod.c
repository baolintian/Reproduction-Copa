#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0xcbc31633, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x883ff744, __VMLINUX_SYMBOL_STR(tcp_tso_autosize) },
	{ 0xfe719995, __VMLINUX_SYMBOL_STR(minmax_running_max) },
	{ 0x23a2846, __VMLINUX_SYMBOL_STR(tcp_register_congestion_control) },
	{ 0x7d11c268, __VMLINUX_SYMBOL_STR(jiffies) },
	{ 0xc611bf48, __VMLINUX_SYMBOL_STR(tcp_mss_to_mtu) },
	{ 0x7f24de73, __VMLINUX_SYMBOL_STR(jiffies_to_usecs) },
	{ 0xa735db59, __VMLINUX_SYMBOL_STR(prandom_u32) },
	{ 0xb39aec56, __VMLINUX_SYMBOL_STR(tcp_unregister_congestion_control) },
	{ 0xb4390f9a, __VMLINUX_SYMBOL_STR(mcount) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";


MODULE_INFO(srcversion, "53115E04622AB8AC7CE0E3F");

	.file	"obj\Debug\90\android\environment.armeabi-v7a.s"
	.arch	armv7-a
	.syntax	unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.type	mono_aot_mode_name, %object
	.global	mono_aot_mode_name

	.section	.data.mono_aot_mode_name, "aw", %progbits
	.p2align	2
mono_aot_mode_name:
	.long	.L.autostr.0
	.size	mono_aot_mode_name, 4

	.type	app_environment_variables, %object
	.global	app_environment_variables

	.section	.data, "aw", %progbits
	.p2align	2
app_environment_variables:
	.long	.L.autostr.1
	.long	.L.autostr.2
	.long	.L.autostr.3
	.long	.L.autostr.4
	.long	.L.autostr.5
	.long	.L.autostr.6
	.long	.L.autostr.7
	.long	.L.autostr.8
	.long	.L.autostr.9
	.long	.L.autostr.10
	.long	.L.autostr.11
	.long	.L.autostr.12
	.size	app_environment_variables, 48

	.section	.data, "aw", %progbits
	.type	app_system_properties, %object
	.global	app_system_properties
app_system_properties:
	.size	app_system_properties, 0
	@ Bundled assembly name buffers, all 65 bytes long

	.section	.bss.bundled_assembly_names, "aw", %nobits
	.type	.L.env.buf.0, %object
.L.env.buf.0:
	.zero	65
	.size	.L.env.buf.0, 65
	.type	.L.env.buf.1, %object
.L.env.buf.1:
	.zero	65
	.size	.L.env.buf.1, 65
	.type	.L.env.buf.2, %object
.L.env.buf.2:
	.zero	65
	.size	.L.env.buf.2, 65
	.type	.L.env.buf.3, %object
.L.env.buf.3:
	.zero	65
	.size	.L.env.buf.3, 65
	.type	.L.env.buf.4, %object
.L.env.buf.4:
	.zero	65
	.size	.L.env.buf.4, 65
	.type	.L.env.buf.5, %object
.L.env.buf.5:
	.zero	65
	.size	.L.env.buf.5, 65
	.type	.L.env.buf.6, %object
.L.env.buf.6:
	.zero	65
	.size	.L.env.buf.6, 65
	.type	.L.env.buf.7, %object
.L.env.buf.7:
	.zero	65
	.size	.L.env.buf.7, 65
	.type	.L.env.buf.8, %object
.L.env.buf.8:
	.zero	65
	.size	.L.env.buf.8, 65
	.type	.L.env.buf.9, %object
.L.env.buf.9:
	.zero	65
	.size	.L.env.buf.9, 65
	.type	.L.env.buf.10, %object
.L.env.buf.10:
	.zero	65
	.size	.L.env.buf.10, 65
	.type	.L.env.buf.11, %object
.L.env.buf.11:
	.zero	65
	.size	.L.env.buf.11, 65
	.type	.L.env.buf.12, %object
.L.env.buf.12:
	.zero	65
	.size	.L.env.buf.12, 65
	.type	.L.env.buf.13, %object
.L.env.buf.13:
	.zero	65
	.size	.L.env.buf.13, 65
	.type	.L.env.buf.14, %object
.L.env.buf.14:
	.zero	65
	.size	.L.env.buf.14, 65
	.type	.L.env.buf.15, %object
.L.env.buf.15:
	.zero	65
	.size	.L.env.buf.15, 65
	.type	.L.env.buf.16, %object
.L.env.buf.16:
	.zero	65
	.size	.L.env.buf.16, 65
	.type	.L.env.buf.17, %object
.L.env.buf.17:
	.zero	65
	.size	.L.env.buf.17, 65
	.type	.L.env.buf.18, %object
.L.env.buf.18:
	.zero	65
	.size	.L.env.buf.18, 65
	.type	.L.env.buf.19, %object
.L.env.buf.19:
	.zero	65
	.size	.L.env.buf.19, 65
	.type	.L.env.buf.20, %object
.L.env.buf.20:
	.zero	65
	.size	.L.env.buf.20, 65
	.type	.L.env.buf.21, %object
.L.env.buf.21:
	.zero	65
	.size	.L.env.buf.21, 65
	.type	.L.env.buf.22, %object
.L.env.buf.22:
	.zero	65
	.size	.L.env.buf.22, 65
	.type	.L.env.buf.23, %object
.L.env.buf.23:
	.zero	65
	.size	.L.env.buf.23, 65
	.type	.L.env.buf.24, %object
.L.env.buf.24:
	.zero	65
	.size	.L.env.buf.24, 65
	.type	.L.env.buf.25, %object
.L.env.buf.25:
	.zero	65
	.size	.L.env.buf.25, 65
	.type	.L.env.buf.26, %object
.L.env.buf.26:
	.zero	65
	.size	.L.env.buf.26, 65
	.type	.L.env.buf.27, %object
.L.env.buf.27:
	.zero	65
	.size	.L.env.buf.27, 65
	.type	.L.env.buf.28, %object
.L.env.buf.28:
	.zero	65
	.size	.L.env.buf.28, 65
	.type	.L.env.buf.29, %object
.L.env.buf.29:
	.zero	65
	.size	.L.env.buf.29, 65
	.type	.L.env.buf.30, %object
.L.env.buf.30:
	.zero	65
	.size	.L.env.buf.30, 65
	.type	.L.env.buf.31, %object
.L.env.buf.31:
	.zero	65
	.size	.L.env.buf.31, 65
	.type	.L.env.buf.32, %object
.L.env.buf.32:
	.zero	65
	.size	.L.env.buf.32, 65
	.type	.L.env.buf.33, %object
.L.env.buf.33:
	.zero	65
	.size	.L.env.buf.33, 65
	.type	.L.env.buf.34, %object
.L.env.buf.34:
	.zero	65
	.size	.L.env.buf.34, 65
	.type	.L.env.buf.35, %object
.L.env.buf.35:
	.zero	65
	.size	.L.env.buf.35, 65
	.type	.L.env.buf.36, %object
.L.env.buf.36:
	.zero	65
	.size	.L.env.buf.36, 65
	.type	.L.env.buf.37, %object
.L.env.buf.37:
	.zero	65
	.size	.L.env.buf.37, 65
	.type	.L.env.buf.38, %object
.L.env.buf.38:
	.zero	65
	.size	.L.env.buf.38, 65
	.type	.L.env.buf.39, %object
.L.env.buf.39:
	.zero	65
	.size	.L.env.buf.39, 65
	.type	.L.env.buf.40, %object
.L.env.buf.40:
	.zero	65
	.size	.L.env.buf.40, 65
	.type	.L.env.buf.41, %object
.L.env.buf.41:
	.zero	65
	.size	.L.env.buf.41, 65
	.type	.L.env.buf.42, %object
.L.env.buf.42:
	.zero	65
	.size	.L.env.buf.42, 65
	.type	.L.env.buf.43, %object
.L.env.buf.43:
	.zero	65
	.size	.L.env.buf.43, 65
	.type	.L.env.buf.44, %object
.L.env.buf.44:
	.zero	65
	.size	.L.env.buf.44, 65
	.type	.L.env.buf.45, %object
.L.env.buf.45:
	.zero	65
	.size	.L.env.buf.45, 65
	.type	.L.env.buf.46, %object
.L.env.buf.46:
	.zero	65
	.size	.L.env.buf.46, 65
	.type	.L.env.buf.47, %object
.L.env.buf.47:
	.zero	65
	.size	.L.env.buf.47, 65
	.type	.L.env.buf.48, %object
.L.env.buf.48:
	.zero	65
	.size	.L.env.buf.48, 65
	.type	.L.env.buf.49, %object
.L.env.buf.49:
	.zero	65
	.size	.L.env.buf.49, 65
	.type	.L.env.buf.50, %object
.L.env.buf.50:
	.zero	65
	.size	.L.env.buf.50, 65
	.type	.L.env.buf.51, %object
.L.env.buf.51:
	.zero	65
	.size	.L.env.buf.51, 65
	.type	.L.env.buf.52, %object
.L.env.buf.52:
	.zero	65
	.size	.L.env.buf.52, 65
	.type	.L.env.buf.53, %object
.L.env.buf.53:
	.zero	65
	.size	.L.env.buf.53, 65
	.type	.L.env.buf.54, %object
.L.env.buf.54:
	.zero	65
	.size	.L.env.buf.54, 65
	.type	.L.env.buf.55, %object
.L.env.buf.55:
	.zero	65
	.size	.L.env.buf.55, 65
	.type	.L.env.buf.56, %object
.L.env.buf.56:
	.zero	65
	.size	.L.env.buf.56, 65
	.type	.L.env.buf.57, %object
.L.env.buf.57:
	.zero	65
	.size	.L.env.buf.57, 65
	.type	.L.env.buf.58, %object
.L.env.buf.58:
	.zero	65
	.size	.L.env.buf.58, 65
	.type	.L.env.buf.59, %object
.L.env.buf.59:
	.zero	65
	.size	.L.env.buf.59, 65
	.type	.L.env.buf.60, %object
.L.env.buf.60:
	.zero	65
	.size	.L.env.buf.60, 65
	.type	.L.env.buf.61, %object
.L.env.buf.61:
	.zero	65
	.size	.L.env.buf.61, 65
	.type	.L.env.buf.62, %object
.L.env.buf.62:
	.zero	65
	.size	.L.env.buf.62, 65
	.type	.L.env.buf.63, %object
.L.env.buf.63:
	.zero	65
	.size	.L.env.buf.63, 65
	.type	.L.env.buf.64, %object
.L.env.buf.64:
	.zero	65
	.size	.L.env.buf.64, 65
	.type	.L.env.buf.65, %object
.L.env.buf.65:
	.zero	65
	.size	.L.env.buf.65, 65
	.type	.L.env.buf.66, %object
.L.env.buf.66:
	.zero	65
	.size	.L.env.buf.66, 65
	.type	.L.env.buf.67, %object
.L.env.buf.67:
	.zero	65
	.size	.L.env.buf.67, 65
	.type	.L.env.buf.68, %object
.L.env.buf.68:
	.zero	65
	.size	.L.env.buf.68, 65
	.type	.L.env.buf.69, %object
.L.env.buf.69:
	.zero	65
	.size	.L.env.buf.69, 65
	.type	.L.env.buf.70, %object
.L.env.buf.70:
	.zero	65
	.size	.L.env.buf.70, 65
	.type	.L.env.buf.71, %object
.L.env.buf.71:
	.zero	65
	.size	.L.env.buf.71, 65
	.type	.L.env.buf.72, %object
.L.env.buf.72:
	.zero	65
	.size	.L.env.buf.72, 65
	.type	.L.env.buf.73, %object
.L.env.buf.73:
	.zero	65
	.size	.L.env.buf.73, 65
	.type	.L.env.buf.74, %object
.L.env.buf.74:
	.zero	65
	.size	.L.env.buf.74, 65
	.type	.L.env.buf.75, %object
.L.env.buf.75:
	.zero	65
	.size	.L.env.buf.75, 65
	.type	.L.env.buf.76, %object
.L.env.buf.76:
	.zero	65
	.size	.L.env.buf.76, 65
	.type	.L.env.buf.77, %object
.L.env.buf.77:
	.zero	65
	.size	.L.env.buf.77, 65
	.type	.L.env.buf.78, %object
.L.env.buf.78:
	.zero	65
	.size	.L.env.buf.78, 65
	.type	.L.env.buf.79, %object
.L.env.buf.79:
	.zero	65
	.size	.L.env.buf.79, 65
	.type	.L.env.buf.80, %object
.L.env.buf.80:
	.zero	65
	.size	.L.env.buf.80, 65
	.type	.L.env.buf.81, %object
.L.env.buf.81:
	.zero	65
	.size	.L.env.buf.81, 65
	.type	.L.env.buf.82, %object
.L.env.buf.82:
	.zero	65
	.size	.L.env.buf.82, 65
	.type	.L.env.buf.83, %object
.L.env.buf.83:
	.zero	65
	.size	.L.env.buf.83, 65
	.type	.L.env.buf.84, %object
.L.env.buf.84:
	.zero	65
	.size	.L.env.buf.84, 65
	.type	.L.env.buf.85, %object
.L.env.buf.85:
	.zero	65
	.size	.L.env.buf.85, 65
	@ Bundled assemblies data

	.type	bundled_assemblies, %object
	.global	bundled_assemblies

	.section	.data, "aw", %progbits
	.p2align	2
bundled_assemblies:
	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.0	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.1	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.2	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.3	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.4	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.5	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.6	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.7	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.8	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.9	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.10	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.11	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.12	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.13	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.14	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.15	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.16	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.17	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.18	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.19	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.20	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.21	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.22	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.23	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.24	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.25	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.26	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.27	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.28	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.29	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.30	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.31	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.32	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.33	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.34	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.35	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.36	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.37	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.38	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.39	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.40	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.41	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.42	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.43	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.44	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.45	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.46	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.47	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.48	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.49	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.50	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.51	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.52	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.53	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.54	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.55	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.56	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.57	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.58	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.59	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.60	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.61	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.62	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.63	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.64	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.65	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.66	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.67	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.68	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.69	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.70	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.71	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.72	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.73	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.74	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.75	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.76	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.77	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.78	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.79	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.80	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.81	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.82	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.83	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.84	@ name

	.long	0xffffffff	@ apk_fd
	.long	0x0	@ data_offset
	.long	0x0	@ data_size
	.long	0x0	@ data
	.long	0x0	@ name_length
	.long	.L.env.buf.85	@ name

	.size	bundled_assemblies, 2064
	@ Assembly store individual assembly data
	.type	assembly_store_bundled_assemblies, %object
	.global	assembly_store_bundled_assemblies
assembly_store_bundled_assemblies:
	.size	assembly_store_bundled_assemblies, 0
	@ Assembly store data
	.type	assembly_stores, %object
	.global	assembly_stores
assembly_stores:
	.size	assembly_stores, 0

	.type	dso_cache, %object
	.global	dso_cache

	.section	.data, "aw", %progbits
	.p2align	3
dso_cache:
	.long	0x5e00610	@ hash, from name: libxamarin-debug-app-helper.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.13	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x800e5cb	@ hash, from name: libmono-profiler-log.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.14	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0xdaac0a4	@ hash, from name: monodroid.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.15	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0x13c9bd62	@ hash, from name: xa-internal-api
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.16	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0x2a81d481	@ hash, from name: libxamarin-debug-app-helper
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.17	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x2c9b28d2	@ hash, from name: monodroid
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.18	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0x336c8e2e	@ hash, from name: xa-internal-api.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.19	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0x4d3b9c27	@ hash, from name: mono-btls-shared
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.20	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0x4fff05c3	@ hash, from name: mono-native
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.21	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0x5a5d38a3	@ hash, from name: xamarin-debug-app-helper.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.22	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x63dbfd2d	@ hash, from name: e_sqlite3
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.23	@ name: libe_sqlite3.so
	.long	0x0	@ handle
	.zero	4

	.long	0x6bede289	@ hash, from name: mono-profiler-log.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.24	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0x7b8f6fc3	@ hash, from name: mono-native.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.25	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0x84e63f2e	@ hash, from name: xamarin-debug-app-helper
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.26	@ name: libxamarin-debug-app-helper.so
	.long	0x0	@ handle
	.zero	4

	.long	0x94c7a87b	@ hash, from name: libmonosgen-2.0
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.27	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.long	0x96dfaec4	@ hash, from name: libmono-native
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.28	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0x9e770032	@ hash, from name: monosgen-2.0.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.29	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.long	0xa97e926a	@ hash, from name: libxa-internal-api.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.30	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0xaaa0f888	@ hash, from name: e_sqlite3.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.31	@ name: libe_sqlite3.so
	.long	0x0	@ handle
	.zero	4

	.long	0xabce7529	@ hash, from name: libmono-profiler-log
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.32	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0xb631a731	@ hash, from name: libmono-native.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.33	@ name: libmono-native.so
	.long	0x0	@ handle
	.zero	4

	.long	0xc60479f4	@ hash, from name: libmono-btls-shared
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.34	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0xcbfba5ef	@ hash, from name: libmonodroid.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.35	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0xd4e925c9	@ hash, from name: libxa-internal-api
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.36	@ name: libxa-internal-api.so
	.long	0x0	@ handle
	.zero	4

	.long	0xd7487663	@ hash, from name: mono-profiler-log
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.37	@ name: libmono-profiler-log.so
	.long	0x0	@ handle
	.zero	4

	.long	0xd8bef4d7	@ hash, from name: libmonodroid
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.38	@ name: libmonodroid.so
	.long	0x0	@ handle
	.zero	4

	.long	0xdb3258f7	@ hash, from name: libe_sqlite3
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.39	@ name: libe_sqlite3.so
	.long	0x0	@ handle
	.zero	4

	.long	0xdd142f40	@ hash, from name: libmono-btls-shared.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.40	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0xdeed9f74	@ hash, from name: libe_sqlite3.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.41	@ name: libe_sqlite3.so
	.long	0x0	@ handle
	.zero	4

	.long	0xe1ed3ce0	@ hash, from name: monosgen-2.0
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.42	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.long	0xe25326ee	@ hash, from name: mono-btls-shared.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.43	@ name: libmono-btls-shared.so
	.long	0x0	@ handle
	.zero	4

	.long	0xe391d1b5	@ hash, from name: libmonosgen-2.0.so
	.long	0x0
	.byte	0x0	@ ignore
	.zero	3
	.long	.L.autostr.44	@ name: libmonosgen-2.0.so
	.long	0x0	@ handle
	.zero	4

	.size	dso_cache, 768

	@
	@ Generated from instance of: Xamarin.Android.Tasks.ApplicationConfig, Xamarin.Android.Build.Tasks, Version=12.3.3.31, Culture=neutral, PublicKeyToken=84e04ff9cfb79065
	@
	.type	application_config, %object
	.global	application_config

	.section	.data, "aw", %progbits
	.p2align	2
application_config:
	.byte	0x0	@ uses_mono_llvm
	.byte	0x0	@ uses_mono_aot
	.byte	0x1	@ uses_assembly_preload
	.byte	0x0	@ is_a_bundled_app
	.byte	0x0	@ broken_exception_transitions
	.byte	0x0	@ instant_run_enabled
	.byte	0x0	@ jni_add_native_method_registration_attribute_present
	.byte	0x0	@ have_runtime_config_blob
	.byte	0x0	@ have_assemblies_blob
	.byte	0x1	@ bound_stream_io_exception_type
	.zero	2
	.long	0x3	@ package_naming_policy
	.long	0xc	@ environment_variable_count
	.long	0x0	@ system_property_count
	.long	0x56	@ number_of_assemblies_in_apk
	.long	0x41	@ bundled_assembly_name_width
	.long	0x2	@ number_of_assembly_store_files
	.long	0x20	@ number_of_dso_cache_entries
	.long	0x0	@ mono_components_mask
	.long	.L.autostr.45	@ android_package_name
	.size	application_config, 48


	.section	.rodata.autostr, "aMS", %progbits, 1
	.type	.L.autostr.0, %object
.L.autostr.0:
	.asciz	"none"
	.size	.L.autostr.0, 5

	.type	.L.autostr.1, %object
.L.autostr.1:
	.asciz	"MONO_GC_PARAMS"
	.size	.L.autostr.1, 15

	.type	.L.autostr.2, %object
.L.autostr.2:
	.asciz	"major=marksweep-conc"
	.size	.L.autostr.2, 21

	.type	.L.autostr.3, %object
.L.autostr.3:
	.asciz	"MONO_LOG_LEVEL"
	.size	.L.autostr.3, 15

	.type	.L.autostr.4, %object
.L.autostr.4:
	.asciz	"info"
	.size	.L.autostr.4, 5

	.type	.L.autostr.5, %object
.L.autostr.5:
	.asciz	"XAMARIN_BUILD_ID"
	.size	.L.autostr.5, 17

	.type	.L.autostr.6, %object
.L.autostr.6:
	.asciz	"c32528ba-32aa-4ba7-b80d-79ab0bea9a0f"
	.size	.L.autostr.6, 37

	.type	.L.autostr.7, %object
.L.autostr.7:
	.asciz	"XA_HTTP_CLIENT_HANDLER_TYPE"
	.size	.L.autostr.7, 28

	.type	.L.autostr.8, %object
.L.autostr.8:
	.asciz	"Xamarin.Android.Net.AndroidClientHandler"
	.size	.L.autostr.8, 41

	.type	.L.autostr.9, %object
.L.autostr.9:
	.asciz	"XA_TLS_PROVIDER"
	.size	.L.autostr.9, 16

	.type	.L.autostr.10, %object
.L.autostr.10:
	.asciz	"btls"
	.size	.L.autostr.10, 5

	.type	.L.autostr.11, %object
.L.autostr.11:
	.asciz	"__XA_PACKAGE_NAMING_POLICY__"
	.size	.L.autostr.11, 29

	.type	.L.autostr.12, %object
.L.autostr.12:
	.asciz	"LowercaseCrc64"
	.size	.L.autostr.12, 15

	.type	.L.autostr.13, %object
.L.autostr.13:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.13, 31

	.type	.L.autostr.14, %object
.L.autostr.14:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.14, 24

	.type	.L.autostr.15, %object
.L.autostr.15:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.15, 16

	.type	.L.autostr.16, %object
.L.autostr.16:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.16, 22

	.type	.L.autostr.17, %object
.L.autostr.17:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.17, 31

	.type	.L.autostr.18, %object
.L.autostr.18:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.18, 16

	.type	.L.autostr.19, %object
.L.autostr.19:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.19, 22

	.type	.L.autostr.20, %object
.L.autostr.20:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.20, 23

	.type	.L.autostr.21, %object
.L.autostr.21:
	.asciz	"libmono-native.so"
	.size	.L.autostr.21, 18

	.type	.L.autostr.22, %object
.L.autostr.22:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.22, 31

	.type	.L.autostr.23, %object
.L.autostr.23:
	.asciz	"libe_sqlite3.so"
	.size	.L.autostr.23, 16

	.type	.L.autostr.24, %object
.L.autostr.24:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.24, 24

	.type	.L.autostr.25, %object
.L.autostr.25:
	.asciz	"libmono-native.so"
	.size	.L.autostr.25, 18

	.type	.L.autostr.26, %object
.L.autostr.26:
	.asciz	"libxamarin-debug-app-helper.so"
	.size	.L.autostr.26, 31

	.type	.L.autostr.27, %object
.L.autostr.27:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.27, 19

	.type	.L.autostr.28, %object
.L.autostr.28:
	.asciz	"libmono-native.so"
	.size	.L.autostr.28, 18

	.type	.L.autostr.29, %object
.L.autostr.29:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.29, 19

	.type	.L.autostr.30, %object
.L.autostr.30:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.30, 22

	.type	.L.autostr.31, %object
.L.autostr.31:
	.asciz	"libe_sqlite3.so"
	.size	.L.autostr.31, 16

	.type	.L.autostr.32, %object
.L.autostr.32:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.32, 24

	.type	.L.autostr.33, %object
.L.autostr.33:
	.asciz	"libmono-native.so"
	.size	.L.autostr.33, 18

	.type	.L.autostr.34, %object
.L.autostr.34:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.34, 23

	.type	.L.autostr.35, %object
.L.autostr.35:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.35, 16

	.type	.L.autostr.36, %object
.L.autostr.36:
	.asciz	"libxa-internal-api.so"
	.size	.L.autostr.36, 22

	.type	.L.autostr.37, %object
.L.autostr.37:
	.asciz	"libmono-profiler-log.so"
	.size	.L.autostr.37, 24

	.type	.L.autostr.38, %object
.L.autostr.38:
	.asciz	"libmonodroid.so"
	.size	.L.autostr.38, 16

	.type	.L.autostr.39, %object
.L.autostr.39:
	.asciz	"libe_sqlite3.so"
	.size	.L.autostr.39, 16

	.type	.L.autostr.40, %object
.L.autostr.40:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.40, 23

	.type	.L.autostr.41, %object
.L.autostr.41:
	.asciz	"libe_sqlite3.so"
	.size	.L.autostr.41, 16

	.type	.L.autostr.42, %object
.L.autostr.42:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.42, 19

	.type	.L.autostr.43, %object
.L.autostr.43:
	.asciz	"libmono-btls-shared.so"
	.size	.L.autostr.43, 23

	.type	.L.autostr.44, %object
.L.autostr.44:
	.asciz	"libmonosgen-2.0.so"
	.size	.L.autostr.44, 19

	.type	.L.autostr.45, %object
.L.autostr.45:
	.asciz	"com.companyname.App45W"
	.size	.L.autostr.45, 23


	.ident	"Xamarin.Android remotes/origin/d17-2 @ 4e061b739747f624ccb03c98940d8900548a98ad"

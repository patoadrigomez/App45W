	.file	"obj\Release\90\android\typemaps.x86.s"

	# map_module_count: START

	.section	.rodata.map_module_count, "a", @progbits
	.type	map_module_count, @object
	.global	map_module_count
	.p2align	2
map_module_count:
	.long	23
	.size	map_module_count, 4
	# map_module_count: END

	# java_type_count: START

	.section	.rodata.java_type_count, "a", @progbits
	.type	java_type_count, @object
	.global	java_type_count
	.p2align	2
java_type_count:
	.long	964
	.size	java_type_count, 4
	# java_type_count: END

	# java_name_width: START

	.section	.rodata.java_name_width, "a", @progbits
	.type	java_name_width, @object
	.global	java_name_width
	.p2align	2
java_name_width:
	.long	102
	.size	java_name_width, 4
	# java_name_width: END
	.include	"typemaps.shared.inc"

	.include	"typemaps.x86-managed.inc"

	# Managed to Java map: START

	.section	.data.rel.map_modules, "aw", @progbits

	.type	map_modules, @object
	.global	map_modules
	.p2align	2
map_modules:
	.byte	0x1d, 0xa4, 0x57, 0x49, 0x26, 0x8f, 0x12, 0x46, 0x87, 0x4e, 0x23, 0x5d, 0x43, 0x5e, 0xdb, 0xc3	# module_uuid: 4957a41d-8f26-4612-874e-235d435edbc3
	.long	0x2	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module0_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.0	# assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x27, 0xa, 0xec, 0x7d, 0x7a, 0xe0, 0xca, 0x45, 0xb1, 0x66, 0x9f, 0x37, 0x9, 0x0, 0x88, 0x9c	# module_uuid: 7dec0a27-e07a-45ca-b166-9f370900889c
	.long	0x2f	# entry_count
	.long	0x4	# duplicate_count
	.long	.L.module1_managed_to_java	# map
	.long	.L.module1_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.1	# assembly_name: Xamarin.Android.Support.v7.AppCompat
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x28, 0x15, 0xa2, 0x79, 0xbd, 0x15, 0x45, 0x4d, 0xa1, 0x31, 0x76, 0x71, 0x80, 0xe8, 0x61, 0x7d	# module_uuid: 79a21528-15bd-4d45-a131-767180e8617d
	.long	0x1	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module2_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.2	# assembly_name: Xamarin.Essentials
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x28, 0xc0, 0x4, 0x86, 0x9f, 0x5, 0xcf, 0x4b, 0x80, 0x84, 0x8b, 0xd, 0x63, 0x24, 0xfd, 0x31	# module_uuid: 8604c028-059f-4bcf-8084-8b0d6324fd31
	.long	0x2	# entry_count
	.long	0x1	# duplicate_count
	.long	.L.module3_managed_to_java	# map
	.long	.L.module3_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.3	# assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x31, 0x90, 0x57, 0x8e, 0xb7, 0x7f, 0x8a, 0x46, 0xb4, 0xf1, 0x5c, 0xb2, 0x86, 0xad, 0xe2, 0xa3	# module_uuid: 8e579031-7fb7-468a-b4f1-5cb286ade2a3
	.long	0xd1	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module4_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.4	# assembly_name: Xamarin.Forms.Platform.Android
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x37, 0x55, 0xb, 0x93, 0x9b, 0xcb, 0xca, 0x41, 0x84, 0x47, 0x8e, 0x5e, 0xc9, 0xa0, 0xf8, 0x41	# module_uuid: 930b5537-cb9b-41ca-8447-8e5ec9a0f841
	.long	0x1	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module5_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.5	# assembly_name: Xamarin.Android.Support.v7.CardView
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x38, 0x3c, 0xf3, 0xdc, 0x91, 0xde, 0x1c, 0x48, 0x90, 0x7d, 0xec, 0x31, 0xe1, 0xeb, 0x4c, 0x29	# module_uuid: dcf33c38-de91-481c-907d-ec31e1eb4c29
	.long	0x18	# entry_count
	.long	0x1	# duplicate_count
	.long	.L.module6_managed_to_java	# map
	.long	.L.module6_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.6	# assembly_name: DataCollectionLib
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x3a, 0x7, 0x11, 0x2f, 0xf6, 0xd9, 0x70, 0x40, 0x8c, 0x1, 0x96, 0x7b, 0x75, 0x34, 0xf7, 0x72	# module_uuid: 2f11073a-d9f6-4070-8c01-967b7534f772
	.long	0x2b	# entry_count
	.long	0xe	# duplicate_count
	.long	.L.module7_managed_to_java	# map
	.long	.L.module7_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.7	# assembly_name: Xamarin.Android.Support.v7.RecyclerView
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x4d, 0x20, 0xd4, 0x8f, 0xac, 0x89, 0xc9, 0x4b, 0xb5, 0xe8, 0xeb, 0x90, 0x58, 0x8f, 0x41, 0x4b	# module_uuid: 8fd4204d-89ac-4bc9-b5e8-eb90588f414b
	.long	0x1	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module8_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.8	# assembly_name: App45W.Android
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x5e, 0x2, 0xa8, 0x6b, 0xe5, 0x51, 0xaa, 0x4f, 0x81, 0x4f, 0xba, 0x12, 0x7c, 0xda, 0x80, 0xdf	# module_uuid: 6ba8025e-51e5-4faa-814f-ba127cda80df
	.long	0x5	# entry_count
	.long	0x1	# duplicate_count
	.long	.L.module9_managed_to_java	# map
	.long	.L.module9_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.9	# assembly_name: Xamarin.Android.Support.Loader
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x6c, 0x58, 0xe4, 0x4e, 0x57, 0x3, 0x6f, 0x43, 0x80, 0x74, 0xf4, 0xf1, 0x2a, 0x56, 0xc5, 0xa3	# module_uuid: 4ee4586c-0357-436f-8074-f4f12a56c5a3
	.long	0x2	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module10_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.10	# assembly_name: FormsViewGroup
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x71, 0x8, 0x4d, 0xe6, 0xf2, 0xef, 0xee, 0x44, 0xbb, 0x42, 0x43, 0xd2, 0xc3, 0xfc, 0x28, 0xfa	# module_uuid: e64d0871-eff2-44ee-bb42-43d2c3fc28fa
	.long	0x1	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module11_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.11	# assembly_name: Xamarin.Android.Support.Core.UI
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x8d, 0x2b, 0x6c, 0xf3, 0x25, 0x75, 0x72, 0x4b, 0xa1, 0xe5, 0xdb, 0x10, 0xc0, 0xab, 0xd8, 0x88	# module_uuid: f36c2b8d-7525-4b72-a1e5-db10c0abd888
	.long	0x36	# entry_count
	.long	0x2	# duplicate_count
	.long	.L.module12_managed_to_java	# map
	.long	.L.module12_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.12	# assembly_name: Xamarin.Android.Support.Compat
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x91, 0xb5, 0xf9, 0xb5, 0xdb, 0x5e, 0x3b, 0x49, 0x83, 0xe2, 0xbd, 0x9d, 0xab, 0x69, 0xb6, 0xaf	# module_uuid: b5f9b591-5edb-493b-83e2-bd9dab69b6af
	.long	0x1f6	# entry_count
	.long	0xe8	# duplicate_count
	.long	.L.module13_managed_to_java	# map
	.long	.L.module13_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.13	# assembly_name: Mono.Android
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0x97, 0x8b, 0x36, 0x13, 0x9b, 0x9a, 0x1d, 0x47, 0xb7, 0x10, 0x2b, 0x4a, 0xd6, 0x6f, 0xa6, 0x86	# module_uuid: 13368b97-9a9b-471d-b710-2b4ad66fa686
	.long	0x7	# entry_count
	.long	0x1	# duplicate_count
	.long	.L.module14_managed_to_java	# map
	.long	.L.module14_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.14	# assembly_name: Xamarin.Android.Support.ViewPager
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xab, 0x2c, 0x4, 0x27, 0x99, 0xae, 0x28, 0x43, 0xb2, 0x7d, 0xdc, 0x5f, 0x6, 0x86, 0xa, 0xda	# module_uuid: 27042cab-ae99-4328-b27d-dc5f06860ada
	.long	0x3	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module15_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.15	# assembly_name: Honeywell.AIDC.CrossPlatform.BarcodeReader
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xac, 0xcd, 0xaf, 0x47, 0xa5, 0x7e, 0x59, 0x42, 0x86, 0x10, 0x53, 0xcd, 0x39, 0x53, 0x6, 0xbf	# module_uuid: 47afcdac-7ea5-4259-8610-53cd395306bf
	.long	0x3	# entry_count
	.long	0x1	# duplicate_count
	.long	.L.module16_managed_to_java	# map
	.long	.L.module16_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.16	# assembly_name: Xamarin.Android.Support.CoordinaterLayout
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xd3, 0xd2, 0x3c, 0xe4, 0xb0, 0x3e, 0x49, 0x47, 0x8a, 0x89, 0x4, 0xfe, 0xc5, 0x99, 0xc5, 0xa	# module_uuid: e43cd2d3-3eb0-4749-8a89-04fec599c50a
	.long	0x4	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module17_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.17	# assembly_name: Xamarin.Android.Support.SwipeRefreshLayout
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xda, 0xad, 0x46, 0xb6, 0x19, 0x82, 0x2f, 0x49, 0xac, 0xfd, 0x54, 0x95, 0x77, 0x66, 0x56, 0x30	# module_uuid: b646adda-8219-492f-acfd-549577665630
	.long	0x1f	# entry_count
	.long	0x3	# duplicate_count
	.long	.L.module18_managed_to_java	# map
	.long	.L.module18_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.18	# assembly_name: Xamarin.Android.Support.Design
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xe3, 0x0, 0x8, 0xe2, 0xa, 0x54, 0x26, 0x4a, 0xbd, 0x9d, 0x35, 0xbe, 0x9, 0x5a, 0x83, 0x29	# module_uuid: e20800e3-540a-4a26-bd9d-35be095a8329
	.long	0x4	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module19_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.19	# assembly_name: Toasts.Forms.Plugin.Droid
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xe3, 0x98, 0x7d, 0x9c, 0xc7, 0xea, 0xa9, 0x4b, 0x9d, 0xc3, 0x94, 0x1e, 0x53, 0x86, 0x8a, 0xc9	# module_uuid: 9c7d98e3-eac7-4ba9-9dc3-941e53868ac9
	.long	0xa	# entry_count
	.long	0x4	# duplicate_count
	.long	.L.module20_managed_to_java	# map
	.long	.L.module20_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.20	# assembly_name: Xamarin.Android.Support.Fragment
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xee, 0x14, 0x85, 0xbb, 0x73, 0xec, 0xe1, 0x4e, 0x8f, 0xc2, 0xe5, 0xfa, 0xd0, 0x8b, 0x3a, 0x8c	# module_uuid: bb8514ee-ec73-4ee1-8fc2-e5fad08b3a8c
	.long	0x4	# entry_count
	.long	0x0	# duplicate_count
	.long	.L.module21_managed_to_java	# map
	.long	0	# duplicate_map
	.long	map_aname.21	# assembly_name: Xamarin.Android.Support.DrawerLayout
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.byte	0xf9, 0x1a, 0x8a, 0x12, 0x53, 0xc1, 0xe4, 0x42, 0xb3, 0xea, 0x5, 0x53, 0xb0, 0xf8, 0x55, 0x51	# module_uuid: 128a1af9-c153-42e4-b3ea-0553b0f85551
	.long	0x4	# entry_count
	.long	0x1	# duplicate_count
	.long	.L.module22_managed_to_java	# map
	.long	.L.module22_managed_to_java_duplicates	# duplicate_map
	.long	map_aname.22	# assembly_name: Xamarin.Android.Arch.Lifecycle.Common
	.long	0x0	# image
	.long	0x0	# java_name_width
	.long	0x0	# java_map

	.size	map_modules, 1104
	# Managed to Java map: END

	# Java to managed map: START

	.section	.rodata.map_java, "a", @progbits

	.type	map_java, @object
	.global	map_java
	.p2align	2
map_java:
	.long	0xd	# module_index
	.long	0x20002d8	# type_token_id
	.ascii	"android/animation/Animator"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/animation/Animator$AnimatorListener"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/animation/Animator$AnimatorPauseListener"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002e6	# type_token_id
	.ascii	"android/animation/AnimatorListenerAdapter"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/animation/TimeInterpolator"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002de	# type_token_id
	.ascii	"android/animation/ValueAnimator"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/animation/ValueAnimator$AnimatorUpdateListener"	# java_name
	.zero	48	# byteCount == 54; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002eb	# type_token_id
	.ascii	"android/app/ActionBar"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002ed	# type_token_id
	.ascii	"android/app/ActionBar$Tab"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/app/ActionBar$TabListener"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002f2	# type_token_id
	.ascii	"android/app/Activity"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002f3	# type_token_id
	.ascii	"android/app/AlarmManager"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002f4	# type_token_id
	.ascii	"android/app/AlertDialog"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002f5	# type_token_id
	.ascii	"android/app/AlertDialog$Builder"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002f6	# type_token_id
	.ascii	"android/app/Application"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002f9	# type_token_id
	.ascii	"android/app/DatePickerDialog"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/app/DatePickerDialog$OnDateSetListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002fe	# type_token_id
	.ascii	"android/app/Dialog"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000312	# type_token_id
	.ascii	"android/app/FragmentTransaction"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000303	# type_token_id
	.ascii	"android/app/Notification"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000304	# type_token_id
	.ascii	"android/app/Notification$Builder"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000314	# type_token_id
	.ascii	"android/app/NotificationChannel"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000305	# type_token_id
	.ascii	"android/app/NotificationManager"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000317	# type_token_id
	.ascii	"android/app/PendingIntent"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000309	# type_token_id
	.ascii	"android/app/TimePickerDialog"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/app/TimePickerDialog$OnTimeSetListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200030c	# type_token_id
	.ascii	"android/app/UiModeManager"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x16	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/arch/lifecycle/Lifecycle"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x16	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/arch/lifecycle/Lifecycle$State"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x16	# module_index
	.long	0x2000005	# type_token_id
	.ascii	"android/arch/lifecycle/LifecycleObserver"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x16	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"android/arch/lifecycle/LifecycleOwner"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x3	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/arch/lifecycle/LiveData"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x3	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/arch/lifecycle/Observer"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x0	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/arch/lifecycle/ViewModelStore"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x0	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200031e	# type_token_id
	.ascii	"android/content/BroadcastReceiver"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000320	# type_token_id
	.ascii	"android/content/ClipData"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000321	# type_token_id
	.ascii	"android/content/ClipData$Item"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/ComponentCallbacks"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/ComponentCallbacks2"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000322	# type_token_id
	.ascii	"android/content/ComponentName"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000323	# type_token_id
	.ascii	"android/content/ContentResolver"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200031b	# type_token_id
	.ascii	"android/content/Context"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000326	# type_token_id
	.ascii	"android/content/ContextWrapper"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/DialogInterface"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/DialogInterface$OnCancelListener"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/DialogInterface$OnClickListener"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/DialogInterface$OnDismissListener"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/DialogInterface$OnKeyListener"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/DialogInterface$OnMultiChoiceClickListener"	# java_name
	.zero	44	# byteCount == 58; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200031c	# type_token_id
	.ascii	"android/content/Intent"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200033d	# type_token_id
	.ascii	"android/content/IntentFilter"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200033e	# type_token_id
	.ascii	"android/content/IntentSender"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/SharedPreferences"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/SharedPreferences$Editor"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000346	# type_token_id
	.ascii	"android/content/pm/ApplicationInfo"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000349	# type_token_id
	.ascii	"android/content/pm/PackageInfo"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200034b	# type_token_id
	.ascii	"android/content/pm/PackageItemInfo"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200034c	# type_token_id
	.ascii	"android/content/pm/PackageManager"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000350	# type_token_id
	.ascii	"android/content/res/AssetManager"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000351	# type_token_id
	.ascii	"android/content/res/ColorStateList"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000352	# type_token_id
	.ascii	"android/content/res/Configuration"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000355	# type_token_id
	.ascii	"android/content/res/Resources"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000356	# type_token_id
	.ascii	"android/content/res/Resources$Theme"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000357	# type_token_id
	.ascii	"android/content/res/TypedArray"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/content/res/XmlResourceParser"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000f2	# type_token_id
	.ascii	"android/database/CharArrayBuffer"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000f3	# type_token_id
	.ascii	"android/database/ContentObserver"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/database/Cursor"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000f5	# type_token_id
	.ascii	"android/database/DataSetObserver"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200028c	# type_token_id
	.ascii	"android/graphics/Bitmap"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200028d	# type_token_id
	.ascii	"android/graphics/Bitmap$Config"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000291	# type_token_id
	.ascii	"android/graphics/BitmapFactory"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000292	# type_token_id
	.ascii	"android/graphics/BitmapFactory$Options"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200028e	# type_token_id
	.ascii	"android/graphics/Canvas"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000299	# type_token_id
	.ascii	"android/graphics/Color"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000298	# type_token_id
	.ascii	"android/graphics/ColorFilter"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200029a	# type_token_id
	.ascii	"android/graphics/DashPathEffect"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200029c	# type_token_id
	.ascii	"android/graphics/LinearGradient"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200029d	# type_token_id
	.ascii	"android/graphics/Matrix"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200029e	# type_token_id
	.ascii	"android/graphics/Matrix$ScaleToFit"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200029f	# type_token_id
	.ascii	"android/graphics/Paint"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a0	# type_token_id
	.ascii	"android/graphics/Paint$Align"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a1	# type_token_id
	.ascii	"android/graphics/Paint$Cap"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a2	# type_token_id
	.ascii	"android/graphics/Paint$FontMetricsInt"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a3	# type_token_id
	.ascii	"android/graphics/Paint$Join"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a4	# type_token_id
	.ascii	"android/graphics/Paint$Style"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a6	# type_token_id
	.ascii	"android/graphics/Path"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a7	# type_token_id
	.ascii	"android/graphics/Path$Direction"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a8	# type_token_id
	.ascii	"android/graphics/Path$FillType"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002a9	# type_token_id
	.ascii	"android/graphics/PathEffect"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002aa	# type_token_id
	.ascii	"android/graphics/Point"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002ab	# type_token_id
	.ascii	"android/graphics/PointF"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002ac	# type_token_id
	.ascii	"android/graphics/PorterDuff"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002ad	# type_token_id
	.ascii	"android/graphics/PorterDuff$Mode"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002ae	# type_token_id
	.ascii	"android/graphics/PorterDuffXfermode"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002af	# type_token_id
	.ascii	"android/graphics/RadialGradient"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002b0	# type_token_id
	.ascii	"android/graphics/Rect"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002b1	# type_token_id
	.ascii	"android/graphics/RectF"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002b2	# type_token_id
	.ascii	"android/graphics/Shader"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002b3	# type_token_id
	.ascii	"android/graphics/Shader$TileMode"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002b4	# type_token_id
	.ascii	"android/graphics/Typeface"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002b6	# type_token_id
	.ascii	"android/graphics/Xfermode"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/graphics/drawable/Animatable"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/graphics/drawable/Animatable2"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002c8	# type_token_id
	.ascii	"android/graphics/drawable/Animatable2$AnimationCallback"	# java_name
	.zero	47	# byteCount == 55; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002be	# type_token_id
	.ascii	"android/graphics/drawable/AnimatedVectorDrawable"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002bf	# type_token_id
	.ascii	"android/graphics/drawable/AnimationDrawable"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002c0	# type_token_id
	.ascii	"android/graphics/drawable/BitmapDrawable"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002c1	# type_token_id
	.ascii	"android/graphics/drawable/ColorDrawable"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002b7	# type_token_id
	.ascii	"android/graphics/drawable/Drawable"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/graphics/drawable/Drawable$Callback"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002ba	# type_token_id
	.ascii	"android/graphics/drawable/Drawable$ConstantState"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002bc	# type_token_id
	.ascii	"android/graphics/drawable/DrawableContainer"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002c3	# type_token_id
	.ascii	"android/graphics/drawable/GradientDrawable"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002c4	# type_token_id
	.ascii	"android/graphics/drawable/GradientDrawable$Orientation"	# java_name
	.zero	48	# byteCount == 54; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002bd	# type_token_id
	.ascii	"android/graphics/drawable/LayerDrawable"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002cc	# type_token_id
	.ascii	"android/graphics/drawable/PaintDrawable"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002cd	# type_token_id
	.ascii	"android/graphics/drawable/RippleDrawable"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002ce	# type_token_id
	.ascii	"android/graphics/drawable/ShapeDrawable"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002cf	# type_token_id
	.ascii	"android/graphics/drawable/ShapeDrawable$ShaderFactory"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002d2	# type_token_id
	.ascii	"android/graphics/drawable/StateListDrawable"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002d3	# type_token_id
	.ascii	"android/graphics/drawable/shapes/OvalShape"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002d4	# type_token_id
	.ascii	"android/graphics/drawable/shapes/PathShape"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002d5	# type_token_id
	.ascii	"android/graphics/drawable/shapes/RectShape"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002d6	# type_token_id
	.ascii	"android/graphics/drawable/shapes/Shape"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000274	# type_token_id
	.ascii	"android/media/MediaMetadataRetriever"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000275	# type_token_id
	.ascii	"android/media/MediaPlayer"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/media/MediaPlayer$OnBufferingUpdateListener"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/media/MediaPlayer$OnCompletionListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/media/MediaPlayer$OnErrorListener"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/media/MediaPlayer$OnInfoListener"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/media/MediaPlayer$OnPreparedListener"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/media/VolumeAutomation"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000289	# type_token_id
	.ascii	"android/media/VolumeShaper"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200028a	# type_token_id
	.ascii	"android/media/VolumeShaper$Configuration"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200026f	# type_token_id
	.ascii	"android/net/ConnectivityManager"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000271	# type_token_id
	.ascii	"android/net/NetworkInfo"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000272	# type_token_id
	.ascii	"android/net/Uri"	# java_name
	.zero	87	# byteCount == 15; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000254	# type_token_id
	.ascii	"android/opengl/GLSurfaceView"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/opengl/GLSurfaceView$Renderer"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200025b	# type_token_id
	.ascii	"android/os/BaseBundle"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200025c	# type_token_id
	.ascii	"android/os/Binder"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200025d	# type_token_id
	.ascii	"android/os/Build"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200025e	# type_token_id
	.ascii	"android/os/Build$VERSION"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000260	# type_token_id
	.ascii	"android/os/Bundle"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000258	# type_token_id
	.ascii	"android/os/Handler"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/os/IBinder"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/os/IBinder$DeathRecipient"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/os/IInterface"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200026b	# type_token_id
	.ascii	"android/os/Looper"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000259	# type_token_id
	.ascii	"android/os/Message"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200026c	# type_token_id
	.ascii	"android/os/Parcel"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/os/Parcelable"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/os/Parcelable$Creator"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200025a	# type_token_id
	.ascii	"android/os/PowerManager"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000253	# type_token_id
	.ascii	"android/preference/PreferenceManager"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000ee	# type_token_id
	.ascii	"android/provider/Settings"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000ef	# type_token_id
	.ascii	"android/provider/Settings$Global"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000f0	# type_token_id
	.ascii	"android/provider/Settings$NameValueTable"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000f1	# type_token_id
	.ascii	"android/provider/Settings$System"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000381	# type_token_id
	.ascii	"android/runtime/JavaProxyThrowable"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200039d	# type_token_id
	.ascii	"android/runtime/XmlReaderPullParser"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000ed	# type_token_id
	.ascii	"android/service/notification/StatusBarNotification"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200003b	# type_token_id
	.ascii	"android/support/design/internal/BottomNavigationItemView"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200003c	# type_token_id
	.ascii	"android/support/design/internal/BottomNavigationMenuView"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200003d	# type_token_id
	.ascii	"android/support/design/internal/BottomNavigationPresenter"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/support/design/snackbar/ContentViewCallback"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000016	# type_token_id
	.ascii	"android/support/design/widget/AppBarLayout"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000017	# type_token_id
	.ascii	"android/support/design/widget/AppBarLayout$LayoutParams"	# java_name
	.zero	47	# byteCount == 55; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000019	# type_token_id
	.ascii	"android/support/design/widget/AppBarLayout$OnOffsetChangedListener"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200001c	# type_token_id
	.ascii	"android/support/design/widget/AppBarLayout$ScrollingViewBehavior"	# java_name
	.zero	38	# byteCount == 64; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200001f	# type_token_id
	.ascii	"android/support/design/widget/BaseTransientBottomBar"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000020	# type_token_id
	.ascii	"android/support/design/widget/BaseTransientBottomBar$BaseCallback"	# java_name
	.zero	37	# byteCount == 65; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000022	# type_token_id
	.ascii	"android/support/design/widget/BaseTransientBottomBar$Behavior"	# java_name
	.zero	41	# byteCount == 61; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000024	# type_token_id
	.ascii	"android/support/design/widget/BottomNavigationView"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000026	# type_token_id
	.ascii	"android/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener"	# java_name
	.zero	17	# byteCount == 85; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200002a	# type_token_id
	.ascii	"android/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener"	# java_name
	.zero	19	# byteCount == 83; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000031	# type_token_id
	.ascii	"android/support/design/widget/BottomSheetDialog"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x10	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/design/widget/CoordinatorLayout"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x10	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/support/design/widget/CoordinatorLayout$Behavior"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x10	# module_index
	.long	0x2000005	# type_token_id
	.ascii	"android/support/design/widget/CoordinatorLayout$LayoutParams"	# java_name
	.zero	42	# byteCount == 60; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000032	# type_token_id
	.ascii	"android/support/design/widget/HeaderScrollingViewBehavior"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/design/widget/Snackbar"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000006	# type_token_id
	.ascii	"android/support/design/widget/Snackbar$Callback"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000005	# type_token_id
	.ascii	"android/support/design/widget/Snackbar_SnackbarActionClickImplementor"	# java_name
	.zero	33	# byteCount == 69; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000034	# type_token_id
	.ascii	"android/support/design/widget/SwipeDismissBehavior"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000036	# type_token_id
	.ascii	"android/support/design/widget/SwipeDismissBehavior$OnDismissListener"	# java_name
	.zero	34	# byteCount == 68; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"android/support/design/widget/TabLayout"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200000a	# type_token_id
	.ascii	"android/support/design/widget/TabLayout$BaseOnTabSelectedListener"	# java_name
	.zero	37	# byteCount == 65; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200000f	# type_token_id
	.ascii	"android/support/design/widget/TabLayout$Tab"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000008	# type_token_id
	.ascii	"android/support/design/widget/TabLayout$TabView"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200003a	# type_token_id
	.ascii	"android/support/design/widget/ViewOffsetBehavior"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xb	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v4/app/ActionBarDrawerToggle"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200004b	# type_token_id
	.ascii	"android/support/v4/app/ActivityCompat"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200004d	# type_token_id
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"	# java_name
	.zero	30	# byteCount == 72; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200004f	# type_token_id
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"	# java_name
	.zero	40	# byteCount == 62; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000051	# type_token_id
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"	# java_name
	.zero	26	# byteCount == 76; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/support/v4/app/Fragment"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/v4/app/Fragment$SavedState"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v4/app/FragmentActivity"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000005	# type_token_id
	.ascii	"android/support/v4/app/FragmentManager"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000008	# type_token_id
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"	# java_name
	.zero	37	# byteCount == 65; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x200000b	# type_token_id
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"	# java_name
	.zero	37	# byteCount == 65; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000010	# type_token_id
	.ascii	"android/support/v4/app/FragmentPagerAdapter"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x2000012	# type_token_id
	.ascii	"android/support/v4/app/FragmentTransaction"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x9	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"android/support/v4/app/LoaderManager"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x9	# module_index
	.long	0x2000009	# type_token_id
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000052	# type_token_id
	.ascii	"android/support/v4/app/SharedElementCallback"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000054	# type_token_id
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"	# java_name
	.zero	28	# byteCount == 74; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000056	# type_token_id
	.ascii	"android/support/v4/app/TaskStackBuilder"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000058	# type_token_id
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200004a	# type_token_id
	.ascii	"android/support/v4/content/ContextCompat"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x9	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v4/content/Loader"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x9	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x9	# module_index
	.long	0x2000006	# type_token_id
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000049	# type_token_id
	.ascii	"android/support/v4/graphics/drawable/DrawableCompat"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000046	# type_token_id
	.ascii	"android/support/v4/internal/view/SupportMenu"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000048	# type_token_id
	.ascii	"android/support/v4/internal/view/SupportMenuItem"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000059	# type_token_id
	.ascii	"android/support/v4/text/PrecomputedTextCompat"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200005a	# type_token_id
	.ascii	"android/support/v4/text/PrecomputedTextCompat$Params"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000012	# type_token_id
	.ascii	"android/support/v4/view/AccessibilityDelegateCompat"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000013	# type_token_id
	.ascii	"android/support/v4/view/ActionProvider"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000015	# type_token_id
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"	# java_name
	.zero	40	# byteCount == 62; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000019	# type_token_id
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000021	# type_token_id
	.ascii	"android/support/v4/view/DisplayCutoutCompat"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000034	# type_token_id
	.ascii	"android/support/v4/view/MenuItemCompat"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000036	# type_token_id
	.ascii	"android/support/v4/view/MenuItemCompat$OnActionExpandListener"	# java_name
	.zero	41	# byteCount == 61; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000023	# type_token_id
	.ascii	"android/support/v4/view/NestedScrollingChild"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000025	# type_token_id
	.ascii	"android/support/v4/view/NestedScrollingChild2"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000027	# type_token_id
	.ascii	"android/support/v4/view/NestedScrollingParent"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000029	# type_token_id
	.ascii	"android/support/v4/view/NestedScrollingParent2"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200002b	# type_token_id
	.ascii	"android/support/v4/view/OnApplyWindowInsetsListener"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xe	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v4/view/PagerAdapter"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000037	# type_token_id
	.ascii	"android/support/v4/view/PointerIconCompat"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000038	# type_token_id
	.ascii	"android/support/v4/view/ScaleGestureDetectorCompat"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200002d	# type_token_id
	.ascii	"android/support/v4/view/ScrollingView"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200002f	# type_token_id
	.ascii	"android/support/v4/view/TintableBackgroundView"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000039	# type_token_id
	.ascii	"android/support/v4/view/ViewCompat"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200003b	# type_token_id
	.ascii	"android/support/v4/view/ViewCompat$OnUnhandledKeyEventListenerCompat"	# java_name
	.zero	34	# byteCount == 68; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xe	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/v4/view/ViewPager"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xe	# module_index
	.long	0x2000006	# type_token_id
	.ascii	"android/support/v4/view/ViewPager$OnAdapterChangeListener"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xe	# module_index
	.long	0x200000a	# type_token_id
	.ascii	"android/support/v4/view/ViewPager$OnPageChangeListener"	# java_name
	.zero	48	# byteCount == 54; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xe	# module_index
	.long	0x2000010	# type_token_id
	.ascii	"android/support/v4/view/ViewPager$PageTransformer"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200003c	# type_token_id
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000031	# type_token_id
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000033	# type_token_id
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"	# java_name
	.zero	44	# byteCount == 58; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200003d	# type_token_id
	.ascii	"android/support/v4/view/WindowInsetsCompat"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200003e	# type_token_id
	.ascii	"android/support/v4/view/accessibility/AccessibilityNodeInfoCompat"	# java_name
	.zero	37	# byteCount == 65; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200003f	# type_token_id
	.ascii	"android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat"	# java_name
	.zero	11	# byteCount == 91; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000040	# type_token_id
	.ascii	"android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat"	# java_name
	.zero	16	# byteCount == 86; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000041	# type_token_id
	.ascii	"android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat"	# java_name
	.zero	12	# byteCount == 90; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000042	# type_token_id
	.ascii	"android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat"	# java_name
	.zero	21	# byteCount == 81; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000043	# type_token_id
	.ascii	"android/support/v4/view/accessibility/AccessibilityNodeProviderCompat"	# java_name
	.zero	33	# byteCount == 69; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000044	# type_token_id
	.ascii	"android/support/v4/view/accessibility/AccessibilityWindowInfoCompat"	# java_name
	.zero	35	# byteCount == 67; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000005	# type_token_id
	.ascii	"android/support/v4/widget/AutoSizeableTextView"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/support/v4/widget/CompoundButtonCompat"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x15	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v4/widget/DrawerLayout"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x15	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x15	# module_index
	.long	0x200000a	# type_token_id
	.ascii	"android/support/v4/widget/DrawerLayout$LayoutParams"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200000a	# type_token_id
	.ascii	"android/support/v4/widget/NestedScrollView"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200000c	# type_token_id
	.ascii	"android/support/v4/widget/NestedScrollView$OnScrollChangeListener"	# java_name
	.zero	37	# byteCount == 65; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x11	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v4/widget/SwipeRefreshLayout"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x11	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/v4/widget/SwipeRefreshLayout$OnChildScrollUpCallback"	# java_name
	.zero	34	# byteCount == 68; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x11	# module_index
	.long	0x2000006	# type_token_id
	.ascii	"android/support/v4/widget/SwipeRefreshLayout$OnRefreshListener"	# java_name
	.zero	40	# byteCount == 62; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000011	# type_token_id
	.ascii	"android/support/v4/widget/TextViewCompat"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"android/support/v4/widget/TintableCompoundButton"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000009	# type_token_id
	.ascii	"android/support/v4/widget/TintableImageSourceView"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200000a	# type_token_id
	.ascii	"android/support/v7/app/ActionBar"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200000b	# type_token_id
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200000d	# type_token_id
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000011	# type_token_id
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000012	# type_token_id
	.ascii	"android/support/v7/app/ActionBar$Tab"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000015	# type_token_id
	.ascii	"android/support/v7/app/ActionBar$TabListener"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000019	# type_token_id
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200001b	# type_token_id
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200001d	# type_token_id
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"	# java_name
	.zero	41	# byteCount == 61; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000005	# type_token_id
	.ascii	"android/support/v7/app/AlertDialog"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000006	# type_token_id
	.ascii	"android/support/v7/app/AlertDialog$Builder"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000008	# type_token_id
	.ascii	"android/support/v7/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor"	# java_name
	.zero	24	# byteCount == 78; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"android/support/v7/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor"	# java_name
	.zero	25	# byteCount == 77; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000009	# type_token_id
	.ascii	"android/support/v7/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor"	# java_name
	.zero	14	# byteCount == 88; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200001e	# type_token_id
	.ascii	"android/support/v7/app/AppCompatActivity"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000023	# type_token_id
	.ascii	"android/support/v7/app/AppCompatCallback"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200001f	# type_token_id
	.ascii	"android/support/v7/app/AppCompatDelegate"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000021	# type_token_id
	.ascii	"android/support/v7/app/AppCompatDialog"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/v7/content/res/AppCompatResources"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v7/graphics/drawable/DrawableWrapper"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000039	# type_token_id
	.ascii	"android/support/v7/view/ActionMode"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200003b	# type_token_id
	.ascii	"android/support/v7/view/ActionMode$Callback"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200003d	# type_token_id
	.ascii	"android/support/v7/view/menu/MenuBuilder"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200003f	# type_token_id
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000048	# type_token_id
	.ascii	"android/support/v7/view/menu/MenuItemImpl"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000043	# type_token_id
	.ascii	"android/support/v7/view/menu/MenuPresenter"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000041	# type_token_id
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000047	# type_token_id
	.ascii	"android/support/v7/view/menu/MenuView"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000045	# type_token_id
	.ascii	"android/support/v7/view/menu/MenuView$ItemView"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000049	# type_token_id
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200002e	# type_token_id
	.ascii	"android/support/v7/widget/AppCompatAutoCompleteTextView"	# java_name
	.zero	47	# byteCount == 55; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200002f	# type_token_id
	.ascii	"android/support/v7/widget/AppCompatButton"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000030	# type_token_id
	.ascii	"android/support/v7/widget/AppCompatCheckBox"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000031	# type_token_id
	.ascii	"android/support/v7/widget/AppCompatImageButton"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000032	# type_token_id
	.ascii	"android/support/v7/widget/AppCompatRadioButton"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x5	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v7/widget/CardView"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000034	# type_token_id
	.ascii	"android/support/v7/widget/DecorToolbar"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"android/support/v7/widget/GridLayoutManager"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"android/support/v7/widget/GridLayoutManager$LayoutParams"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"android/support/v7/widget/GridLayoutManager$SpanSizeLookup"	# java_name
	.zero	44	# byteCount == 58; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000035	# type_token_id
	.ascii	"android/support/v7/widget/LinearLayoutCompat"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000006	# type_token_id
	.ascii	"android/support/v7/widget/LinearLayoutManager"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"android/support/v7/widget/LinearSmoothScroller"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000008	# type_token_id
	.ascii	"android/support/v7/widget/LinearSnapHelper"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000009	# type_token_id
	.ascii	"android/support/v7/widget/OrientationHelper"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200000b	# type_token_id
	.ascii	"android/support/v7/widget/PagerSnapHelper"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200000c	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200000d	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$Adapter"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200000f	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$AdapterDataObserver"	# java_name
	.zero	44	# byteCount == 58; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000012	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$ChildDrawingOrderCallback"	# java_name
	.zero	38	# byteCount == 64; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000013	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$EdgeEffectFactory"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000014	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$ItemAnimator"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000016	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener"	# java_name
	.zero	22	# byteCount == 80; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000017	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000019	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$ItemDecoration"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200001b	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$LayoutManager"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200001d	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry"	# java_name
	.zero	27	# byteCount == 75; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200001e	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$LayoutManager$Properties"	# java_name
	.zero	39	# byteCount == 63; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000020	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$LayoutParams"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000022	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener"	# java_name
	.zero	31	# byteCount == 71; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000026	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$OnFlingListener"	# java_name
	.zero	48	# byteCount == 54; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000029	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$OnItemTouchListener"	# java_name
	.zero	44	# byteCount == 58; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200002e	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$OnScrollListener"	# java_name
	.zero	47	# byteCount == 55; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000030	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$RecycledViewPool"	# java_name
	.zero	47	# byteCount == 55; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000031	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$Recycler"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000033	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$RecyclerListener"	# java_name
	.zero	47	# byteCount == 55; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000036	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$SmoothScroller"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000037	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$SmoothScroller$Action"	# java_name
	.zero	42	# byteCount == 60; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000039	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider"	# java_name
	.zero	28	# byteCount == 74; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200003b	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$State"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200003c	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$ViewCacheExtension"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200003e	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerView$ViewHolder"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200004c	# type_token_id
	.ascii	"android/support/v7/widget/RecyclerViewAccessibilityDelegate"	# java_name
	.zero	43	# byteCount == 59; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000036	# type_token_id
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000037	# type_token_id
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"	# java_name
	.zero	28	# byteCount == 74; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200004d	# type_token_id
	.ascii	"android/support/v7/widget/SnapHelper"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000038	# type_token_id
	.ascii	"android/support/v7/widget/SwitchCompat"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000024	# type_token_id
	.ascii	"android/support/v7/widget/Toolbar"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000027	# type_token_id
	.ascii	"android/support/v7/widget/Toolbar$LayoutParams"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000029	# type_token_id
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x2000025	# type_token_id
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000051	# type_token_id
	.ascii	"android/support/v7/widget/helper/ItemTouchHelper"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000052	# type_token_id
	.ascii	"android/support/v7/widget/helper/ItemTouchHelper$Callback"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000055	# type_token_id
	.ascii	"android/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler"	# java_name
	.zero	38	# byteCount == 64; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000050	# type_token_id
	.ascii	"android/support/v7/widget/helper/ItemTouchUIUtil"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/Editable"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/GetChars"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000212	# type_token_id
	.ascii	"android/text/Html"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/InputFilter"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000219	# type_token_id
	.ascii	"android/text/InputFilter$LengthFilter"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200022b	# type_token_id
	.ascii	"android/text/Layout"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/NoCopySpan"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/ParcelableSpan"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/Spannable"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200022d	# type_token_id
	.ascii	"android/text/SpannableString"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200022f	# type_token_id
	.ascii	"android/text/SpannableStringBuilder"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000231	# type_token_id
	.ascii	"android/text/SpannableStringInternal"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/Spanned"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/TextDirectionHeuristic"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000234	# type_token_id
	.ascii	"android/text/TextPaint"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000235	# type_token_id
	.ascii	"android/text/TextUtils"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000236	# type_token_id
	.ascii	"android/text/TextUtils$TruncateAt"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/TextWatcher"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000252	# type_token_id
	.ascii	"android/text/format/DateFormat"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000247	# type_token_id
	.ascii	"android/text/method/BaseKeyListener"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000249	# type_token_id
	.ascii	"android/text/method/DigitsKeyListener"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/method/KeyListener"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200024e	# type_token_id
	.ascii	"android/text/method/MetaKeyKeyListener"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000250	# type_token_id
	.ascii	"android/text/method/NumberKeyListener"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/method/TransformationMethod"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000237	# type_token_id
	.ascii	"android/text/style/BackgroundColorSpan"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000238	# type_token_id
	.ascii	"android/text/style/CharacterStyle"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200023a	# type_token_id
	.ascii	"android/text/style/ForegroundColorSpan"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/style/LineHeightSpan"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000245	# type_token_id
	.ascii	"android/text/style/MetricAffectingSpan"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/style/ParagraphStyle"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/style/UpdateAppearance"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/style/UpdateLayout"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/text/style/WrapTogetherSpan"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/util/AttributeSet"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200020a	# type_token_id
	.ascii	"android/util/DisplayMetrics"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000208	# type_token_id
	.ascii	"android/util/Log"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200020d	# type_token_id
	.ascii	"android/util/LruCache"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200020e	# type_token_id
	.ascii	"android/util/SparseArray"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200020f	# type_token_id
	.ascii	"android/util/StateSet"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000210	# type_token_id
	.ascii	"android/util/TypedValue"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000191	# type_token_id
	.ascii	"android/view/ActionMode"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ActionMode$Callback"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000196	# type_token_id
	.ascii	"android/view/ActionProvider"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/CollapsibleActionView"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ContextMenu"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ContextMenu$ContextMenuInfo"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000199	# type_token_id
	.ascii	"android/view/ContextThemeWrapper"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200019b	# type_token_id
	.ascii	"android/view/Display"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200019d	# type_token_id
	.ascii	"android/view/DragEvent"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001a0	# type_token_id
	.ascii	"android/view/GestureDetector"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/GestureDetector$OnDoubleTapListener"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/GestureDetector$OnGestureListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001b7	# type_token_id
	.ascii	"android/view/InputEvent"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200017c	# type_token_id
	.ascii	"android/view/KeyEvent"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/KeyEvent$Callback"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200017f	# type_token_id
	.ascii	"android/view/LayoutInflater"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/LayoutInflater$Factory"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/LayoutInflater$Factory2"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/Menu"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001cf	# type_token_id
	.ascii	"android/view/MenuInflater"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/MenuItem"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/MenuItem$OnActionExpandListener"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000184	# type_token_id
	.ascii	"android/view/MotionEvent"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001d4	# type_token_id
	.ascii	"android/view/ScaleGestureDetector"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ScaleGestureDetector$OnScaleGestureListener"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001d7	# type_token_id
	.ascii	"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener"	# java_name
	.zero	40	# byteCount == 62; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001d9	# type_token_id
	.ascii	"android/view/SearchEvent"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/SubMenu"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001dc	# type_token_id
	.ascii	"android/view/Surface"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/SurfaceHolder"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/SurfaceHolder$Callback"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/SurfaceHolder$Callback2"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001de	# type_token_id
	.ascii	"android/view/SurfaceView"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000154	# type_token_id
	.ascii	"android/view/View"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000155	# type_token_id
	.ascii	"android/view/View$AccessibilityDelegate"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000156	# type_token_id
	.ascii	"android/view/View$DragShadowBuilder"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000157	# type_token_id
	.ascii	"android/view/View$MeasureSpec"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnAttachStateChangeListener"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnClickListener"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnCreateContextMenuListener"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnDragListener"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnFocusChangeListener"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnKeyListener"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnLayoutChangeListener"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/View$OnTouchListener"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001e1	# type_token_id
	.ascii	"android/view/ViewConfiguration"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001e2	# type_token_id
	.ascii	"android/view/ViewGroup"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001e3	# type_token_id
	.ascii	"android/view/ViewGroup$LayoutParams"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001e4	# type_token_id
	.ascii	"android/view/ViewGroup$MarginLayoutParams"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ViewGroup$OnHierarchyChangeListener"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ViewManager"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ViewParent"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001e8	# type_token_id
	.ascii	"android/view/ViewPropertyAnimator"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000185	# type_token_id
	.ascii	"android/view/ViewTreeObserver"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ViewTreeObserver$OnGlobalFocusChangeListener"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"	# java_name
	.zero	47	# byteCount == 55; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200018e	# type_token_id
	.ascii	"android/view/Window"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/Window$Callback"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001ec	# type_token_id
	.ascii	"android/view/WindowInsets"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/WindowManager"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001c5	# type_token_id
	.ascii	"android/view/WindowManager$LayoutParams"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001ff	# type_token_id
	.ascii	"android/view/accessibility/AccessibilityEvent"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/accessibility/AccessibilityEventSource"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000200	# type_token_id
	.ascii	"android/view/accessibility/AccessibilityManager"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000201	# type_token_id
	.ascii	"android/view/accessibility/AccessibilityNodeInfo"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000202	# type_token_id
	.ascii	"android/view/accessibility/AccessibilityRecord"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001ee	# type_token_id
	.ascii	"android/view/animation/AccelerateInterpolator"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001ef	# type_token_id
	.ascii	"android/view/animation/Animation"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/animation/Animation$AnimationListener"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001f3	# type_token_id
	.ascii	"android/view/animation/AnimationSet"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001f4	# type_token_id
	.ascii	"android/view/animation/AnimationUtils"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001f5	# type_token_id
	.ascii	"android/view/animation/BaseInterpolator"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001f7	# type_token_id
	.ascii	"android/view/animation/DecelerateInterpolator"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/view/animation/Interpolator"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001fa	# type_token_id
	.ascii	"android/view/animation/LinearInterpolator"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20001fb	# type_token_id
	.ascii	"android/view/inputmethod/InputMethodManager"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000dd	# type_token_id
	.ascii	"android/webkit/CookieManager"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/webkit/ValueCallback"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000e4	# type_token_id
	.ascii	"android/webkit/WebChromeClient"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000e5	# type_token_id
	.ascii	"android/webkit/WebChromeClient$FileChooserParams"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000e7	# type_token_id
	.ascii	"android/webkit/WebResourceError"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/webkit/WebResourceRequest"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000e9	# type_token_id
	.ascii	"android/webkit/WebSettings"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000eb	# type_token_id
	.ascii	"android/webkit/WebView"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000ec	# type_token_id
	.ascii	"android/webkit/WebViewClient"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000fa	# type_token_id
	.ascii	"android/widget/AbsListView"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/AbsListView$OnScrollListener"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000118	# type_token_id
	.ascii	"android/widget/AbsSeekBar"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000116	# type_token_id
	.ascii	"android/widget/AbsoluteLayout"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000117	# type_token_id
	.ascii	"android/widget/AbsoluteLayout$LayoutParams"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/Adapter"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000fe	# type_token_id
	.ascii	"android/widget/AdapterView"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/AdapterView$OnItemClickListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/AdapterView$OnItemLongClickListener"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000108	# type_token_id
	.ascii	"android/widget/AutoCompleteTextView"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/BaseAdapter"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200011e	# type_token_id
	.ascii	"android/widget/Button"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200011f	# type_token_id
	.ascii	"android/widget/CheckBox"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/Checkable"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000121	# type_token_id
	.ascii	"android/widget/CompoundButton"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/CompoundButton$OnCheckedChangeListener"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200010c	# type_token_id
	.ascii	"android/widget/DatePicker"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/DatePicker$OnDateChangedListener"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000125	# type_token_id
	.ascii	"android/widget/EdgeEffect"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000126	# type_token_id
	.ascii	"android/widget/EditText"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000127	# type_token_id
	.ascii	"android/widget/Filter"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/Filter$FilterListener"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200012a	# type_token_id
	.ascii	"android/widget/Filter$FilterResults"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/Filterable"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200012c	# type_token_id
	.ascii	"android/widget/FrameLayout"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200012d	# type_token_id
	.ascii	"android/widget/FrameLayout$LayoutParams"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200012e	# type_token_id
	.ascii	"android/widget/HorizontalScrollView"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000137	# type_token_id
	.ascii	"android/widget/ImageButton"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000138	# type_token_id
	.ascii	"android/widget/ImageView"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000139	# type_token_id
	.ascii	"android/widget/ImageView$ScaleType"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200013f	# type_token_id
	.ascii	"android/widget/LinearLayout"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000140	# type_token_id
	.ascii	"android/widget/LinearLayout$LayoutParams"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/ListAdapter"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000141	# type_token_id
	.ascii	"android/widget/ListView"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200010f	# type_token_id
	.ascii	"android/widget/MediaController"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/MediaController$MediaPlayerControl"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000142	# type_token_id
	.ascii	"android/widget/NumberPicker"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000144	# type_token_id
	.ascii	"android/widget/ProgressBar"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000145	# type_token_id
	.ascii	"android/widget/RadioButton"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000146	# type_token_id
	.ascii	"android/widget/RelativeLayout"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000147	# type_token_id
	.ascii	"android/widget/RelativeLayout$LayoutParams"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000149	# type_token_id
	.ascii	"android/widget/SearchView"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/SearchView$OnQueryTextListener"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/SectionIndexer"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200014c	# type_token_id
	.ascii	"android/widget/SeekBar"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/SeekBar$OnSeekBarChangeListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/SpinnerAdapter"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200014f	# type_token_id
	.ascii	"android/widget/Switch"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000112	# type_token_id
	.ascii	"android/widget/TextView"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000113	# type_token_id
	.ascii	"android/widget/TextView$BufferType"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/TextView$OnEditorActionListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000150	# type_token_id
	.ascii	"android/widget/TimePicker"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"android/widget/TimePicker$OnTimeChangedListener"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000153	# type_token_id
	.ascii	"android/widget/VideoView"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"com/honeywell/IExecutor"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"com/honeywell/IExecutor$Stub"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000004	# type_token_id
	.ascii	"com/honeywell/IExecutor$Stub$Proxy"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000008	# type_token_id
	.ascii	"com/honeywell/Message"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000009	# type_token_id
	.ascii	"com/honeywell/aidc/AidcException"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200000a	# type_token_id
	.ascii	"com/honeywell/aidc/AidcManager"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200000c	# type_token_id
	.ascii	"com/honeywell/aidc/AidcManager$BarcodeDeviceListener"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200000e	# type_token_id
	.ascii	"com/honeywell/aidc/AidcManager$CreatedCallback"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200000f	# type_token_id
	.ascii	"com/honeywell/aidc/BarcodeDeviceConnectionEvent"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000010	# type_token_id
	.ascii	"com/honeywell/aidc/BarcodeFailureEvent"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000017	# type_token_id
	.ascii	"com/honeywell/aidc/BarcodeReadEvent"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000011	# type_token_id
	.ascii	"com/honeywell/aidc/BarcodeReader"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000013	# type_token_id
	.ascii	"com/honeywell/aidc/BarcodeReader$BarcodeListener"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000015	# type_token_id
	.ascii	"com/honeywell/aidc/BarcodeReader$TriggerListener"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000016	# type_token_id
	.ascii	"com/honeywell/aidc/BarcodeReaderInfo"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000018	# type_token_id
	.ascii	"com/honeywell/aidc/BuildConfig"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000019	# type_token_id
	.ascii	"com/honeywell/aidc/DcsJsonRpcHelper"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200001a	# type_token_id
	.ascii	"com/honeywell/aidc/DecodeIntent"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200001b	# type_token_id
	.ascii	"com/honeywell/aidc/ScannerNotClaimedException"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200001c	# type_token_id
	.ascii	"com/honeywell/aidc/ScannerUnavailableException"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200001d	# type_token_id
	.ascii	"com/honeywell/aidc/Signature"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200001e	# type_token_id
	.ascii	"com/honeywell/aidc/SignatureParameters"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x200001f	# type_token_id
	.ascii	"com/honeywell/aidc/TriggerStateChangeEvent"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x6	# module_index
	.long	0x2000020	# type_token_id
	.ascii	"com/honeywell/aidc/UnsupportedPropertyException"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xa	# module_index
	.long	0x200000b	# type_token_id
	.ascii	"com/xamarin/forms/platform/android/FormsViewGroup"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xa	# module_index
	.long	0x200000d	# type_token_id
	.ascii	"com/xamarin/formsviewgroup/BuildConfig"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc6414252951f3f66c67/RecyclerViewScrollListener_2"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000f2	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/AHorizontalScrollView"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000f0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ActionSheetRenderer"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000f1	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ActivityIndicatorRenderer"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200001b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/AndroidActivity"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000036	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/BaseCellView"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000fe	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/BorderDrawable"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000105	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/BoxRenderer"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000106	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ButtonRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000107	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ButtonRenderer_ButtonClickListener"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000109	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ButtonRenderer_ButtonTouchListener"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200010b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CarouselPageAdapter"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200010c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CarouselPageRenderer"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200004a	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CarouselSpacingItemDecoration"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200004b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CarouselViewRenderer"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200004c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CarouselViewRenderer_CarouselViewOnScrollListener"	# java_name
	.zero	31	# byteCount == 71; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200004d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CarouselViewRenderer_CarouselViewwOnGlobalLayoutListener"	# java_name
	.zero	24	# byteCount == 78; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000034	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CellAdapter"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200003a	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CellRenderer_RendererHolder"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200004e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CenterSnapHelper"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200001f	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CheckBoxDesignerRenderer"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000020	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CheckBoxRenderer"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000021	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CheckBoxRendererBase"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200010d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CircularProgress"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200004f	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CollectionViewRenderer"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200010e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ColorChangeRevealDrawable"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200010f	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ConditionalFocusLayout"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000110	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ContainerView"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000111	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/CustomFrameLayout"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000050	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/DataChangeObserver"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000114	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/DatePickerRenderer"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/DatePickerRendererBase_1"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000083	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/DragAndDropGestureHandler"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000051	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EdgeSnapHelper"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000128	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EditorEditText"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000116	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EditorRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EditorRendererBase_1"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001ba	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EllipseRenderer"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001bb	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EllipseView"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000053	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EmptyViewAdapter"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000055	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EndSingleSnapHelper"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000056	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EndSnapHelper"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200008b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EntryAccessibilityDelegate"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200003c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EntryCellEditText"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200003e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EntryCellView"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000127	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EntryEditText"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000119	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EntryRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/EntryRendererBase_1"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000120	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormattedStringExtensions_FontSpan"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000122	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormattedStringExtensions_LineHeightSpan"	# java_name
	.zero	40	# byteCount == 62; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000121	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormattedStringExtensions_TextDecorationSpan"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000f6	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsAnimationDrawable"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000024	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsAppCompatActivity"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000a4	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsApplicationActivity"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000123	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsEditText"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000124	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsEditTextBase"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000129	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsImageView"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200012a	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsSeekBar"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200012b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsTextView"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200012c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsVideoView"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200012f	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsWebChromeClient"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000131	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FormsWebViewClient"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000132	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FrameRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000133	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/FrameRenderer_FrameDrawable"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000134	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GenericAnimatorListener"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000a7	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GenericGlobalLayoutListener"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000a8	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GenericMenuClickListener"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000aa	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GestureManager_TapAndPanGestureDetector"	# java_name
	.zero	41	# byteCount == 61; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000ac	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GradientStrokeDrawable"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000b0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GradientStrokeDrawable_GradientShaderFactory"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000057	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GridLayoutSpanSizeLookup"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GroupableItemsViewAdapter_2"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GroupableItemsViewRenderer_3"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000135	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/GroupedListViewAdapter"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000028	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ImageButtonRenderer"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000b7	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ImageCache_CacheEntry"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000b8	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ImageCache_FormsLruCache"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000141	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ImageRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200005d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/IndicatorViewRenderer"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000bc	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/InnerGestureListener"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000bd	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/InnerScaleListener"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200005e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ItemContentView"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ItemsViewAdapter_2"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ItemsViewRenderer_3"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000154	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/LabelRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001bc	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/LineRenderer"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001bd	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/LineView"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000155	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ListViewAdapter"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000157	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ListViewRenderer"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000158	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ListViewRenderer_Container"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200015a	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ListViewRenderer_ListViewScrollDetector"	# java_name
	.zero	41	# byteCount == 61; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000159	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling"	# java_name
	.zero	21	# byteCount == 81; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200015c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/LocalizedDigitsKeyListener"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200015d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/MasterDetailContainer"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200015e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/MasterDetailRenderer"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000a3	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/MediaElementRenderer"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000cc	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/NativeViewWrapperRenderer"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000161	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/NavigationRenderer"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000065	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/NongreedySnapHelper"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000066	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/NongreedySnapHelper_InitialScrollListener"	# java_name
	.zero	39	# byteCount == 63; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ObjectJavaBox_1"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000165	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/OpenGLViewRenderer"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000166	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/OpenGLViewRenderer_Renderer"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000167	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PageContainer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200002a	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PageExtensions_EmbeddedFragment"	# java_name
	.zero	49	# byteCount == 53; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200002c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PageExtensions_EmbeddedSupportFragment"	# java_name
	.zero	42	# byteCount == 60; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000168	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PageRenderer"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001be	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PathRenderer"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001bf	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PathView"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200016a	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PickerEditText"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000d3	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PickerManager_PickerListener"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200016b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PickerRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000e2	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PlatformRenderer"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000d6	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/Platform_DefaultRenderer"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PolygonRenderer"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c1	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PolygonView"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c2	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PolylineRenderer"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c3	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PolylineView"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200006b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PositionalSmoothScroller"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20000ed	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/PowerSaveModeBroadcastReceiver"	# java_name
	.zero	50	# byteCount == 52; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200016d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ProgressBarRenderer"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200002d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/RadioButtonRenderer"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c5	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/RectView"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c4	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/RectangleRenderer"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200016e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/RefreshViewRenderer"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200006d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ScrollHelper"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000180	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ScrollLayoutManager"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200016f	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ScrollViewContainer"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000170	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ScrollViewRenderer"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000174	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SearchBarRenderer"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SelectableItemsViewAdapter_2"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SelectableItemsViewRenderer_3"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000071	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SelectableViewHolder"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShapeRenderer_2"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c7	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShapeView"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000177	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellContentFragment"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000178	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellFlyoutRecyclerAdapter"	# java_name
	.zero	54	# byteCount == 48; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200017b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellFlyoutRecyclerAdapter_ElementViewHolder"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000179	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellFlyoutRecyclerAdapter_LinearLayoutWithFocus"	# java_name
	.zero	32	# byteCount == 70; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200017c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellFlyoutRenderer"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200017d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellFlyoutTemplatedContentRenderer"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200017e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellFlyoutTemplatedContentRenderer_HeaderContainer"	# java_name
	.zero	29	# byteCount == 73; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000181	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellFragmentPagerAdapter"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000182	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellItemRenderer"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000187	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellItemRendererBase"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000189	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellPageContainer"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200018b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellRenderer_SplitDrawable"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200018d	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellSearchView"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000191	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellSearchViewAdapter"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000192	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellSearchViewAdapter_CustomFilter"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000193	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellSearchViewAdapter_ObjectWrapper"	# java_name
	.zero	44	# byteCount == 58; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200018e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellSearchView_ClipDrawableWrapper"	# java_name
	.zero	45	# byteCount == 57; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000194	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellSectionRenderer"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000198	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellToolbarTracker"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000199	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ShellToolbarTracker_FlyoutIconDrawerDrawable"	# java_name
	.zero	36	# byteCount == 66; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000072	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SimpleViewHolder"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000073	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SingleSnapHelper"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000074	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SizedItemContentView"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200019e	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SliderRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000076	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SpacingItemDecoration"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000077	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/StartSingleSnapHelper"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000078	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/StartSnapHelper"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200019f	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/StepperRenderer"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001c9	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/StepperRendererManager_StepperListener"	# java_name
	.zero	42	# byteCount == 60; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/StructuredItemsViewAdapter_2"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/StructuredItemsViewRenderer_3"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001a2	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SwipeViewRenderer"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000041	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SwitchCellView"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001a5	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/SwitchRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001a6	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TabbedRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001a7	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TableViewModelRenderer"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001a8	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TableViewRenderer"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200007b	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TemplatedItemViewHolder"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000043	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TextCellRenderer_TextCellView"	# java_name
	.zero	51	# byteCount == 51; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x200007c	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TextViewHolder"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001aa	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TimePickerRenderer"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/TimePickerRendererBase_1"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000045	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ViewCellRenderer_ViewCellContainer"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000047	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ViewCellRenderer_ViewCellContainer_LongPressGestureListener"	# java_name
	.zero	21	# byteCount == 81; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000046	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ViewCellRenderer_ViewCellContainer_TapGestureListener"	# java_name
	.zero	27	# byteCount == 75; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001d3	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ViewRenderer"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/ViewRenderer_2"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/VisualElementRenderer_1"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001db	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/VisualElementTracker_AttachTracker"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001ae	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/WebViewRenderer"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001af	# type_token_id
	.ascii	"crc643f46942d9dd1fff9/WebViewRenderer_JavascriptResult"	# java_name
	.zero	48	# byteCount == 54; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001fa	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/ButtonRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001fb	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/CarouselPageRenderer"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/FormsFragmentPagerAdapter_1"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001fd	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/FormsViewPager"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001fe	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/FragmentContainer"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001ff	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/FrameRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000201	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/MasterDetailContainer"	# java_name
	.zero	59	# byteCount == 43; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000202	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/MasterDetailPageRenderer"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000204	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/NavigationPageRenderer"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000205	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/NavigationPageRenderer_ClickListener"	# java_name
	.zero	44	# byteCount == 58; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000206	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/NavigationPageRenderer_Container"	# java_name
	.zero	48	# byteCount == 54; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000207	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/NavigationPageRenderer_DrawerMultiplexedListener"	# java_name
	.zero	32	# byteCount == 70; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000210	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/PickerRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/PickerRendererBase_1"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000212	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/Platform_ModalContainer"	# java_name
	.zero	57	# byteCount == 45; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000217	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/ShellFragmentContainer"	# java_name
	.zero	58	# byteCount == 44; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000218	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/SwitchRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x2000219	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/TabbedPageRenderer"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x0	# type_token_id
	.ascii	"crc64720bb2db43a66fe9/ViewRenderer_2"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x2	# module_index
	.long	0x2000010	# type_token_id
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"	# java_name
	.zero	48	# byteCount == 54; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x8	# module_index
	.long	0x2000003	# type_token_id
	.ascii	"crc64a1a4c22487a825d8/MainActivity"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x13	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"crc64c1852205a52d643f/AlarmHandler"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x13	# module_index
	.long	0x200001a	# type_token_id
	.ascii	"crc64c1852205a52d643f/EmptyOnClickListener"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x13	# module_index
	.long	0x2000008	# type_token_id
	.ascii	"crc64c1852205a52d643f/NotificationReceiver"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x13	# module_index
	.long	0x2000019	# type_token_id
	.ascii	"crc64c1852205a52d643f/ToastCallback"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001ec	# type_token_id
	.ascii	"crc64ee486da937c010f4/ButtonRenderer"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001ef	# type_token_id
	.ascii	"crc64ee486da937c010f4/FrameRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001f5	# type_token_id
	.ascii	"crc64ee486da937c010f4/ImageRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x4	# module_index
	.long	0x20001f6	# type_token_id
	.ascii	"crc64ee486da937c010f4/LabelRenderer"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xf	# module_index
	.long	0x2000002	# type_token_id
	.ascii	"crc64f84f70ee2cf5bc6a/BarcodeDeviceEventHandler"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xf	# module_index
	.long	0x200000d	# type_token_id
	.ascii	"crc64f84f70ee2cf5bc6a/BarcodeEventHandler"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xf	# module_index
	.long	0x200000b	# type_token_id
	.ascii	"crc64f84f70ee2cf5bc6a/BarcodeReaderManager"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/io/Closeable"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200043c	# type_token_id
	.ascii	"java/io/File"	# java_name
	.zero	90	# byteCount == 12; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200043d	# type_token_id
	.ascii	"java/io/FileDescriptor"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200043e	# type_token_id
	.ascii	"java/io/FileInputStream"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/io/Flushable"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000446	# type_token_id
	.ascii	"java/io/IOException"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000443	# type_token_id
	.ascii	"java/io/InputStream"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000445	# type_token_id
	.ascii	"java/io/InterruptedIOException"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000449	# type_token_id
	.ascii	"java/io/OutputStream"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200044b	# type_token_id
	.ascii	"java/io/PrintWriter"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200044c	# type_token_id
	.ascii	"java/io/Reader"	# java_name
	.zero	88	# byteCount == 14; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/io/Serializable"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200044e	# type_token_id
	.ascii	"java/io/StringWriter"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200044f	# type_token_id
	.ascii	"java/io/Writer"	# java_name
	.zero	88	# byteCount == 14; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000408	# type_token_id
	.ascii	"java/lang/AbstractMethodError"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/Appendable"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/AutoCloseable"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003f4	# type_token_id
	.ascii	"java/lang/Boolean"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003f5	# type_token_id
	.ascii	"java/lang/Byte"	# java_name
	.zero	88	# byteCount == 14; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/CharSequence"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003f6	# type_token_id
	.ascii	"java/lang/Character"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003f7	# type_token_id
	.ascii	"java/lang/Class"	# java_name
	.zero	87	# byteCount == 15; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000409	# type_token_id
	.ascii	"java/lang/ClassCastException"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200040a	# type_token_id
	.ascii	"java/lang/ClassLoader"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003f8	# type_token_id
	.ascii	"java/lang/ClassNotFoundException"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/Cloneable"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/Comparable"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003f9	# type_token_id
	.ascii	"java/lang/Double"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200040c	# type_token_id
	.ascii	"java/lang/Enum"	# java_name
	.zero	88	# byteCount == 14; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200040e	# type_token_id
	.ascii	"java/lang/Error"	# java_name
	.zero	87	# byteCount == 15; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003fa	# type_token_id
	.ascii	"java/lang/Exception"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003fb	# type_token_id
	.ascii	"java/lang/Float"	# java_name
	.zero	87	# byteCount == 15; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200041b	# type_token_id
	.ascii	"java/lang/IllegalArgumentException"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200041c	# type_token_id
	.ascii	"java/lang/IllegalStateException"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200041d	# type_token_id
	.ascii	"java/lang/IncompatibleClassChangeError"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200041e	# type_token_id
	.ascii	"java/lang/IndexOutOfBoundsException"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003fd	# type_token_id
	.ascii	"java/lang/Integer"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/Iterable"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000423	# type_token_id
	.ascii	"java/lang/LinkageError"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003fe	# type_token_id
	.ascii	"java/lang/Long"	# java_name
	.zero	88	# byteCount == 14; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000424	# type_token_id
	.ascii	"java/lang/NoClassDefFoundError"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000425	# type_token_id
	.ascii	"java/lang/NullPointerException"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000426	# type_token_id
	.ascii	"java/lang/Number"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003ff	# type_token_id
	.ascii	"java/lang/Object"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/Readable"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000428	# type_token_id
	.ascii	"java/lang/ReflectiveOperationException"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/Runnable"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000429	# type_token_id
	.ascii	"java/lang/Runtime"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000401	# type_token_id
	.ascii	"java/lang/RuntimeException"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200042a	# type_token_id
	.ascii	"java/lang/SecurityException"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000402	# type_token_id
	.ascii	"java/lang/Short"	# java_name
	.zero	87	# byteCount == 15; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000403	# type_token_id
	.ascii	"java/lang/String"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000405	# type_token_id
	.ascii	"java/lang/Thread"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000407	# type_token_id
	.ascii	"java/lang/Throwable"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200042b	# type_token_id
	.ascii	"java/lang/UnsupportedOperationException"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/annotation/Annotation"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200042e	# type_token_id
	.ascii	"java/lang/reflect/AccessibleObject"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/reflect/AnnotatedElement"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200042f	# type_token_id
	.ascii	"java/lang/reflect/Executable"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/reflect/GenericDeclaration"	# java_name
	.zero	66	# byteCount == 36; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/reflect/Member"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200043b	# type_token_id
	.ascii	"java/lang/reflect/Method"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/reflect/Type"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/lang/reflect/TypeVariable"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003a4	# type_token_id
	.ascii	"java/net/ConnectException"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003a6	# type_token_id
	.ascii	"java/net/HttpURLConnection"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003a8	# type_token_id
	.ascii	"java/net/InetSocketAddress"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003a9	# type_token_id
	.ascii	"java/net/ProtocolException"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003aa	# type_token_id
	.ascii	"java/net/Proxy"	# java_name
	.zero	88	# byteCount == 14; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003ab	# type_token_id
	.ascii	"java/net/Proxy$Type"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003ac	# type_token_id
	.ascii	"java/net/ProxySelector"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003ae	# type_token_id
	.ascii	"java/net/SocketAddress"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003b0	# type_token_id
	.ascii	"java/net/SocketException"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003b1	# type_token_id
	.ascii	"java/net/SocketTimeoutException"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003b3	# type_token_id
	.ascii	"java/net/URI"	# java_name
	.zero	90	# byteCount == 12; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003b4	# type_token_id
	.ascii	"java/net/URL"	# java_name
	.zero	90	# byteCount == 12; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003b5	# type_token_id
	.ascii	"java/net/URLConnection"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003b2	# type_token_id
	.ascii	"java/net/UnknownServiceException"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003d3	# type_token_id
	.ascii	"java/nio/Buffer"	# java_name
	.zero	87	# byteCount == 15; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003d7	# type_token_id
	.ascii	"java/nio/ByteBuffer"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003d4	# type_token_id
	.ascii	"java/nio/CharBuffer"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003da	# type_token_id
	.ascii	"java/nio/FloatBuffer"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003dc	# type_token_id
	.ascii	"java/nio/IntBuffer"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/ByteChannel"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/Channel"	# java_name
	.zero	77	# byteCount == 25; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003e0	# type_token_id
	.ascii	"java/nio/channels/FileChannel"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/GatheringByteChannel"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/InterruptibleChannel"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/ReadableByteChannel"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/ScatteringByteChannel"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/SeekableByteChannel"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/nio/channels/WritableByteChannel"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003f2	# type_token_id
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"	# java_name
	.zero	52	# byteCount == 50; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003de	# type_token_id
	.ascii	"java/nio/charset/Charset"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003c6	# type_token_id
	.ascii	"java/security/KeyStore"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/security/KeyStore$LoadStoreParameter"	# java_name
	.zero	61	# byteCount == 41; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/security/KeyStore$ProtectionParameter"	# java_name
	.zero	60	# byteCount == 42; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/security/Principal"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003cb	# type_token_id
	.ascii	"java/security/SecureRandom"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003cc	# type_token_id
	.ascii	"java/security/cert/Certificate"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003ce	# type_token_id
	.ascii	"java/security/cert/CertificateFactory"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003d1	# type_token_id
	.ascii	"java/security/cert/X509Certificate"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/security/cert/X509Extension"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200039e	# type_token_id
	.ascii	"java/text/DecimalFormat"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200039f	# type_token_id
	.ascii	"java/text/DecimalFormatSymbols"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003a2	# type_token_id
	.ascii	"java/text/Format"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003a0	# type_token_id
	.ascii	"java/text/NumberFormat"	# java_name
	.zero	80	# byteCount == 22; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200037d	# type_token_id
	.ascii	"java/util/ArrayList"	# java_name
	.zero	83	# byteCount == 19; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000372	# type_token_id
	.ascii	"java/util/Collection"	# java_name
	.zero	82	# byteCount == 20; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/util/Enumeration"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/util/EventListener"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003b7	# type_token_id
	.ascii	"java/util/EventObject"	# java_name
	.zero	81	# byteCount == 21; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000374	# type_token_id
	.ascii	"java/util/HashMap"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000382	# type_token_id
	.ascii	"java/util/HashSet"	# java_name
	.zero	85	# byteCount == 17; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/util/Iterator"	# java_name
	.zero	84	# byteCount == 18; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003be	# type_token_id
	.ascii	"java/util/Random"	# java_name
	.zero	86	# byteCount == 16; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/util/concurrent/Executor"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"java/util/concurrent/Future"	# java_name
	.zero	75	# byteCount == 27; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20003c3	# type_token_id
	.ascii	"java/util/concurrent/TimeUnit"	# java_name
	.zero	73	# byteCount == 29; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000d2	# type_token_id
	.ascii	"javax/microedition/khronos/egl/EGLConfig"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/microedition/khronos/opengles/GL"	# java_name
	.zero	64	# byteCount == 38; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/microedition/khronos/opengles/GL10"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000b9	# type_token_id
	.ascii	"javax/net/SocketFactory"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/net/ssl/HostnameVerifier"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000bb	# type_token_id
	.ascii	"javax/net/ssl/HttpsURLConnection"	# java_name
	.zero	70	# byteCount == 32; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/net/ssl/KeyManager"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000c9	# type_token_id
	.ascii	"javax/net/ssl/KeyManagerFactory"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000ca	# type_token_id
	.ascii	"javax/net/ssl/SSLContext"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/net/ssl/SSLSession"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/net/ssl/SSLSessionContext"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000cb	# type_token_id
	.ascii	"javax/net/ssl/SSLSocketFactory"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/net/ssl/TrustManager"	# java_name
	.zero	76	# byteCount == 26; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000cd	# type_token_id
	.ascii	"javax/net/ssl/TrustManagerFactory"	# java_name
	.zero	69	# byteCount == 33; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"javax/net/ssl/X509TrustManager"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000b5	# type_token_id
	.ascii	"javax/security/cert/Certificate"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000b7	# type_token_id
	.ascii	"javax/security/cert/X509Certificate"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000466	# type_token_id
	.ascii	"mono/android/TypeManager"	# java_name
	.zero	78	# byteCount == 24; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002dd	# type_token_id
	.ascii	"mono/android/animation/AnimatorEventDispatcher"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002e2	# type_token_id
	.ascii	"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor"	# java_name
	.zero	32	# byteCount == 70; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002fd	# type_token_id
	.ascii	"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor"	# java_name
	.zero	40	# byteCount == 62; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20002f1	# type_token_id
	.ascii	"mono/android/app/TabEventDispatcher"	# java_name
	.zero	67	# byteCount == 35; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200032e	# type_token_id
	.ascii	"mono/android/content/DialogInterface_OnCancelListenerImplementor"	# java_name
	.zero	38	# byteCount == 64; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000332	# type_token_id
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"	# java_name
	.zero	39	# byteCount == 63; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000335	# type_token_id
	.ascii	"mono/android/content/DialogInterface_OnDismissListenerImplementor"	# java_name
	.zero	37	# byteCount == 65; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000279	# type_token_id
	.ascii	"mono/android/media/MediaPlayer_OnBufferingUpdateListenerImplementor"	# java_name
	.zero	35	# byteCount == 67; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200036e	# type_token_id
	.ascii	"mono/android/runtime/InputStreamAdapter"	# java_name
	.zero	63	# byteCount == 39; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"mono/android/runtime/JavaArray"	# java_name
	.zero	72	# byteCount == 30; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200037f	# type_token_id
	.ascii	"mono/android/runtime/JavaObject"	# java_name
	.zero	71	# byteCount == 31; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000391	# type_token_id
	.ascii	"mono/android/runtime/OutputStreamAdapter"	# java_name
	.zero	62	# byteCount == 40; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200001b	# type_token_id
	.ascii	"mono/android/support/design/widget/AppBarLayout_OnOffsetChangedListenerImplementor"	# java_name
	.zero	20	# byteCount == 82; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000028	# type_token_id
	.ascii	"mono/android/support/design/widget/BottomNavigationView_OnNavigationItemReselectedListenerImplementor"	# java_name
	.zero	1	# byteCount == 101; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200002c	# type_token_id
	.ascii	"mono/android/support/design/widget/BottomNavigationView_OnNavigationItemSelectedListenerImplementor"	# java_name
	.zero	3	# byteCount == 99; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x2000039	# type_token_id
	.ascii	"mono/android/support/design/widget/SwipeDismissBehavior_OnDismissListenerImplementor"	# java_name
	.zero	18	# byteCount == 84; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x12	# module_index
	.long	0x200000e	# type_token_id
	.ascii	"mono/android/support/design/widget/TabLayout_BaseOnTabSelectedListenerImplementor"	# java_name
	.zero	21	# byteCount == 81; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x14	# module_index
	.long	0x200000c	# type_token_id
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"	# java_name
	.zero	21	# byteCount == 81; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x2000017	# type_token_id
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"	# java_name
	.zero	24	# byteCount == 78; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200001b	# type_token_id
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"	# java_name
	.zero	29	# byteCount == 73; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xe	# module_index
	.long	0x2000008	# type_token_id
	.ascii	"mono/android/support/v4/view/ViewPager_OnAdapterChangeListenerImplementor"	# java_name
	.zero	29	# byteCount == 73; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xe	# module_index
	.long	0x200000e	# type_token_id
	.ascii	"mono/android/support/v4/view/ViewPager_OnPageChangeListenerImplementor"	# java_name
	.zero	32	# byteCount == 70; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x15	# module_index
	.long	0x2000009	# type_token_id
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"	# java_name
	.zero	33	# byteCount == 69; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xc	# module_index
	.long	0x200000e	# type_token_id
	.ascii	"mono/android/support/v4/widget/NestedScrollView_OnScrollChangeListenerImplementor"	# java_name
	.zero	21	# byteCount == 81; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x11	# module_index
	.long	0x2000007	# type_token_id
	.ascii	"mono/android/support/v4/widget/SwipeRefreshLayout_OnRefreshListenerImplementor"	# java_name
	.zero	24	# byteCount == 78; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200000f	# type_token_id
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"	# java_name
	.zero	29	# byteCount == 73; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000025	# type_token_id
	.ascii	"mono/android/support/v7/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor"	# java_name
	.zero	15	# byteCount == 87; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x200002d	# type_token_id
	.ascii	"mono/android/support/v7/widget/RecyclerView_OnItemTouchListenerImplementor"	# java_name
	.zero	28	# byteCount == 74; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x7	# module_index
	.long	0x2000035	# type_token_id
	.ascii	"mono/android/support/v7/widget/RecyclerView_RecyclerListenerImplementor"	# java_name
	.zero	31	# byteCount == 71; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0x1	# module_index
	.long	0x200002b	# type_token_id
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"	# java_name
	.zero	29	# byteCount == 73; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200015c	# type_token_id
	.ascii	"mono/android/view/View_OnAttachStateChangeListenerImplementor"	# java_name
	.zero	41	# byteCount == 61; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200015f	# type_token_id
	.ascii	"mono/android/view/View_OnClickListenerImplementor"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000169	# type_token_id
	.ascii	"mono/android/view/View_OnKeyListenerImplementor"	# java_name
	.zero	55	# byteCount == 47; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x200016d	# type_token_id
	.ascii	"mono/android/view/View_OnLayoutChangeListenerImplementor"	# java_name
	.zero	46	# byteCount == 56; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000171	# type_token_id
	.ascii	"mono/android/view/View_OnTouchListenerImplementor"	# java_name
	.zero	53	# byteCount == 49; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000102	# type_token_id
	.ascii	"mono/android/widget/AdapterView_OnItemClickListenerImplementor"	# java_name
	.zero	40	# byteCount == 62; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000400	# type_token_id
	.ascii	"mono/java/lang/Runnable"	# java_name
	.zero	79	# byteCount == 23; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x2000406	# type_token_id
	.ascii	"mono/java/lang/RunnableImplementor"	# java_name
	.zero	68	# byteCount == 34; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x0	# type_token_id
	.ascii	"org/xmlpull/v1/XmlPullParser"	# java_name
	.zero	74	# byteCount == 28; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000b3	# type_token_id
	.ascii	"org/xmlpull/v1/XmlPullParserException"	# java_name
	.zero	65	# byteCount == 37; fixedWidth == 102; returned size == 102
	.zero	2

	.long	0xd	# module_index
	.long	0x20000b0	# type_token_id
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"	# java_name
	.zero	56	# byteCount == 46; fixedWidth == 102; returned size == 102
	.zero	2

	.size	map_java, 107968
	# Java to managed map: END

	.ident	"Xamarin.Android remotes/origin/d17-2 @ 4e061b739747f624ccb03c98940d8900548a98ad"

; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [141 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [282 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 106
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 105
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 120
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 133
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 68219467, ; 5: System.Security.Cryptography.Primitives => 0x410f24b => 126
	i32 72070932, ; 6: Microsoft.Maui.Graphics.dll => 0x44bb714 => 48
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 119
	i32 122350210, ; 8: System.Threading.Channels.dll => 0x74aea82 => 132
	i32 142721839, ; 9: System.Net.WebHeaderCollection => 0x881c32f => 112
	i32 149972175, ; 10: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 126
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 58
	i32 182336117, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 76
	i32 195452805, ; 13: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 14: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 15: System.ComponentModel => 0xc38ff48 => 92
	i32 280992041, ; 16: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 17: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 54
	i32 336156722, ; 19: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 65
	i32 356389973, ; 21: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 375677976, ; 22: System.Net.ServicePoint.dll => 0x16646418 => 110
	i32 379916513, ; 23: System.Threading.Thread.dll => 0x16a510e1 => 133
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 103
	i32 395744057, ; 25: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 26: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 89
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 451504562, ; 29: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 127
	i32 469710990, ; 30: System.dll => 0x1bff388e => 136
	i32 498788369, ; 31: System.ObjectModel => 0x1dbae811 => 114
	i32 500358224, ; 32: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 33: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 34: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 43
	i32 530272170, ; 35: System.Linq.Queryable => 0x1f9b4faa => 101
	i32 539058512, ; 36: Microsoft.Extensions.Logging => 0x20216150 => 40
	i32 540030774, ; 37: System.IO.FileSystem.dll => 0x20303736 => 99
	i32 592146354, ; 38: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 613668793, ; 39: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 125
	i32 627609679, ; 40: Xamarin.AndroidX.CustomView => 0x2568904f => 62
	i32 627931235, ; 41: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 42: System.Collections.Concurrent => 0x2814a96c => 86
	i32 683518922, ; 43: System.Net.Security => 0x28bdabca => 109
	i32 688181140, ; 44: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 45: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 46: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 47: System.Runtime.Loader.dll => 0x2b15ed29 => 121
	i32 759454413, ; 48: System.Net.Requests => 0x2d445acd => 108
	i32 775507847, ; 49: System.IO.Compression => 0x2e394f87 => 98
	i32 777317022, ; 50: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 51: Microsoft.Extensions.Options => 0x2f0980eb => 42
	i32 823281589, ; 52: System.Private.Uri.dll => 0x311247b5 => 115
	i32 830298997, ; 53: System.IO.Compression.Brotli => 0x317d5b75 => 97
	i32 904024072, ; 54: System.ComponentModel.Primitives.dll => 0x35e25008 => 90
	i32 926902833, ; 55: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 56: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 65
	i32 992768348, ; 57: System.Collections.dll => 0x3b2c715c => 89
	i32 994442037, ; 58: System.IO.FileSystem => 0x3b45fb35 => 99
	i32 1012816738, ; 59: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 75
	i32 1028951442, ; 60: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 39
	i32 1029334545, ; 61: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 62: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 55
	i32 1044663988, ; 63: System.Linq.Expressions.dll => 0x3e444eb4 => 100
	i32 1052210849, ; 64: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 67
	i32 1082857460, ; 65: System.ComponentModel.TypeConverter => 0x408b17f4 => 91
	i32 1084122840, ; 66: Xamarin.Kotlin.StdLib => 0x409e66d8 => 80
	i32 1098259244, ; 67: System => 0x41761b2c => 136
	i32 1111289522, ; 68: DnsClient.dll => 0x423ceeb2 => 35
	i32 1118262833, ; 69: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 70: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 71: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 72
	i32 1203215381, ; 72: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 73: System.Diagnostics.Process => 0x480a69ad => 94
	i32 1234928153, ; 74: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1253011324, ; 75: Microsoft.Win32.Registry => 0x4aaf6f7c => 85
	i32 1260983243, ; 76: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 77: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1324164729, ; 78: System.Linq => 0x4eed2679 => 102
	i32 1373134921, ; 79: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 80: Xamarin.AndroidX.SavedState => 0x52114ed3 => 75
	i32 1391893274, ; 81: MongoDB.Bson.dll => 0x52f69b1a => 49
	i32 1406073936, ; 82: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 59
	i32 1408764838, ; 83: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 123
	i32 1411638395, ; 84: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 117
	i32 1430672901, ; 85: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 86: System.Formats.Asn1.dll => 0x568cd628 => 96
	i32 1458022317, ; 87: System.Net.Security.dll => 0x56e7a7ad => 109
	i32 1461004990, ; 88: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 89: System.IO.Compression.dll => 0x57261233 => 98
	i32 1469204771, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 56
	i32 1470490898, ; 91: Microsoft.Extensions.Primitives => 0x57a5e912 => 43
	i32 1480492111, ; 92: System.IO.Compression.Brotli.dll => 0x583e844f => 97
	i32 1487239319, ; 93: Microsoft.Win32.Primitives => 0x58a57897 => 84
	i32 1493001747, ; 94: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 95: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 96: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 131
	i32 1551623176, ; 97: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 98: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 69
	i32 1624863272, ; 99: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 78
	i32 1636350590, ; 100: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 61
	i32 1639515021, ; 101: System.Net.Http.dll => 0x61b9038d => 104
	i32 1639986890, ; 102: System.Text.RegularExpressions => 0x61c036ca => 131
	i32 1657153582, ; 103: System.Runtime => 0x62c6282e => 124
	i32 1658251792, ; 104: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 79
	i32 1677501392, ; 105: System.Net.Primitives.dll => 0x63fca3d0 => 107
	i32 1679769178, ; 106: System.Security.Cryptography => 0x641f3e5a => 128
	i32 1729485958, ; 107: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 57
	i32 1736233607, ; 108: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 109: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1750313021, ; 110: Microsoft.Win32.Primitives.dll => 0x6853a83d => 84
	i32 1763938596, ; 111: System.Diagnostics.TraceSource.dll => 0x69239124 => 95
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 76
	i32 1770582343, ; 113: Microsoft.Extensions.Logging.dll => 0x6988f147 => 40
	i32 1780572499, ; 114: Mono.Android.Runtime.dll => 0x6a216153 => 139
	i32 1782862114, ; 115: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 116: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1793755602, ; 117: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1807397336, ; 118: MongoDB.Driver => 0x6bbab1d8 => 50
	i32 1808609942, ; 119: Xamarin.AndroidX.Loader => 0x6bcd3296 => 69
	i32 1813058853, ; 120: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 80
	i32 1813201214, ; 121: Xamarin.Google.Android.Material => 0x6c13413e => 79
	i32 1818569960, ; 122: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 73
	i32 1824175904, ; 123: System.Text.Encoding.Extensions => 0x6cbab720 => 130
	i32 1824722060, ; 124: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 123
	i32 1828688058, ; 125: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 41
	i32 1835989518, ; 126: Snappier => 0x6d6efa0e => 52
	i32 1842015223, ; 127: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 128: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 129: System.Linq.Expressions => 0x6ec71a65 => 100
	i32 1875935024, ; 130: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 131: System.Collections.NonGeneric.dll => 0x71dc7c8b => 87
	i32 1968388702, ; 132: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 36
	i32 2003115576, ; 133: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 134: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 67
	i32 2025202353, ; 135: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 136: System.Private.Xml => 0x79eb68ee => 116
	i32 2055257422, ; 137: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 66
	i32 2066184531, ; 138: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 139: System.Diagnostics.TraceSource => 0x7b6f419e => 95
	i32 2079903147, ; 140: System.Runtime.dll => 0x7bf8cdab => 124
	i32 2090596640, ; 141: System.Numerics.Vectors => 0x7c9bf920 => 113
	i32 2127167465, ; 142: System.Console => 0x7ec9ffe9 => 93
	i32 2142473426, ; 143: System.Collections.Specialized => 0x7fb38cd2 => 88
	i32 2159891885, ; 144: Microsoft.Maui => 0x80bd55ad => 46
	i32 2169148018, ; 145: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 146: Microsoft.Extensions.Options.dll => 0x820d22b3 => 42
	i32 2192057212, ; 147: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 41
	i32 2193016926, ; 148: System.ObjectModel.dll => 0x82b6c85e => 114
	i32 2201107256, ; 149: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 81
	i32 2201231467, ; 150: System.Net.Http => 0x8334206b => 104
	i32 2207618523, ; 151: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 152: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 37
	i32 2270573516, ; 153: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 154: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 74
	i32 2290594010, ; 155: SharpCompress.dll => 0x8887b0da => 51
	i32 2295906218, ; 156: System.Net.Sockets => 0x88d8bfaa => 111
	i32 2303942373, ; 157: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 158: System.Private.CoreLib.dll => 0x896b7878 => 137
	i32 2340441535, ; 159: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 118
	i32 2353062107, ; 160: System.Net.Primitives => 0x8c40e0db => 107
	i32 2368005991, ; 161: System.Xml.ReaderWriter.dll => 0x8d24e767 => 135
	i32 2371007202, ; 162: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 36
	i32 2395872292, ; 163: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 164: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 165: System.Console.dll => 0x912896e5 => 93
	i32 2458678730, ; 166: System.Net.Sockets.dll => 0x928c75ca => 111
	i32 2475788418, ; 167: Java.Interop.dll => 0x93918882 => 138
	i32 2480646305, ; 168: Microsoft.Maui.Controls => 0x93dba8a1 => 44
	i32 2484371297, ; 169: System.Net.ServicePoint => 0x94147f61 => 110
	i32 2550873716, ; 170: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2585220780, ; 171: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 130
	i32 2593496499, ; 172: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 173: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 81
	i32 2611359322, ; 174: ZstdSharp.dll => 0x9ba62e5a => 82
	i32 2617129537, ; 175: System.Private.Xml.dll => 0x9bfe3a41 => 116
	i32 2620871830, ; 176: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 61
	i32 2626831493, ; 177: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 178: System.Runtime.Loader => 0x9ec4cf01 => 121
	i32 2724373263, ; 179: System.Runtime.Numerics.dll => 0xa262a30f => 122
	i32 2725980451, ; 180: SharpCompress => 0xa27b2923 => 51
	i32 2732626843, ; 181: Xamarin.AndroidX.Activity => 0xa2e0939b => 54
	i32 2735172069, ; 182: System.Threading.Channels => 0xa30769e5 => 132
	i32 2737747696, ; 183: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 56
	i32 2752995522, ; 184: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 185: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 45
	i32 2764765095, ; 186: Microsoft.Maui.dll => 0xa4caf7a7 => 46
	i32 2765824710, ; 187: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 129
	i32 2778768386, ; 188: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 77
	i32 2785988530, ; 189: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 190: Microsoft.Maui.Graphics => 0xa7008e0b => 48
	i32 2806116107, ; 191: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 192: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 59
	i32 2831556043, ; 193: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 194: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 77
	i32 2861189240, ; 195: Microsoft.Maui.Essentials => 0xaa8a4878 => 47
	i32 2909740682, ; 196: System.Private.CoreLib => 0xad6f1e8a => 137
	i32 2916838712, ; 197: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 78
	i32 2919462931, ; 198: System.Numerics.Vectors.dll => 0xae037813 => 113
	i32 2938791923, ; 199: TicketApp => 0xaf2a67f3 => 83
	i32 2959614098, ; 200: System.ComponentModel.dll => 0xb0682092 => 92
	i32 2972252294, ; 201: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 125
	i32 2978675010, ; 202: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 3038032645, ; 203: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 204: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 70
	i32 3059408633, ; 205: Mono.Android.Runtime => 0xb65adef9 => 139
	i32 3059793426, ; 206: System.ComponentModel.Primitives => 0xb660be12 => 90
	i32 3077302341, ; 207: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3089219899, ; 208: ZstdSharp => 0xb821c13b => 82
	i32 3090735792, ; 209: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 127
	i32 3103600923, ; 210: System.Formats.Asn1 => 0xb8fd311b => 96
	i32 3173064269, ; 211: DnsClient => 0xbd211e4d => 35
	i32 3178803400, ; 212: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 71
	i32 3190256101, ; 213: TicketApp.dll => 0xbe2771e5 => 83
	i32 3220365878, ; 214: System.Threading => 0xbff2e236 => 134
	i32 3252856589, ; 215: MongoDB.Driver.dll => 0xc1e2a70d => 50
	i32 3258312781, ; 216: Xamarin.AndroidX.CardView => 0xc235e84d => 57
	i32 3258876633, ; 217: MongoDB.Bson => 0xc23e82d9 => 49
	i32 3265493905, ; 218: System.Linq.Queryable.dll => 0xc2a37b91 => 101
	i32 3279906254, ; 219: Microsoft.Win32.Registry.dll => 0xc37f65ce => 85
	i32 3305363605, ; 220: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 221: System.Net.Requests.dll => 0xc5b097e4 => 108
	i32 3317135071, ; 222: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 62
	i32 3346324047, ; 223: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 72
	i32 3357674450, ; 224: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3362522851, ; 225: Xamarin.AndroidX.Core => 0xc86c06e3 => 60
	i32 3366347497, ; 226: Java.Interop => 0xc8a662e9 => 138
	i32 3374999561, ; 227: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 74
	i32 3381016424, ; 228: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3395150330, ; 229: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 117
	i32 3428513518, ; 230: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 38
	i32 3463511458, ; 231: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 232: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 91
	i32 3476120550, ; 233: Mono.Android => 0xcf3163e6 => 140
	i32 3479583265, ; 234: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 235: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 236: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 237: System.Linq.dll => 0xd715a361 => 102
	i32 3624195450, ; 238: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 118
	i32 3641597786, ; 239: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 66
	i32 3643446276, ; 240: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 241: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 71
	i32 3657292374, ; 242: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 37
	i32 3660523487, ; 243: System.Net.NetworkInformation => 0xda2f27df => 106
	i32 3672681054, ; 244: Mono.Android.dll => 0xdae8aa5e => 140
	i32 3697841164, ; 245: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3716563718, ; 246: System.Runtime.Intrinsics => 0xdd864306 => 120
	i32 3724971120, ; 247: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 70
	i32 3732100267, ; 248: System.Net.NameResolution => 0xde7354ab => 105
	i32 3748608112, ; 249: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 53
	i32 3786282454, ; 250: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 58
	i32 3791210109, ; 251: Snappier.dll => 0xe1f9467d => 52
	i32 3792276235, ; 252: System.Collections.NonGeneric => 0xe2098b0b => 87
	i32 3802395368, ; 253: System.Collections.Specialized.dll => 0xe2a3f2e8 => 88
	i32 3823082795, ; 254: System.Security.Cryptography.dll => 0xe3df9d2b => 128
	i32 3841636137, ; 255: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 39
	i32 3849253459, ; 256: System.Runtime.InteropServices.dll => 0xe56ef253 => 119
	i32 3885497537, ; 257: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 112
	i32 3889960447, ; 258: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 259: System.Collections.Concurrent.dll => 0xe839deed => 86
	i32 3896760992, ; 260: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 60
	i32 3928044579, ; 261: System.Xml.ReaderWriter => 0xea213423 => 135
	i32 3931092270, ; 262: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 73
	i32 3953953790, ; 263: System.Text.Encoding.CodePages => 0xebac8bfe => 129
	i32 3955647286, ; 264: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 55
	i32 3980434154, ; 265: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 266: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 267: System.Diagnostics.Process.dll => 0xee9f991d => 94
	i32 4025784931, ; 268: System.Memory => 0xeff49a63 => 103
	i32 4046471985, ; 269: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 45
	i32 4073602200, ; 270: System.Threading.dll => 0xf2ce3c98 => 134
	i32 4094352644, ; 271: Microsoft.Maui.Essentials.dll => 0xf40add04 => 47
	i32 4100113165, ; 272: System.Private.Uri => 0xf462c30d => 115
	i32 4102112229, ; 273: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 274: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 275: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 38
	i32 4150914736, ; 276: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 68
	i32 4213026141, ; 278: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 53
	i32 4271975918, ; 279: Microsoft.Maui.Controls.dll => 0xfea12dee => 44
	i32 4274976490, ; 280: System.Runtime.Numerics => 0xfecef6ea => 122
	i32 4292120959 ; 281: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 68
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [282 x i32] [
	i32 106, ; 0
	i32 105, ; 1
	i32 120, ; 2
	i32 133, ; 3
	i32 33, ; 4
	i32 126, ; 5
	i32 48, ; 6
	i32 119, ; 7
	i32 132, ; 8
	i32 112, ; 9
	i32 126, ; 10
	i32 58, ; 11
	i32 76, ; 12
	i32 30, ; 13
	i32 31, ; 14
	i32 92, ; 15
	i32 2, ; 16
	i32 30, ; 17
	i32 54, ; 18
	i32 15, ; 19
	i32 65, ; 20
	i32 14, ; 21
	i32 110, ; 22
	i32 133, ; 23
	i32 103, ; 24
	i32 34, ; 25
	i32 26, ; 26
	i32 89, ; 27
	i32 64, ; 28
	i32 127, ; 29
	i32 136, ; 30
	i32 114, ; 31
	i32 13, ; 32
	i32 7, ; 33
	i32 43, ; 34
	i32 101, ; 35
	i32 40, ; 36
	i32 99, ; 37
	i32 21, ; 38
	i32 125, ; 39
	i32 62, ; 40
	i32 19, ; 41
	i32 86, ; 42
	i32 109, ; 43
	i32 1, ; 44
	i32 16, ; 45
	i32 4, ; 46
	i32 121, ; 47
	i32 108, ; 48
	i32 98, ; 49
	i32 25, ; 50
	i32 42, ; 51
	i32 115, ; 52
	i32 97, ; 53
	i32 90, ; 54
	i32 28, ; 55
	i32 65, ; 56
	i32 89, ; 57
	i32 99, ; 58
	i32 75, ; 59
	i32 39, ; 60
	i32 3, ; 61
	i32 55, ; 62
	i32 100, ; 63
	i32 67, ; 64
	i32 91, ; 65
	i32 80, ; 66
	i32 136, ; 67
	i32 35, ; 68
	i32 16, ; 69
	i32 22, ; 70
	i32 72, ; 71
	i32 20, ; 72
	i32 94, ; 73
	i32 18, ; 74
	i32 85, ; 75
	i32 2, ; 76
	i32 63, ; 77
	i32 102, ; 78
	i32 32, ; 79
	i32 75, ; 80
	i32 49, ; 81
	i32 59, ; 82
	i32 123, ; 83
	i32 117, ; 84
	i32 0, ; 85
	i32 96, ; 86
	i32 109, ; 87
	i32 6, ; 88
	i32 98, ; 89
	i32 56, ; 90
	i32 43, ; 91
	i32 97, ; 92
	i32 84, ; 93
	i32 10, ; 94
	i32 5, ; 95
	i32 131, ; 96
	i32 25, ; 97
	i32 69, ; 98
	i32 78, ; 99
	i32 61, ; 100
	i32 104, ; 101
	i32 131, ; 102
	i32 124, ; 103
	i32 79, ; 104
	i32 107, ; 105
	i32 128, ; 106
	i32 57, ; 107
	i32 23, ; 108
	i32 1, ; 109
	i32 84, ; 110
	i32 95, ; 111
	i32 76, ; 112
	i32 40, ; 113
	i32 139, ; 114
	i32 17, ; 115
	i32 64, ; 116
	i32 9, ; 117
	i32 50, ; 118
	i32 69, ; 119
	i32 80, ; 120
	i32 79, ; 121
	i32 73, ; 122
	i32 130, ; 123
	i32 123, ; 124
	i32 41, ; 125
	i32 52, ; 126
	i32 29, ; 127
	i32 26, ; 128
	i32 100, ; 129
	i32 8, ; 130
	i32 87, ; 131
	i32 36, ; 132
	i32 5, ; 133
	i32 67, ; 134
	i32 0, ; 135
	i32 116, ; 136
	i32 66, ; 137
	i32 4, ; 138
	i32 95, ; 139
	i32 124, ; 140
	i32 113, ; 141
	i32 93, ; 142
	i32 88, ; 143
	i32 46, ; 144
	i32 12, ; 145
	i32 42, ; 146
	i32 41, ; 147
	i32 114, ; 148
	i32 81, ; 149
	i32 104, ; 150
	i32 14, ; 151
	i32 37, ; 152
	i32 8, ; 153
	i32 74, ; 154
	i32 51, ; 155
	i32 111, ; 156
	i32 18, ; 157
	i32 137, ; 158
	i32 118, ; 159
	i32 107, ; 160
	i32 135, ; 161
	i32 36, ; 162
	i32 13, ; 163
	i32 10, ; 164
	i32 93, ; 165
	i32 111, ; 166
	i32 138, ; 167
	i32 44, ; 168
	i32 110, ; 169
	i32 11, ; 170
	i32 130, ; 171
	i32 20, ; 172
	i32 81, ; 173
	i32 82, ; 174
	i32 116, ; 175
	i32 61, ; 176
	i32 15, ; 177
	i32 121, ; 178
	i32 122, ; 179
	i32 51, ; 180
	i32 54, ; 181
	i32 132, ; 182
	i32 56, ; 183
	i32 21, ; 184
	i32 45, ; 185
	i32 46, ; 186
	i32 129, ; 187
	i32 77, ; 188
	i32 27, ; 189
	i32 48, ; 190
	i32 6, ; 191
	i32 59, ; 192
	i32 19, ; 193
	i32 77, ; 194
	i32 47, ; 195
	i32 137, ; 196
	i32 78, ; 197
	i32 113, ; 198
	i32 83, ; 199
	i32 92, ; 200
	i32 125, ; 201
	i32 63, ; 202
	i32 34, ; 203
	i32 70, ; 204
	i32 139, ; 205
	i32 90, ; 206
	i32 12, ; 207
	i32 82, ; 208
	i32 127, ; 209
	i32 96, ; 210
	i32 35, ; 211
	i32 71, ; 212
	i32 83, ; 213
	i32 134, ; 214
	i32 50, ; 215
	i32 57, ; 216
	i32 49, ; 217
	i32 101, ; 218
	i32 85, ; 219
	i32 7, ; 220
	i32 108, ; 221
	i32 62, ; 222
	i32 72, ; 223
	i32 24, ; 224
	i32 60, ; 225
	i32 138, ; 226
	i32 74, ; 227
	i32 3, ; 228
	i32 117, ; 229
	i32 38, ; 230
	i32 11, ; 231
	i32 91, ; 232
	i32 140, ; 233
	i32 24, ; 234
	i32 23, ; 235
	i32 31, ; 236
	i32 102, ; 237
	i32 118, ; 238
	i32 66, ; 239
	i32 28, ; 240
	i32 71, ; 241
	i32 37, ; 242
	i32 106, ; 243
	i32 140, ; 244
	i32 33, ; 245
	i32 120, ; 246
	i32 70, ; 247
	i32 105, ; 248
	i32 53, ; 249
	i32 58, ; 250
	i32 52, ; 251
	i32 87, ; 252
	i32 88, ; 253
	i32 128, ; 254
	i32 39, ; 255
	i32 119, ; 256
	i32 112, ; 257
	i32 32, ; 258
	i32 86, ; 259
	i32 60, ; 260
	i32 135, ; 261
	i32 73, ; 262
	i32 129, ; 263
	i32 55, ; 264
	i32 27, ; 265
	i32 9, ; 266
	i32 94, ; 267
	i32 103, ; 268
	i32 45, ; 269
	i32 134, ; 270
	i32 47, ; 271
	i32 115, ; 272
	i32 22, ; 273
	i32 17, ; 274
	i32 38, ; 275
	i32 29, ; 276
	i32 68, ; 277
	i32 53, ; 278
	i32 44, ; 279
	i32 122, ; 280
	i32 68 ; 281
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}

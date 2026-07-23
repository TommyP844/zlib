project "zlib"
	language "C"
	kind "StaticLib"
    architecture "x64"
    staticruntime "Off"
    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir    ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")
   
    includedirs 
    {
        ""
    }

	files
	{
        "zlib.h",
        "zconf.h",
        "crc32.h",
        "deflate.h",
        "gzguts.h",
        "inffast.h",
        "inffixed.h",
        "inflate.h",
        "inftrees.h",
        "trees.h",
        "zutil.h",

        "adler32.c",
        "compress.c",
        "crc32.c",
        "deflate.c",
        "gzclose.c",
        "gzlib.c",
        "gzread.c",
        "gzwrite.c",
        "infback.c",
        "inffast.c",
        "inflate.c",
        "inftrees.c",
        "trees.c",
        "uncompr.c",
        "zutil.c"
	}

	optimize "Speed"
	floatingpoint "Fast"
	intrinsics "On"

    filter { "configurations:Debug" }
        runtime "Debug"

    filter {"configurations:Release"}
        runtime "Release"

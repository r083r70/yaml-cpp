project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"

	targetdir ("bin/%{cfg.buildcfg}")
	objdir ("obj/%{cfg.buildcfg}" )

    includedirs { "include" }
    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }
    
    defines { "YAML_CPP_STATIC_DEFINE" }

    filter "system:windows"
        systemversion "latest"

    filter "system:linux"
        systemversion "latest"
        pic "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

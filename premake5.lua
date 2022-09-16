project "Lua"
    kind "StaticLib"
	language "C"
	cdialect "gnu99"

	targetdir ("bin/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}/%{prj.name}")
    objdir ("bin-obj/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}/%{prj.name}")

    files 
    {
        "*.h",
        "*.c",
    }

    removefiles
    {
        "onelua.c"
    }

--   Platform specific configurations

    filter "system:windows"
		systemversion "latest"

    filter "system:linux"
	    systemversion "latest"
	    pic "On"
        
--   Configurations

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

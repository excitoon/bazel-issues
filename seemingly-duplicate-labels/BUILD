package(default_visibility = ["//visibility:public"])

config_setting(
    name = "x64_windows",
    values = {
        "cpu": "x64_windows"
    }
)

config_setting(
    name = "x86_32_windows",
    values = {
        "cpu": "x86_32_windows"
    }
)

cc_binary(
    name = "hello",
    srcs = select({ "//conditions:default" : [], "//:x86_32_windows" : ["sources/hello.cpp"] })
        + [ "sources/common.cpp" ]
        + select({ "//conditions:default" : [], "//:x64_windows" : ["sources/hello.cpp"] })
)

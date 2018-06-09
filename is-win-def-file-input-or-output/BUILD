package(default_visibility = ["//visibility:public"])

load("//:generate_def.bzl", "generate_def")

generate_def("hello-world.dll")

cc_binary(
    name = "hello-world.dll",
    linkshared = 1,
    srcs = ["sources/hello-world.cpp"],
    win_def_file = "hello-world.dll.def"
)

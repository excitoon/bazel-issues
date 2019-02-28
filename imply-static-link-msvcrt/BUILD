package(default_visibility = ["//visibility:public"])


cc_binary(
    name = "hello-world-control",
    srcs = ["hello-world.cpp"],
    features = ["static_link_msvcrt"],
    linkopts = ["-DEFAULTLIB:libcmt.lib", "-WX"] # Ensuring static_link_msvcrt is enabled.
)

cc_binary(
    name = "hello-world",
    srcs = ["hello-world.cpp"],
    features = ["imply_static_link_msvcrt"],
    linkopts = ["-DEFAULTLIB:libcmt.lib", "-WX"] # Ensuring static_link_msvcrt is enabled.
)

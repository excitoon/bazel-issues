package(default_visibility = ["//visibility:public"])

genrule(
    name = "generate-header",
    tools = ["generate-header.py"],
    outs = ["header.h"],
    cmd = "python $(location generate-header.py) $@"
)

cc_inc_library(
    name = "include",
    hdrs = ["header.h"]
)

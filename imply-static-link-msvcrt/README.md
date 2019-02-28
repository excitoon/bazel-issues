### Usage

```
bazel build hello-world --crosstool_top=//toolchain:toolchain
```

This toolchain has the following addition in comparison to default 0.23.0:

```
    imply_static_link_msvcrt_feature = feature(
        name = "imply_static_link_msvcrt",
        implies = ["static_link_msvcrt"]
    )

    # ...

    features = [
        # ...
        imply_static_link_msvcrt_feature,
        # ...
    ]
```

### Output

```
INFO: Analysed target //:hello-world (0 packages loaded, 0 targets configured).
INFO: Found 1 target...
ERROR: C:/users/chebotarev_v/documents/src/bazel-issues/imply-static-link-msvcrt/BUILD:11:1: Linking of rule '//:hello-world' failed (Exit 4098)
LINK : warning LNK4098: defaultlib 'msvcrt.lib' conflicts with use of other libs; use /NODEFAULTLIB:library
LINK : error LNK1218: warning treated as error; no output file generated
Target //:hello-world failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 1.032s, Critical Path: 0.40s
INFO: 0 processes.
FAILED: Build did NOT complete successfully
```

### Bazel version

```
Build label: 0.23.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Tue Feb 26 17:40:30 2019 (1551202830)
Build timestamp: 1551202830
Build timestamp as int: 1551202830
```

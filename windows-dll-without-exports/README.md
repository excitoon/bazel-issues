### Output

```
C:\Users\Chebotarev_V\Documents\bazel-issues\windows-dll-without-exports>bazel build ...
INFO: Analysed target //:hellolib.dll (8 packages loaded).
INFO: Found 1 target...
ERROR: C:/users/chebotarev_v/documents/bazel-issues/windows-dll-without-exports/BUILD:3:1: output 'hellolib.ifso' was not created
ERROR: C:/users/chebotarev_v/documents/bazel-issues/windows-dll-without-exports/BUILD:3:1: not all outputs were created or valid
Target //:hellolib.dll failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 49.652s, Critical Path: 1.14s
FAILED: Build did NOT complete successfully
```

### Bazel version

```
Build label: 0.10.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Thu Nov 9 22:42:19 +50056 (1517474731339)
Build timestamp: 1517474731339
Build timestamp as int: 1517474731339
```

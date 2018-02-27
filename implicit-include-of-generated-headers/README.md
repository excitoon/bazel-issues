### Output

```
C:\Users\Chebotarev_V\Documents\src\bazel-issues\implicit-include-of-generated-headers>bazel.exe build ...
INFO: Analysed 3 targets (3 packages loaded).
INFO: Found 3 targets...
ERROR: C:/users/chebotarev_v/documents/src/bazel-issues/implicit-include-of-generated-headers/BUILD:3:1: undeclared inclusion(s) in rule '//:hello':
this rule is missing dependency declarations for the following files included by 'main.cpp':
  'bazel-out/x64_windows-fastbuild/genfiles/generated/header.h'
INFO: Elapsed time: 1.868s, Critical Path: 0.53s
FAILED: Build did NOT complete successfully
```

### Bazel version

```
Build label: 0.11.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Thu Dec 9 18:32:10 +50117 (1519402213930)
Build timestamp: 1519402213930
Build timestamp as int: 1519402213930
```

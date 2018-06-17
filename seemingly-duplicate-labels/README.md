### Output

```
C:\...cuments\src\bazel-issues\seemingly-duplicate-labels>bazel build ...
ERROR: C:/users/chebotarev_v/documents/src/bazel-issues/seemingly-duplicate-labels/BUILD:17:1: Label '//:sources/hello
.cpp' is duplicated in the 'srcs' attribute of rule 'hello'
ERROR: package contains errors:
ERROR: error loading package '': Package '' contains errors
INFO: Elapsed time: 0.864s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (1 packages loaded)
```

### Bazel version

```
Build label: 0.14.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Fri Jun 1 13:06:29 2018 (1527858389)
Build timestamp: 1527858389
Build timestamp as int: 1527858389
```

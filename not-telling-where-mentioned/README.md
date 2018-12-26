### Output

```
C:\Users\Chebotarev_V\Documents\src\bazel-issues\not-telling-where-mentioned>bazel build hello-world
INFO: Invocation ID: 23c775f6-50a7-438f-8d23-6b476560f26f
ERROR: Analysis of target '//:hello-world' failed; build aborted: no such package 'find_me': BUILD file not found on package path
INFO: Elapsed time: 0.682s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (9 packages loaded, 45 targets configured)
```

### Bazel version

```
Build label: 0.21.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Wed Dec 19 12:58:16 2018 (1545224296)
Build timestamp: 1545224296
Build timestamp as int: 1545224296
```

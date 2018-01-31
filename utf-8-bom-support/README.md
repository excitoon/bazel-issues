### Output

```
C:\Users\Chebotarev_V\Documents\bazel-issues\utf-8-bom-support>bazel build ...
........................
ERROR: C:/users/chebotarev_v/documents/bazel-issues/utf-8-bom-support/BUILD:1:1: invalid character: 'я'
ERROR: C:/users/chebotarev_v/documents/bazel-issues/utf-8-bom-support/BUILD:1:2: invalid character: '╗'
ERROR: C:/users/chebotarev_v/documents/bazel-issues/utf-8-bom-support/BUILD:1:3: invalid character: '┐'
ERROR: package contains errors:
ERROR: error loading package '': Package '' contains errors
INFO: Elapsed time: 5.202s
FAILED: Build did NOT complete successfully (1 packages loaded)
```

### Bazel version

```
Build label: 0.9.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Tue Dec 19 09:32:04 2017 (1513675924)
Build timestamp: 1513675924
Build timestamp as int: 1513675924
```

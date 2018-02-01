### Output

```
C:\Users\Chebotarev_V\Documents\bazel-issues\top-level-directories-starting-with-dot\.some-module>bazel build ...
INFO: Analysed target //.some-module:hello-world (8 packages loaded).
INFO: Found 1 target...
Target //.some-module:hello-world up-to-date:
  C:/t/_bazel_chebotarev_v/g7lg5zis/execroot/__main__/bazel-out/x64_windows-fastbuild/bin/.some-module/hello-world.exe
INFO: Elapsed time: 3.386s, Critical Path: 0.48s
INFO: Build completed successfully, 6 total actions

C:\Users\Chebotarev_V\Documents\bazel-issues\top-level-directories-starting-with-dot\.some-module>bazel build ...
INFO: Analysed target //.some-module:hello-world (0 packages loaded).
INFO: Found 1 target...
ERROR: Source forest creation failed: Cannot create junction (name=C:\t\_bazel_chebotarev_v\g7lg5zis\execroot\__main__\.some-module, target=C:\users\chebotarev_v\documents\bazel-issues\top-level-directories-starting-with-dot\.some-module): ERROR: src/main/native/windows/file-jni.cc(86): nativeCreateJunction(C:\t\_bazel_chebotarev_v\g7lg5zis\execroot\__main__\.some-module, C:\users\chebotarev_v\documents\bazel-issues\top-level-directories-starting-with-dot\.some-module): ERROR: src/main/native/windows/file.cc(128): CreateJunction(\\?\C:\t\_bazel_chebotarev_v\g7lg5zis\execroot\__main__\.some-module): Cannot create a file when that file already exists.
INFO: Elapsed time: 2.125s
FAILED: Build did NOT complete successfully
```

### Bazel version

```
Build label: 0.9.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Tue Dec 19 09:32:04 2017 (1513675924)
Build timestamp: 1513675924
Build timestamp as int: 1513675924
```

### Output

```
C:\Users\Chebotarev_V\Documents\bazel-issues\windows-link-against-system-libraries>bazel build ...
INFO: Analysed target //:hello-world (1 packages loaded).
INFO: Found 1 target...
ERROR: C:/users/chebotarev_v/documents/bazel-issues/windows-link-against-system-libraries/BUILD:3:1: Linking of rule '//:hello-world' failed (Exit 1120)
LINK : warning LNK4044: unrecognized option '/Wl,advapi32.lib'; ignored
hello-world.o : error LNK2019: unresolved external symbol __imp_LogonUserA referenced in function main
bazel-out/x64_windows-fastbuild/bin/hello-world.exe : fatal error LNK1120: 1 unresolved externals
Target //:hello-world failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 2.312s, Critical Path: 0.15s
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

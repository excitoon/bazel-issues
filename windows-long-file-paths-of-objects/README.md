### Output

```
C:\...aths-of-objects\some-directory-not-even-very-long\not-trivial-module\not-trivial-submodule\project>bazel build ...
INFO: Analysed target //some-directory-not-even-very-long/not-trivial-module/not-trivial-submodule/project:hello-world (1 packages loaded).
INFO: Found 1 target...
ERROR: C:/users/chebotarev_v/documents/bazel-issues/windows-long-file-paths-of-objects/some-directory-not-even-very-long/not-trivial-module/not-trivial-submodule/project/BUILD:3:1: C++ compilation of rule '//som
e-directory-not-even-very-long/not-trivial-module/not-trivial-submodule/project:hello-world' failed (Exit 1)
C:\t\_bazel_chebotarev_v\iwggwcit\execroot\__main__\some-directory-not-even-very-long\not-trivial-module\not-trivial-submodule\project\sources\hello-world.cpp : fatal error C1083: Cannot open compiler generated
file: '': Invalid argument
Target //some-directory-not-even-very-long/not-trivial-module/not-trivial-submodule/project:hello-world failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 2.385s, Critical Path: 0.15s
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

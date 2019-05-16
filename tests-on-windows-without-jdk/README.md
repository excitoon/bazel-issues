### Output

```
C:\Users\Chebotarev_V\Documents\src\bazel-issues\tests-on-windows-without-jdk>set JAVA_HOME=

C:\Users\Chebotarev_V\Documents\src\bazel-issues\tests-on-windows-without-jdk>bazel build ...
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:11:12: Label '@local_jdk//:include/jni.h' crosses boundary of subpackage '@local_jdk//include' (perhaps you meant to put the colon here: '@local_jdk//include:jni.h'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:17:12: Label '@local_jdk//:include/darwin/jni_md.h' crosses boundary of subpackage '@local_jdk//include' (perhaps you meant to put the colon here: '@local_jdk//include:darwin/jni_md.h'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:23:12: Label '@local_jdk//:include/linux/jni_md.h' crosses boundary of subpackage '@local_jdk//include' (perhaps you meant to put the colon here: '@local_jdk//include:linux/jni_md.h'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:29:12: Label '@local_jdk//:include/freebsd/jni_md.h' crosses boundary of subpackage '@local_jdk//include' (perhaps you meant to put the colon here: '@local_jdk//include:freebsd/jni_md.h'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:35:12: Label '@local_jdk//:include/win32/jni_md.h' crosses boundary of subpackage '@local_jdk//include' (perhaps you meant to put the colon here: '@local_jdk//include:win32/jni_md.h'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:42:12: Label '@local_jdk//:bin/java.exe' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:java.exe'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:42:12: Label '@local_jdk//:bin/java' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:java'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:52:12: Label '@local_jdk//:bin/jar.exe' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:jar.exe'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:52:12: Label '@local_jdk//:bin/jar' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:jar'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:62:12: Label '@local_jdk//:bin/javac.exe' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:javac.exe'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:62:12: Label '@local_jdk//:bin/javac' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:javac'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:72:12: Label '@local_jdk//:bin/xjc' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:xjc'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:78:12: Label '@local_jdk//:bin/wsimport' crosses boundary of subpackage '@local_jdk//bin' (perhaps you meant to put the colon here: '@local_jdk//bin:wsimport'?)
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:178:12: Label '@local_jdk//:lib/tools.jar' crosses boundary of subpackage '@local_jdk//lib' (perhaps you meant to put the colon here: '@local_jdk//lib:tools.jar'?)
INFO: An error occurred during the fetch of repository 'remote_java_tools_windows'
INFO: Call stack for the definition of repository 'remote_java_tools_windows':
 - /DEFAULT.WORKSPACE.SUFFIX:217:1
INFO: An error occurred during the fetch of repository 'remotejdk11_win'
INFO: Call stack for the definition of repository 'remotejdk11_win':
 - /DEFAULT.WORKSPACE.SUFFIX:198:1
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:166:1: Target '@local_jdk//:jdk-bin' contains an error and its package is in error and referenced by '@local_jdk//:jdk'
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:166:1: Target '@local_jdk//:jdk-include' contains an error and its package is in error and referenced by '@local_jdk//:jdk'
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:166:1: Target '@local_jdk//:jdk-lib' contains an error and its package is in error and referenced by '@local_jdk//:jdk'
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/local_jdk/BUILD.bazel:166:1: Target '@local_jdk//:jre-default' contains an error and its package is in error and referenced by '@local_jdk//:jdk'
ERROR: C:/users/chebotarev_v/_bazel_chebotarev_v/5erqpbet/external/bazel_tools/tools/jdk/BUILD:291:1: Target '@local_jdk//:jdk' contains an error and its package is in error and referenced by '@bazel_tools//tools/jdk:jdk'
ERROR: Analysis of target '//:hello_test' failed; build aborted: Analysis failed
INFO: Elapsed time: 0.964s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (4 packages loaded, 0 targets configured)
```

### Bazel version

```
Build label: 0.25.2
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Fri May 10 20:48:25 2019 (1557521305)
Build timestamp: 1557521305
Build timestamp as int: 1557521305
```

Also reproduced on 0.23.2.

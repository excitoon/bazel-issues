### Output

```
C:\Users\Chebotarev_V\Documents\bazel-issues\external-top-level-directory\external>bazel build ...
Unhandled exception thrown during build; message: Unrecoverable error while evaluating node '...' (requested by nodes '[...] OFFSET=externalcom.google.devtools.build.lib.pkgcache.TestFilter@e17a1')
INFO: Elapsed time: 2.064s
FAILED: Build did NOT complete successfully (0 packages loaded)
java.lang.RuntimeException: Unrecoverable error while evaluating node '...' (requested by nodes '[...] OFFSET=externalcom.google.devtools.build.lib.pkgcache.TestFilter@e17a1')
        at com.google.devtools.build.skyframe.AbstractParallelEvaluator$Evaluate.run(AbstractParallelEvaluator.java:414)
        at com.google.devtools.build.lib.concurrent.AbstractQueueVisitor$WrappedRunnable.run(AbstractQueueVisitor.java:352)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
Caused by: java.lang.IllegalArgumentException: No such attribute tags in local_repository rule //external:bazel_tools
        at com.google.devtools.build.lib.packages.AbstractAttributeMapper.getIndexWithTypeCheck(AbstractAttributeMapper.java:251)
        at com.google.devtools.build.lib.packages.AbstractAttributeMapper.get(AbstractAttributeMapper.java:58)
        at com.google.devtools.build.lib.packages.NonconfigurableAttributeMapper.get(NonconfigurableAttributeMapper.java:45)
        at com.google.devtools.build.lib.packages.TargetUtils.hasConstraint(TargetUtils.java:201)
        at com.google.devtools.build.lib.packages.TargetUtils.hasManualTag(TargetUtils.java:81)
        at com.google.devtools.build.lib.pkgcache.FilteringPolicies$FilterManual.shouldRetain(FilteringPolicies.java:73)
        at com.google.devtools.build.lib.pkgcache.FilteringPolicies$AndFilteringPolicy.shouldRetain(FilteringPolicies.java:105)
Server terminated abruptly (error code: 14, error message: '', log file: 'c:\t\_bazel_chebotarev_v\05uhpulr/server/jvm.out')
```

### Bazel version

```
Build label: 0.9.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Tue Dec 19 09:32:04 2017 (1513675924)
Build timestamp: 1513675924
Build timestamp as int: 1513675924
```

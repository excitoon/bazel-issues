﻿### Short description

Run one of these:
```
> bazelisk build ... --crosstool_top=@case_one//:toolchain
> bazelisk build ... --crosstool_top=@case_two//:toolchain
> bazelisk build ... --crosstool_top=@case_three//:toolchain
> bazelisk build ... --crosstool_top=@case_four//:toolchain
```

and get:
```
Internal error thrown during build. Printing stack trace: java.util.UnknownFormatConversionException: Conversion = ' '
Internal error thrown during build. Printing stack trace: java.util.MissingFormatArgumentException: Format specifier '%s'
Internal error thrown during build. Printing stack trace: java.util.UnknownFormatConversionException: Conversion = '.'
Internal error thrown during build. Printing stack trace: java.util.MissingFormatArgumentException: Format specifier '%d'
```

### Description

```
> bazelisk build ... --crosstool_top=@case_one//:toolchain
Loading: 
Loading: 0 packages loaded
Analyzing: target //:test (1 packages loaded, 0 targets configured)
INFO: Call stack for the definition of repository 'case_one' which is a case_one (rule definition at C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl:22:12):
 - C:/users/chebotarev_v/documents/src/bazel-test/WORKSPACE:3:1
ERROR: An error occurred during the fetch of repository 'case_one':
   Traceback (most recent call last):
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 11
		test(("msg: %d, %s" % (1, "")))
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 2, in test
		fail(("Auto-Configuration Error: %s, ...")))
Auto-Configuration Error: msg: 1, , 1
Internal error thrown during build. Printing stack trace: java.util.UnknownFormatConversionException: Conversion = ' '
	at java.base/java.util.Formatter.checkText(Unknown Source)
	at java.base/java.util.Formatter.parse(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)

INFO: Elapsed time: 1.321s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
Internal error thrown during build. Printing stack trace: java.util.UnknownFormatConversionException: Conversion = ' '
	at java.base/java.util.Formatter.checkText(Unknown Source)
	at java.base/java.util.Formatter.parse(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
java.util.UnknownFormatConversionException: Conversion = ' '
	at java.base/java.util.Formatter.checkText(Unknown Source)
	at java.base/java.util.Formatter.parse(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
WARNING: Waiting for server process to terminate (waited 5 seconds, waiting at most 60)
```

```
> bazelisk build ... --crosstool_top=@case_two//:toolchain
Loading: 
Loading: 0 packages loaded
Analyzing: target //:test (1 packages loaded, 0 targets configured)
INFO: Call stack for the definition of repository 'case_two' which is a case_two (rule definition at C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl:26:12):
 - C:/users/chebotarev_v/documents/src/bazel-test/WORKSPACE:4:1
ERROR: An error occurred during the fetch of repository 'case_two':
   Traceback (most recent call last):
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 14
		test("msg")
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 2, in test
		fail(("Auto-Configuration Error: %s, ...")))
Auto-Configuration Error: msg, 1
Internal error thrown during build. Printing stack trace: java.util.MissingFormatArgumentException: Format specifier '%s'
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)

INFO: Elapsed time: 1.602s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
Internal error thrown during build. Printing stack trace: java.util.MissingFormatArgumentException: Format specifier '%s'
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
java.util.MissingFormatArgumentException: Format specifier '%s'
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
WARNING: Waiting for server process to terminate (waited 5 seconds, waiting at most 60)
```

```
> bazelisk build ... --crosstool_top=@case_three//:toolchain
Starting local Bazel server and connecting to it...
Loading: 
Loading: 0 packages loaded
Analyzing: target //:test (1 packages loaded, 0 targets configured)
INFO: Call stack for the definition of repository 'case_three' which is a case_three (rule definition at C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl:30:14):
 - C:/users/chebotarev_v/documents/src/bazel-test/WORKSPACE:5:1
ERROR: An error occurred during the fetch of repository 'case_three':
   Traceback (most recent call last):
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 17
		test3(("non-zero exit code: %d, comman...")))
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 5, in test3
		fail(("\n%sAuto-Configuration Error:%...)))

Auto-Configuration Error: non-zero exit code: 1, command 1, stderr: (1)
Internal error thrown during build. Printing stack trace: java.util.UnknownFormatConversionException: Conversion = '.'
	at java.base/java.util.Formatter.checkText(Unknown Source)
	at java.base/java.util.Formatter.parse(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)

INFO: Elapsed time: 3.637s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
Internal error thrown during build. Printing stack trace: java.util.UnknownFormatConversionException: Conversion = '.'
	at java.base/java.util.Formatter.checkText(Unknown Source)
	at java.base/java.util.Formatter.parse(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
java.util.UnknownFormatConversionException: Conversion = '.'
	at java.base/java.util.Formatter.checkText(Unknown Source)
	at java.base/java.util.Formatter.parse(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
WARNING: Waiting for server process to terminate (waited 5 seconds, waiting at most 60)
```

```
> bazelisk build ... --crosstool_top=@case_four//:toolchain
Starting local Bazel server and connecting to it...
Loading: 
Loading: 0 packages loaded
Analyzing: target //:test (1 packages loaded, 0 targets configured)
INFO: Call stack for the definition of repository 'case_four' which is a case_four (rule definition at C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl:34:13):
 - C:/users/chebotarev_v/documents/src/bazel-test/WORKSPACE:6:1
ERROR: An error occurred during the fetch of repository 'case_four':
   Traceback (most recent call last):
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 20
		test4(("non-zero exit code: %d, comman...")))
	File "C:/users/chebotarev_v/documents/src/bazel-test/repo.bzl", line 8, in test4
		fail(("Auto-Configuration Error:%s %s...")))
Auto-Configuration Error:non-zero exit code: 1, command 1, stderr: (1) 1
Internal error thrown during build. Printing stack trace: java.util.MissingFormatArgumentException: Format specifier '%d'
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)

INFO: Elapsed time: 3.397s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
Internal error thrown during build. Printing stack trace: java.util.MissingFormatArgumentException: Format specifier '%d'
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
java.util.MissingFormatArgumentException: Format specifier '%d'
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.util.Formatter.format(Unknown Source)
	at java.base/java.lang.String.format(Unknown Source)
	at com.google.devtools.build.lib.skyframe.SkyframeDependencyResolver.getTargets(SkyframeDependencyResolver.java:145)
	at com.google.devtools.build.lib.analysis.DependencyResolver.dependentNodeMap(DependencyResolver.java:274)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.computeDependencies(ConfiguredTargetFunction.java:562)
	at com.google.devtools.build.lib.skyframe.ConfiguredTargetFunction.compute(ConfiguredTargetFunction.java:317)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.bubbleErrorUp(AbstractExceptionalParallelEvaluator.java:495)
	at com.google.devtools.build.skyframe.ParallelEvaluator.bubbleErrorUpExceptionally(ParallelEvaluator.java:77)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.waitForCompletionAndConstructResult(AbstractExceptionalParallelEvaluator.java:282)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.doMutatingEvaluation(AbstractExceptionalParallelEvaluator.java:265)
	at com.google.devtools.build.skyframe.AbstractExceptionalParallelEvaluator.evalExceptionally(AbstractExceptionalParallelEvaluator.java:201)
	at com.google.devtools.build.skyframe.ParallelEvaluator.eval(ParallelEvaluator.java:70)
	at com.google.devtools.build.skyframe.InMemoryMemoizingEvaluator.evaluate(InMemoryMemoizingEvaluator.java:205)
	at com.google.devtools.build.skyframe.SequentialBuildDriver.evaluate(SequentialBuildDriver.java:38)
	at com.google.devtools.build.lib.skyframe.SkyframeExecutor.configureTargets(SkyframeExecutor.java:2381)
	at com.google.devtools.build.lib.skyframe.SkyframeBuildView.configureTargets(SkyframeBuildView.java:373)
	at com.google.devtools.build.lib.analysis.BuildView.update(BuildView.java:399)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.runAnalysisPhase(AnalysisPhaseRunner.java:198)
	at com.google.devtools.build.lib.buildtool.AnalysisPhaseRunner.execute(AnalysisPhaseRunner.java:110)
	at com.google.devtools.build.lib.buildtool.BuildTool.buildTargets(BuildTool.java:141)
	at com.google.devtools.build.lib.buildtool.BuildTool.processRequest(BuildTool.java:268)
	at com.google.devtools.build.lib.runtime.commands.BuildCommand.exec(BuildCommand.java:98)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.execExclusively(BlazeCommandDispatcher.java:524)
	at com.google.devtools.build.lib.runtime.BlazeCommandDispatcher.exec(BlazeCommandDispatcher.java:192)
	at com.google.devtools.build.lib.server.GrpcServerImpl.executeCommand(GrpcServerImpl.java:573)
	at com.google.devtools.build.lib.server.GrpcServerImpl.lambda$run$2(GrpcServerImpl.java:624)
	at java.base/java.lang.Thread.run(Unknown Source)
FAILED: Build did NOT complete successfully (11 packages loaded, 27 targets configured)
WARNING: Waiting for server process to terminate (waited 5 seconds, waiting at most 60)
```

### Version

```
> bazelisk version
Bazelisk version: v1.0
Starting local Bazel server and connecting to it...
Build label: 0.28.1
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Fri Jul 19 15:20:45 2019 (1563549645)
Build timestamp: 1563549645
Build timestamp as int: 1563549645
```

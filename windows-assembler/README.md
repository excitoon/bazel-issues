```
C:\Users\Chebotarev_V\Documents\src\bazel-issues\windows-assembler>bazelisk build ...
Starting local Bazel server and connecting to it...
INFO: Analyzed target //:test (13 packages loaded, 71 targets configured).
INFO: Found 1 target...
INFO: From Compiling 1.asm:
MASM : warning A4018:invalid command-line option : /bigobj
MASM : warning A4018:invalid command-line option : /Zm500
MASM : warning A4018:invalid command-line option : /Z500
MASM : warning A4018:invalid command-line option : /Z00
MASM : warning A4018:invalid command-line option : /Z0
MASM : warning A4018:invalid command-line option : /EHsc
MASM : warning A4018:invalid command-line option : /wd4351
MASM : warning A4018:invalid command-line option : /wd4291
MASM : warning A4018:invalid command-line option : /wd4250
MASM : warning A4018:invalid command-line option : /wd4996
 Assembling: 1.asm
Target //:test up-to-date:
  bazel-bin/test.exe
INFO: Elapsed time: 14.480s, Critical Path: 0.41s
INFO: 3 processes: 3 local.
INFO: Build completed successfully, 7 total actions
```

### Version

```
C:\Users\Chebotarev_V\Documents\src\bazel-issues\windows-assembler>bazelisk version
Build label: 0.28.0
Build target: bazel-out/x64_windows-opt/bin/src/main/java/com/google/devtools/build/lib/bazel/BazelServer_deploy.jar
Build time: Wed Jul 10 16:15:38 2019 (1562775338)
Build timestamp: 1562775338
Build timestamp as int: 1562775338
```

On Windows, `ProcessBuilder` does not make a good job joining list of arguments into correct command line.
If one passes backslashes inside of an argument of `ctx.execute`, then these will be spoiled:

```
> bazel build @some_name//:some_file.txt
DEBUG: C:/users/chebotarev_v/documents/src/bazel-issues/processbuilder-on-windows/some_rule.bzl:7:3: \\two\\two\\\thr
ee\\\\four\one
DEBUG: C:/users/chebotarev_v/documents/src/bazel-issues/processbuilder-on-windows/some_rule.bzl:13:3: \\\two\\\two\\\
\\three\\\\\\\four\one
```

Real command line (from Task Manager):

```
"python3" test.py \\\two\\\two\\\\\three\\\\\\\four\one
```

Look how two backslashes convert to three, three to five, four to seven, by `2*N-1` formula.

See also: https://stackoverflow.com/questions/34402429/processbuilder-does-something-to-my-command-line-arguments-on-windows .

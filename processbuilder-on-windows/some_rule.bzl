def _some_rule_impl(ctx):
  ctx.file("test.py", """
import sys

print(sys.argv[1], file=sys.stdout)
""")
  print(ctx.attr.arg)
  st = ctx.execute(["python3", "test.py", ctx.attr.arg])

  print(st.stdout)

  ctx.file("WORKSPACE", "workspace(name = \"{name}\")\n".format(name=ctx.name))
  ctx.file("BUILD", "exports_files(['my_file.txt'])\n")

_some_rule_attrs = {
    "arg": attr.string(mandatory=True),
}

some_rule = repository_rule(
    implementation = _some_rule_impl,
    attrs = _some_rule_attrs,
)

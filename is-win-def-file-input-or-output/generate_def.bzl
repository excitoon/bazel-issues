def _generate_def_impl(ctx):
    ctx.actions.write(
        output = ctx.outputs.out,
        content = "LIBRARY {}\n".format(ctx.attr.id)
    )

_generate_def = rule(
    implementation = _generate_def_impl,
    attrs = {
        "id": attr.string(mandatory=True),
        "out": attr.output(mandatory=True)
    }
)

def generate_def(name):
    _generate_def(
        name = name + "-def",
        id = name,
        out = name + ".def"
    )

def test(msg):
    fail("Auto-Configuration Error: %s, %s" % (msg, "1"))

def test3(msg):
    fail("\n%sAuto-Configuration Error:%s %s\n" % ("", "", msg))

def test4(msg):
    fail("Auto-Configuration Error:%s %s" % ((msg, "1")))

def impl_one(repository_ctx):
    test("msg: %d, %s" % (1, ""))

def impl_two(repository_ctx):
    test("msg")

def impl_three(repository_ctx):
    test3("non-zero exit code: %d, command %s, stderr: (%s)" % (1, "1", "1"))

def impl_four(repository_ctx):
    test4("non-zero exit code: %d, command %s, stderr: (%s)" % (1, "1", "1"))

case_one = repository_rule(
    implementation = impl_one
)

case_two = repository_rule(
    implementation = impl_two
)

case_three = repository_rule(
    implementation = impl_three
)

case_four = repository_rule(
    implementation = impl_four
)

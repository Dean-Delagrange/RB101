# q9.rb
# What would be the return value of the following method invocation
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)
# "no" because foo will always be "yes" ... yes != no therefore false ("no")
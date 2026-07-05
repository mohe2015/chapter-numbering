// In a custom ref rule, here() in numbering is the location of the element or the ref

#set math.equation(numbering: (..nums) => {
  let here = here()
  let test = query(<test>).first(default: none)
  if test == none  {
    return "too-early-layout-iteration"
  }
  assert(here == test.location())
  "OK"
})

#show ref: it => {
  if it.element == none or it.element.func() != math.equation { return it }
  let here = here()
  let location = it.element.location()
  assert(here != location)
  let rendered = counter(math.equation).display(at: location)
  let result = if it.element.supplement == [] {
    rendered
  } else {
    [#it.element.supplement~#rendered]
  }
  link(location, result)
}

#set heading(numbering: "1")

= Test

$ 1 + 1 $ <test>

#set heading(numbering: "a")

= Abc

@test <ref>
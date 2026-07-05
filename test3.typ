// what about typst letting the numbering in #ref get a different here() context?
// probably show rules should also be reset so we would need to do this properly?

#set math.equation(numbering: (..nums, location: none) => {
  if location == none {
    location = here()
  }
  let heading-numbering = query(selector(heading).before(location)).last(default: (numbering: none)).numbering
  if heading-numbering == none {
    return "TODO"
  }
  let heading-nums = counter(heading).at(location)
  numbering(heading-numbering, ..heading-nums)
})

#show ref: it => {
  if it.element == none or it.element.func() != math.equation { return it }
  let location = it.element.location()
  let nums = counter(math.equation).at(location)
  let rendered = (math.equation.numbering)(..nums, location: location)
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

@test
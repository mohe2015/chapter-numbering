#import "../../lib.typ": get-numbering, display, my-numbering, rules

#show: rules

#set math.equation(numbering: (ref: false, ..nums) => {
  let heading = display(heading, ref: ref)
  if heading != none {
    heading += "."
  }
  heading + my-numbering("(1)", ref: ref, ..nums)
})

#show heading: outer => {
  if outer.level <= 1 {
    counter(math.equation).update(0)
  }
  outer
}

= Test 1

$ 1 + 1 $ <eq1-1>
$ 1 + 1 $ <eq1-2>

See @eq1-1, @eq1-2, @eq2-1, @eq2-2, @eq3-1, @eq3-2, @eq4-1, @eq4-2

#set heading(numbering: "[A]")

= Appendix

$ 1 + 1 $ <eq2-1>
$ 1 + 1 $ <eq2-2>

See @eq1-1, @eq1-2, @eq2-1, @eq2-2, @eq3-1, @eq3-2, @eq4-1, @eq4-2

#set math.equation(numbering: (ref: false, ..nums) => {
  let heading = display(heading, ref: ref)
  if heading != none {
    heading += "-"
  }
  heading + my-numbering("(1)", ref: ref, ..nums)
})

= Test 1

$ 1 + 1 $ <eq3-1>
$ 1 + 1 $ <eq3-2>

See @eq1-1, @eq1-2, @eq2-1, @eq2-2, @eq3-1, @eq3-2, @eq4-1, @eq4-2

#set heading(numbering: "[I]")

= Appendix

$ 1 + 1 $ <eq4-1>
$ 1 + 1 $ <eq4-2>

See @eq1-1, @eq1-2, @eq2-1, @eq2-2, @eq3-1, @eq3-2, @eq4-1, @eq4-2

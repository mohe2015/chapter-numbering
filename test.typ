#let equation-numbering-func = state("equation-numbering-func", (..nums) => assert(false))

#equation-numbering-func.update(old => (..nums) => "OK")

#set math.equation(numbering: (..nums) => {
  equation-numbering-func.get()()
})

$ 1 + 1 $
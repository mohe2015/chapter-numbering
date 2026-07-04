// we can create some helper functions that do the following:

#show heading.where(level: 1): counter(math.equation).update(0)

#set heading(numbering: "1.1")

#set math.equation(numbering: (..nums) => {
  // by default get the heading
  counter(heading).display(at: here()) + "." + numbering("1", ..nums)
})

#set figure(numbering: "a.a.a") // also gets chapter number

= Test

$ 1 + 1 $ <test1>

$ 1 + 1 $ <test2>

@test1, @test2, @test3, @test4

#set heading(numbering: "I.1")

= Test

$ 1 + 1 $ <test3>

$ 1 + 1 $ <test4>

@test1, @test2, @test3, @test4
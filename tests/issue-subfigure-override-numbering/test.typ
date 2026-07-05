#show figure: outer => {
  show figure.where(kind: "subfigure"): set figure(numbering: (..nums) => {
    "X"
  })

  outer
}

#figure(figure("Subfigure", kind: "subfigure", supplement: "Subfigure", caption: "Subfigure"))

#show figure: outer => {
  show figure.where(kind: "subfigure"): set figure(numbering: (..nums) => {
    "Y"
  })

  outer
}

#figure(figure("Subfigure", kind: "subfigure", supplement: "Subfigure", caption: "Subfigure"))
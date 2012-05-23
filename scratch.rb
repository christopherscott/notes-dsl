Notes::Taker.new.take do |other, stuff|
  title "Keynote takeaways"
  hr 50
  list "bananas", "oranges", "apples", "limes"
  subhead "this is a subhead"
  notate other
  notate stuff
  tabbed do
    title "this shhould be tabbed over"
    list "if", "not", "im", "gonna", "be", "pissed"
  end
  uppercase do
    title "something"
    list "something", "else"
    tabbed do
      title "this should all be in uppercasee and tabbed"
      list "chris", "truman", "toby", "something else"
      tabbed do
        notate "i wonder how deep i can go with this"
        uppercase do
          notate "hrmmm"
          notate "only one level lol..."
        end
      end
    end
  end
  # upper do
  #   title "this should all be uppercase"
  #   notate other
  # end
end
1. Ruby is a single inheritance language which means an object can only inherit from a single parent.

2. A iteration is more idiomatic.

Each iterator is always associated with a block. It executes code for each element in collection and returns all the elements.

For loop executes code once for each element in expression.

3. It is not possible to invoke Foo#qux becasue qux is a private method.

4. Ruby is a “dynamically typed” language, which means that variable dynamically changes its own type when type of assigned data has changed. So a variable cant be declared to some strict type, it will always be dynamic. To declare string data we can use the keyword String like in: cat = String.new("cat")

5. Enumerable is a module, which means it is just a bunch of methods packaged together that can (and do) get "mixed in", or included, with other classes (like Array and Hash). That means that Ruby programmers don't have to write all those methods many different times - they just write them once, package them up as Enumerable, and tell Array and Hash to include them. As long as the class that wants to include Enumerable has its own #each method that Enumerable can use, it can get access to all the Enumerable methods by simply mixing it in.

6. Method #bar will send "My name is Foo." because #bar is a class method of Foo. With class methods, the class itself "owns" the method. self points to the class.

7.  What is shown in the example is “&” and “:upcase, pushed together. That first character is the unary ampersand. The second piece is a Ruby symbol that is being passed to the operator. When Ruby sees the unary ampersand on the last argument of a method, it tries to convert it to a proc (an executable block of code), and run it. It does this by calling to_proc on the object. A to_proc method is added to the Symbol class, so that you could pass a symbol to the unary ampersand (ie, &:capitalize) and it would convert it for you.
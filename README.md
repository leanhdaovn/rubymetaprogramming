# Ruby Metaprogramming
Intro to metaprogramming in Ruby


Ruby Metaprogramming

### 0. Metaprogramming
  - [Wiki] Metaprogramming is the writing of computer programs with the ability to treat programs as their data. It means that a program could be designed to read, generate, analyze or transform other programs, and even modify itself while running.

### 1. Objects and Classes
  - Everything is an object, event class, method, and nil value...
  - Every object belongs to a class
  - Class names are nothing but constants
  - All classes ultimately inherit from Object, which in turn inherits from BasicObject, the root of the Ruby class hierarchy
  - The methods of an object are also the instance methods of its class
  - The methods of a class are the instance methods of Class
  - Classes are never closed. You can always re-open existing Ruby classes
  - https://assets.toptal.io/uploads/blog/image/91785/toptal-blog-image-1446120487914-384fae8f419347d455a43dab6e20cf25.jpg

### 2. self
  - a special variable that always references the current object
  - the default receiver of method calls

### 3. Modules and Mixins
  - include - By default, it mixes in the specified module's methods as instance methods in the target module/class. e.g.
  - extend - adds the specified module's methods and constants to the target's metaclass (i.e. the singleton class) e.g.
  - included
  - extended

### 4. Method calling
  - a.dosomething
  - a.send(:do_something)
  - a.method(:do_something).call

### 5. Metaclass / Singleton Class
  - Each object in Ruby has its own anonymous class, a class that can have methods, but is only attached to the object itself
  - An anonymous class is also known as a singleton class, eigenclass, ghost class, metaclass or an uniclass.
  - https://assets.toptal.io/uploads/blog/image/91787/toptal-blog-image-1446133438006-7199ada81b1807be9b8a73ab6c3ce1c3.jpg

### 6. Methods for metaprogramming
  - define_method
  - method_missing
  - eval  / instance_eval  / class_eval  /  module_eval
  - class_variable_get  /  class_variable_set  /  instance_variable_get  /  instance_variable_set  /  const_get  /  const_set

### 7. More readings
  - http://phrogz.net/RubyLibs/RubyMethodLookupFlow.png
  - https://www.codeschool.com/blog/2015/04/24/7-deadly-sins-of-ruby-metaprogramming/


Author: leanhdaovn

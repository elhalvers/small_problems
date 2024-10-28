name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

=begin
On line 1, the String literal object, 'Bob' is assigned to the local variable 'name'.
On line 2, the save_name local variable is initialized to reference the object that 
the local variable 'name' currently references.
on line 3, the local variable, name is reassigned to the String object, 'Alice'
On line 4, the local variables name and save_name are passed to the Kernel.puts method
which will output their respective expressions on separate lines.
name is currently referencing the String object, 'Alice' and save_name is referencing
the String object, 'Bob'
'Bob'
=end

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

=begin
On line 1, the local variable 'name' is initialized and references the
String object, 'Bob'.
On line 2, the save_name local variable is initialized and references the object that is also
referenced by the local variable, 'name'.
On line 3, the String#upcase! method is called on the string object 
referenced by the 'name' local variable which mutates the calling object, changing all of the
characters in the string to uppercase characters.
As the local variables, name and save_name both point to the same mutated object, they will both
be outputed as 'BOB' when passed to the puts method on line 4.

=end

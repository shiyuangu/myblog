<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Name Convention:</a></li>
<li><a href="#sec-2">2. Modules:</a>
<ul>
<li><a href="#sec-2-1">2.1. Related commands/variables</a></li>
<li><a href="#sec-2-2">2.2. Modules are first class objects.</a></li>
<li><a href="#sec-2-3">2.3. All statements in the source file are executed.</a></li>
<li><a href="#sec-2-4">2.4. Use <code>__all__</code> = ['bar','foo'] to precisely control the set of names import by from <i>module</i> import <code>*</code></a></li>
<li><a href="#sec-2-5">2.5. Use <i>from module import foo</i></a></li>
<li><a href="#sec-2-6">2.6. Use imp</a></li>
</ul>
</li>
<li><a href="#sec-3">3. OOP:</a>
<ul>
<li><a href="#sec-3-1">3.1. Unlike C++/Java, Base class _init<sub>()</sub> is not automatically invoked:</a></li>
<li><a href="#sec-3-2">3.2. In Python, the instance's attribute can be deleted.</a></li>
<li><a href="#sec-3-3">3.3. The use of "@property": Uniform Access Principle.</a></li>
<li><a href="#sec-3-4">3.4. Scoping Rules, Static variables(class attributes).</a></li>
</ul>
</li>
<li><a href="#sec-4">4. Type conversion</a></li>
<li><a href="#sec-5">5. MetaClass:</a></li>
<li><a href="#sec-6">6. Scoping Rules and Closure</a></li>
<li><a href="#sec-7">7. Being Pythonic</a>
<ul>
<li><a href="#sec-7-1">7.1. Mutable vs. Immutable</a></li>
<li><a href="#sec-7-2">7.2. double asterisk</a></li>
</ul>
</li>
<li><a href="#sec-8">8. Using Python for Text Parsing</a>
<ul>
<li><a href="#sec-8-1">8.1. regex</a></li>
<li><a href="#sec-8-2">8.2. Loop multiple files of a pattern</a></li>
</ul>
</li>
<li><a href="#sec-9">9. Unicode Encoding</a>
<ul>
<li><a href="#sec-9-1">9.1. Q: bits order</a></li>
<li><a href="#sec-9-2">9.2. Unicode filename</a></li>
<li><a href="#sec-9-3">9.3. Gotcha</a>
<ul>
<li><a href="#sec-9-3-1">9.3.1. Q: File is read by trunk, how do you make sure no partial read</a></li>
<li><a href="#sec-9-3-2">9.3.2. Q: unicode + str(raw 8 bit) might be an error(not always error)</a></li>
<li><a href="#sec-9-3-3">9.3.3. Security hole</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-10">10. Performance Tricks</a>
<ul>
<li><a href="#sec-10-1">10.1. dict</a></li>
</ul>
</li>
<li><a href="#sec-11">11. Exceptions:</a></li>
<li><a href="#sec-12">12. Conda</a>
<ul>
<li><a href="#sec-12-1">12.1. Info</a></li>
<li><a href="#sec-12-2">12.2. Create environment</a></li>
<li><a href="#sec-12-3">12.3. Install packages</a></li>
<li><a href="#sec-12-4">12.4. List insalled packages and versions</a></li>
</ul>
</li>
<li><a href="#sec-13">13. NumPy</a>
<ul>
<li><a href="#sec-13-1">13.1. view vs copy</a>
<ul>
<li><a href="#sec-13-1-1">13.1.1. simply indexing return view and advance indexing returns copy</a></li>
</ul>
</li>
<li><a href="#sec-13-2">13.2. dtype-structured array</a></li>
<li><a href="#sec-13-3">13.3. syntax/function compared with matlab</a></li>
<li><a href="#sec-13-4">13.4. Q&amp;A</a>
<ul>
<li><a href="#sec-13-4-1">13.4.1. A[A&gt;4] gives 1d even if A is 2d. What to obtain a 2D array?</a></li>
<li><a href="#sec-13-4-2">13.4.2. How to extract a sub-array?</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-14">14. Scikit-learn</a>
<ul>
<li><a href="#sec-14-1">14.1. "Normalization" for OLS</a></li>
</ul>
</li>
<li><a href="#sec-15">15. Pandas</a>
<ul>
<li><a href="#sec-15-1">15.1. Data Structure:</a>
<ul>
<li><a href="#sec-15-1-1">15.1.1. Series</a></li>
<li><a href="#sec-15-1-2">15.1.2. Data Frame</a></li>
</ul>
</li>
<li><a href="#sec-15-2">15.2. String Manipulation</a></li>
<li><a href="#sec-15-3">15.3. Index/Selection</a>
<ul>
<li><a href="#sec-15-3-1">15.3.1. Query</a></li>
<li><a href="#sec-15-3-2">15.3.2. Three indexing methods: by label (.loc), by position(.iloc)  and advance indexing (.ix)</a></li>
<li><a href="#sec-15-3-3">15.3.3. use at()/iat() methods for fast scalar value getting and setting([] is slow since it must handle a lot of cases)</a></li>
<li><a href="#sec-15-3-4">15.3.4. Gotchas</a></li>
</ul>
</li>
<li><a href="#sec-15-4">15.4. MultiIndex(column/row)</a>
<ul>
<li><a href="#sec-15-4-1">15.4.1. Select rows with list of values in a level</a></li>
<li><a href="#sec-15-4-2">15.4.2. Swaplevel and sortlevel</a></li>
<li><a href="#sec-15-4-3">15.4.3. flatten multi-index(rows)</a></li>
<li><a href="#sec-15-4-4">15.4.4. Turn on/off sparse hierarchical output</a></li>
<li><a href="#sec-15-4-5">15.4.5. pandas index/multi-index values may not not uniques</a></li>
</ul>
</li>
<li><a href="#sec-15-5">15.5. groupby and apply</a></li>
<li><a href="#sec-15-6">15.6. Pivot table</a></li>
<li><a href="#sec-15-7">15.7. Insert/delete rows/columns</a></li>
<li><a href="#sec-15-8">15.8. Chaining</a></li>
<li><a href="#sec-15-9">15.9. Dataframe: apply</a></li>
<li><a href="#sec-15-10">15.10. display</a></li>
<li><a href="#sec-15-11">15.11. exploratory data analysis</a></li>
<li><a href="#sec-15-12">15.12. Iterator</a></li>
<li><a href="#sec-15-13">15.13. Accelerated operations</a></li>
<li><a href="#sec-15-14">15.14. convenient features</a></li>
<li><a href="#sec-15-15">15.15. Time Series</a></li>
<li><a href="#sec-15-16">15.16. Gotcha</a>
<ul>
<li><a href="#sec-15-16-1">15.16.1. groupby.apply(f) might apply f twice to the first group</a></li>
<li><a href="#sec-15-16-2">15.16.2. Never specify the dtype when reading in data. Instead, first read in, then convert </a></li>
<li><a href="#sec-15-16-3">15.16.3. Merge on columns with NaN.</a></li>
<li><a href="#sec-15-16-4">15.16.4. Merge on float vs. int.</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-16">16. Pymssql</a>
<ul>
<li><a href="#sec-16-1">16.1. Doc: </a></li>
<li><a href="#sec-16-2">16.2. The parameter substitution of pymssql works sliently different than the python DB-API documented in . (Cf.).</a></li>
</ul>
</li>
<li><a href="#sec-17">17. matplotlib</a>
<ul>
<li><a href="#sec-17-1">17.1. Use inline</a></li>
<li><a href="#sec-17-2">17.2. Use non-interactive backend:</a></li>
<li><a href="#sec-17-3">17.3. Artist</a>
<ul>
<li><a href="#sec-17-3-1">17.3.1. Figure</a></li>
<li><a href="#sec-17-3-2">17.3.2. Axes:</a></li>
</ul>
</li>
<li><a href="#sec-17-4">17.4. transformation and different coordinate systems.</a>
<ul>
<li><a href="#sec-17-4-1">17.4.1. data coordinate</a></li>
<li><a href="#sec-17-4-2">17.4.2. axes coordinate</a></li>
<li><a href="#sec-17-4-3">17.4.3. figure coordinate</a></li>
<li><a href="#sec-17-4-4">17.4.4. display coordinate</a></li>
<li><a href="#sec-17-4-5">17.4.5. Demo for coordinates</a></li>
<li><a href="#sec-17-4-6">17.4.6. Aspect ratio</a></li>
</ul>
</li>
<li><a href="#sec-17-5">17.5. subplot</a>
<ul>
<li><a href="#sec-17-5-1">17.5.1. How to create multiple subplot shared axis</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>

---

---

# Name Convention:<a id="sec-1" name="sec-1"></a>

The name convention recommended by Python Enhancement Proposals(PEP)(Cf. [PEP8: Style Guide to Python Code ](http://legacy.python.org/dev/peps/pep-0008/)) is quite different from the name convention adopted by C++ community. In particular, 
**\* mixCase is discouraged. 
\***  Any identifier in  a class of the form `__spam` (at least two leading underscores, at most one trailing underscore) is textually replaced with \_classname\_<sub>spam</sub>, where classname is the current class name with leading underscore(s) stripped(Cf. [Pydoc: Private Variables and Class-local References ](https://docs.python.org/2/tutorial/classes.html#private-variables-and-class-local-references)).
**\* Any identifier in a class of the form `__getitem__` is a special method(Cf. [Special Methods](https://docs.python.org/2/reference/datamodel.html#special-method-names))
\*** A method in a module whose name starts with an underscore is not exported by default(i.e., `__all__`  is not defined) when \`from mymodule import \*\` is invoked. Even when `__all__` is set appropriately, it's still considered to be a good practice to prefix the internal interface (packages, modules, classes, functions, attributes or other names) with a single leading underscore (Cf. [PEP8: public and private interface](http://legacy.python.org/dev/peps/pep-0008/#public-and-internal-interfaces)). 

# Modules:<a id="sec-2" name="sec-2"></a>

## Related commands/variables<a id="sec-2-1" name="sec-2-1"></a>

-   show all loaded modules: sys.modules

## Modules are first class objects.<a id="sec-2-2" name="sec-2-2"></a>

-   It's a common practice to import a module in another module initialization file `__init__.py`. For example, Pandas imports numpy and hence we can refer numpy as pandas.np. However, this is not visible to user.  So users could import numpy again. In this case, all imported numpy binds to the same object and hence have the same id(&#x2026;).

## All statements in the source file are executed.<a id="sec-2-3" name="sec-2-3"></a>

## Use `__all__` = ['bar','foo'] to precisely control the set of names import by from *module* import `*`<a id="sec-2-4" name="sec-2-4"></a>

## Use *from module import foo*<a id="sec-2-5" name="sec-2-5"></a>

This will load the specific definitions into a current namespace. However, the binding rules for variables.  The global namespace for a function  is always the module in which the function is defined.

    from spam import foo
    a = 42
    foo() # Prints "I'm foo and a is 37"

\*\* The use of `__name__`:
Each module defines a variable `__name__` with the module's name. The programs can exam this variable to determine the module in which they are executing. The top level module of the interpreter is called `__main__`.Programs specified in the command line or entered interactively run inside `__main`. The following program prints "in mymodule" when being executed by 'import mymodule' and print 'in <span class="underline"><span class="underline">main</span></span> ' when executed by \`python mymodule.py\`

    ## mymodule.py
    if __name__ == '__main__':
       print "in __main__"
        else:
           print "in %s" % (__name__,)

## Use imp<a id="sec-2-6" name="sec-2-6"></a>

    import imp 
    imp.loan_source("config","/path/to/file.conf")
    conf = __import__('config').configs  #config is a variable defind on the top level of file.conf

# OOP:<a id="sec-3" name="sec-3"></a>

## Unlike C++/Java, Base class \_init<sub>()</sub> is not automatically invoked:<a id="sec-3-1" name="sec-3-1"></a>

    class Base(object):
        def __init__(self):
            print "In Base::init"
            self.a=1
    class Derived(Base):
        def __init__(self):
            print "In Derive::init"
            self.b=1
        def myprint(self):
            print "a=%d" % self.a
    obj = Derived()
    obj.myprint()   #error AttributeError: 'Derived' object has no attribute 'a'

## In Python, the instance's attribute can be deleted.<a id="sec-3-2" name="sec-3-2"></a>

    class MyObject:
        """
        Test some pythonic OO features. 
        """
        a = 10;
        def __init__(self):
            self.b = 10;
        def f(self):
            print "this is f"
    
    obj = MyObject()
    del obj.a #error: only instance attribute can be deleted. 
    del obj.f #same error as above
    del obj.b #correct.

## The use of "@property": Uniform Access Principle.<a id="sec-3-3" name="sec-3-3"></a>

## Scoping Rules, Static variables(class attributes).<a id="sec-3-4" name="sec-3-4"></a>

Python Essential reference: Although classes define a namespace, classes do not create a scope for a names used inside the bodies of methods, therefore, when you are implementing a class, referenes to attributes and methods must be fully qualified. This lack of scoping in classes is one area where Python differs from C++ or Java. The explicit use of self is required, because without it, python doesn't provide a means to declare a variable. Without *self*, there is no way to know whether an assignment to a variable in a method is supposed to be a local variable or if it's supposed to be  saved as an instance variable. Internally, python relies on dictionary and lookup rules to resolve names: 
Cf: <http://stackoverflow.com/questions/68645/static-class-variables-in-python>
<https://jeffknupp.com/blog/2013/02/14/drastically-improve-your-python-understanding-pythons-execution-model/>
<https://blog.ionelmc.ro/2015/02/09/understanding-python-metaclasses/>

# Type conversion<a id="sec-4" name="sec-4"></a>

Speicial Methods \_<sub>int</sub>\_<sub>()</sub>, \_<sub>float</sub>\_<sub>()</sub> ect. are called by explicit conversion such as int(x), float(x), but never called implicitly to perform type conversion during mix-type arithmetic. 

# MetaClass:<a id="sec-5" name="sec-5"></a>

In the following code, the descriptor TypedProperty doesn't hold the value directly. Instead, it holds the name of itself in the class. How the TypedProperty knows its own name in the class it belongs to? The magic in the Meta class. The variable num is a member of class Foo. When Foo is created by the meta class TypedMeta, the metaclass <span class="underline"><span class="underline">new\_<sub>(..)</sub> method has a dictionary, which is a map betweem the member name and the memeber. TypedMeta.\_<sub>new</sub>\_<sub>(..)</sub> changes the num's field name to num's name suffixed by an underscore.  Now, basically, the descriptor simply becomes a **proxy** to the underlining field "<sub>num</sub>" which is stored in Foo itself. TypedMeta also use the \_<sub>slots</sub></span></span> to forbid adding any new field to the class. 

    class TypedProperty(object):
        def __init__(self, type, default=None):
            self.name = None
            self.type = type
            if default: 
                self.default = default
            else:
                self.default = type()
        def __get__(self, instance, cls):
            print "self.name",self.name
            return getattr(instance,self.name, self.default)
        def __set__(self, instance, value):
            if not isinstance(value, self.type):
                raise TypeError("Must be a %s" % self.type)
            setattr(instance, self.name, value)
        def __delete__(self, instance):
            raise AttributeError("cannot delete attribute")
    class TypedMeta(type):
        def __new__(cls, name, bases, dict):
            slots=[]
            print "TypedMeta::__new__.cls=%s,name=%s" % (cls,name)
            for key, value in dict.items():
                if isinstance(value, TypedProperty):
                    value.name = "_"+key  #bind the memeber variabls's name to the  the descriptor 
                    slots.append(value.name)
            dict['__slots__']=slots
            return type.__new__(cls,name,bases,dict)
    class Typed:
        __metaclass__ = TypedMeta
    
    class Foo(Typed):
        name = TypedProperty(str)
        num =  TypedProperty(int,42)
    f=Foo()
    f.num #output self.name _num, 42
    f._num # AttributeError: _num; _num doesn't exist, not yet. 
    f.num=44 # the descriptor's __set__ method is called which creates a new field _num
    f._num  #44, now _num exists after a call to f.num

# Scoping Rules and Closure<a id="sec-6" name="sec-6"></a>

sgu:  There are two types of variables in a function: formal parameter and the other parameters, for example , in f(x) = a\*x, x is the formal parameter. If a is bounded in the enclosing scope (not global scope, usually inside another function)  when the function f(x) is defined, f will has a closure and the value is remembered.. Closure is a function object which remembers the values regardless whether the enclosing scope is still present in memory. If  a is not bound in its immediate enclosing scope, the enclosing scope one level up, two level up before reaching the global scope  (regardless whether there is an 'a' in global scope), the name a will become a **free parameter** (<https://docs.python.org/2/reference/executionmodel.html>) and search in gloabl namespace. Note that in this case, f has no closure. Note that if there is no such name 'a' in global space at the time of **evaluation**, an error will be raised. If 'a' first exists but later is deleted, an error will also be raised. . Whether the parameter is found or not is determined by investigating f.\_<sub>closure</sub>\_<sub></sub>.cell<sub>contents</sub>, f.\_<sub>closure</sub>\_<sub></sub>.cell<sub>contents</sub>, ect. 

    #this form a closure: 
    def fp(): 
        a = 10 
        return lambda x: a*x 
    g = fp() #g has a closure 
    g.__closure__[0] 
     <cell at 0x7f84d0708868: int object at 0x1fa0080>
    
    #nesting is ok for closure too: 
    In [16]: def fp(): 
        ...:     a = 10 
        ...:     def fp2():
        ...:         f = lambda x: a*x 
        ...:         return f 
        ...:     return fp2()
        ...:     
        ...: 
    
    In [17]: g = fp()  
    In [18]: g.__closure__ #g has a closure 
    Out[18]: (<cell at 0x7f84d0708280: int object at 0x1fa0080>,)
    
    #however, class scope is not considered when forming a closure 
    #this seems to be related to how local() work: free variable is returned when called in a function block but not in a class block: http://mathamy.com/python-closures-and-free-variables.html
    In [37]: class Base: 
        ...:     b = 10 
        ...:     def __init__(self): 
        ...:         pass
        ...:     def g(self): 
        ...:         return lambda x: b*x
    
    g = Base().g() 
    g(2) #error, global name 'b' is not defined.

    b = 2
    c = 1
    class A:
        a = 1
        def myprint(self):
            print 'a=', self.a
            print 'b=', b
    def myf(x):
        b = 2
        def myg(x):
            print 'b*x+c=', b*x+c  # only b is bounded, c is free 
        return myg
    
    >> g = myf(10)
    >> b = 3 #this doesn't change the binding in g
    >> g(2) = 5;  #b is still bound to 5
    >> c = 2
    >> g(2) = 6 ; #c is a free parameter and resolved to 2;
    >> g.__closure__[0].cell_contents  # 2
    >> g.__closure__[1]   #error since only one parameter is bounded. 
    
    b = 2 
    def myh(x):
        return b*x + 1 #b is free variable, however, it always is referred to whatever global b is bound to. 
    
    def myh2(x):
        b = 3    
        return myh(x);  #in myh, b is still referred to the global name b, not the b locally defined in myh2; thee b when myh is defined is what matters. 
    
    >> myh2(3)   # still is 5
    del b 
    >> myh2(3)  #error, cannot find global name

-   Variables in nested Functions are bound using *lexical scoping*. That is, names are resolved by first checking the local scope and then all enclosing scopres of the outer function definition from the innermost scope to the outermost scope. If no match is found, the global and built-in namespace are checked. Although names in enclosing scopes are accessible. Python 2 only allows variables to be reassigned in the innermost scope(local variables) and the global namespace(using global). Python 3 allows this by using nonlocal.

    def countdown(n):
       def next():
         nonlocal n #only valid in python 3
         r=n
         n -= 1
         print "r=",r
       return next
    #in python 2.x , we can use list and dictionary to workaround. 
    def countdown(n):
      l=[n]
      def next():
         r=l
         r[0] -= 1
         print "r=",r
      return next

-   When the statements that make up a function are packaged together with the environment in which they define, the resulting object is known as closure. One use of closure is for lazy/delayed evaluation. Using this closure pattern is faster than using a class to capture the variables.

      from urlib.request import urlopen(Python3)
      def page(url):
          def get():
                  return urlopen(url).read()
          return get
      python = page("http://www.python.org")
      >>> python 
      <function get at 0x95d5f0>
      jython = page("http://www.jython.org")
      >>> jython
      <function get at 0x9735f0>
      # the clousre is captured in the function object 
      python.__closure__[0].cell_contents
      'http://www.python.org'
      jython.__clousre__[0].cell_contents
      'http://www.jython.org'
    
    a = 20 
    def f1():
        a = 10
        def f2():
            def f3(x):
                return (a*x)
            return f3
        return f2
    >> g = f1()
    >> h = g()
    >> h(2) #20 
    >> h.__closure__[0] ##exist 
    
    ##Note the the following doesn't form closure 
    a = 20 
    def f1():
        ### a = 10  #take away this line and f3() has no closure. 
        def f2():
            def f3(x):
                return (a*x)
            return f3
        return f2
    >> g = f1()
    >> h = g()
    >> h(2) #40 
    >> h.__closure__[0] ##Error.

-   Local variable may shadow global

Python Essential reference: Although classes define a namespace, classes do not create a scope for a names used inside the bodies of methods, therefore, when you are implementing a class, referenes to attributes and methods must be fully qualified. This lack of scoping in classes is one area where Python differs from C++ or Java. The explicit use of self is required, because without it, python doesn't provide a means to declare a variable. Without *self*, there is no way to know whether an assignment to a variable in a method is supposed to be a local variable or if it's supposed to be  saved as an instance variable.  

    x = 100
    print "1. Global x:", x
    class Test(object):
        y = x
        print "2. Enclosed y:", y
        x = x + 1 
        print "3. Enclosed x:", x
        z = x
    
        def method(self):
            print "4. Enclosed self.x", self.x
            print "5. Global x", x
            try:
                print y
            except NameError, e:
                print "6.", e
    
        @staticmethod
        def static_method():
            print "9.Still the global variable x:", x 
            #print "Static Variable y:",y #this is error, global name y is not defined
        def method_local_ref(self):
            #print x
            try:
                print x  #this cause exception caused by the line x=200 below
            except UnboundLocalError, e:
                print "7.", e
            x = 200     #this line shadows the global in the whole function which causes error in the line above.  
            print "8. Local x", x
    
    obj = Test()
    obj.method()
    Test.static_method()
    obj.method_local_ref()
    
    #Note that class attributes and instance attributes are kept in the dictionary, we have to use obj.a or class.a to access.
    
    In [1]: Test.__dict__
    Out[1]: 
    dict_proxy({'__dict__': <attribute '__dict__' of 'Test' objects>,
                '__doc__': None,
                '__module__': '__main__',
                '__weakref__': <attribute '__weakref__' of 'Test' objects>,
                'method': <function __main__.method>,
                'method_local_ref': <function __main__.method_local_ref>,
                'static_method': <staticmethod at 0x7effed27c520>,
                'x': 101,
                'y': 100,
                'z': 101})
    
    In [2]: obj.__dict__
    Out[2]: {}

-   Python is lexical scooping:

The subtlety see the following examples:
Scoping in Python is dynamic and lexical. A closure will always remember the name and scope of the variable, not the object it's pointing to(<http://stackoverflow.com/questions/2295290/what-do-lambda-function-closures-capture-in-python>).
The following example shows the closure capture the name, not the value. So if the name later binds to different value, it affects the closure.   

    def tmp_g():
       add = range(2)
       i = 0
       print hex(id(i))  #1
       add[0] = lambda x: x+i 
       i = 1
       print hex(id(i)) #2
       add[1] = lambda x: x+i
       return add
    add_rv = tmp_g() 
    
    print add_rv[0](3) #4
    print add_rv[1](3) #4
    
    add_rv[0].__closure__[0]
    <cell at xxxx: int object at #address show in #2>
    add_rv[1].__closure__[1]
    <cell at xxxx: int object at #address show in #2>

# Being Pythonic<a id="sec-7" name="sec-7"></a>

## Mutable vs. Immutable<a id="sec-7-1" name="sec-7-1"></a>

For mutable types, operations that compute new values might actually return a reference to any existing object with the same type and value, for example: a = 1 and b = 1; However, this is not allowed for mutable object, for example, a = []; b= []; c = []; these empty lists are all different objects. 

## double asterisk<a id="sec-7-2" name="sec-7-2"></a>

The double asterisk can be used in defining kwargs as well as passing a dict as arguments: 

    args=dict(A=1, B=2);
    setup(**args) ##equivalent to passing in A=1, B=2

# Using Python for Text Parsing<a id="sec-8" name="sec-8"></a>

## regex<a id="sec-8-1" name="sec-8-1"></a>

    #look for the first match of number sequence(greedy). Note that re.search could start the match from any position while re.search always match from begining; Also, use +? for the nongreedy version 
    m=re.search('(\d+)',"abc_2004-Q1.csv") 
    m.group(1)  #2004
    m=re.search('(\d+?)',"abc_2004-Q1.csv") 
    m.group(1) #2

## Loop multiple files of a pattern<a id="sec-8-2" name="sec-8-2"></a>

    tempFile = NamedTemporaryFile(delete=True)
    tempFile.close()
    sc.parallelize(range(10)).saveAsTextFile(tempFile.name)
    from fileinput import input
    from glob import glob
    #fileinput.input() takes a list of filenames and return an iterator so that all filenames are just seems to be one
    ''.join(sorted(input(glob(tempFile.name + "/part-0000*"))))  
    '0\n1\n2\n3\n4\n5\n6\n7\n8\n9\n'

# Unicode Encoding<a id="sec-9" name="sec-9"></a>

<https://docs.python.org/2/howto/unicode.html>
Cf. Item 3: Know the Difference Between *bytes*, *str*, and *unicode*
python2 use the class Unicode for *unicode* string and *str* for raw 8 bit. In python 3, *str* is for unicode and *bytes' for raw 8 bit. Unicode to raw bits are code /encode* while raw bits to unicode is called *decode*. In Python 2, unicode.encode(..) method return a *str* while *str* to unicode is called *decode*.

## Q: bits order<a id="sec-9-1" name="sec-9-1"></a>

Unicode character U+FEEF is used as byte-order mark(BOM) and is often written as the first character of a file in order to assist with autodectection of the file's byte ordering. Some encodings, such as UTF-16 expect a BOM to be present at the start of a file and drop BOM silently when the file is read while other encoding such as "utf-16-le" and "utf-16-be" for little endian and big-endian encodings won't drop BOM(since the order is already specified in the encoding scheme)

## Unicode filename<a id="sec-9-2" name="sec-9-2"></a>

Different OS uses different approach(in Linux, it's the LANG or LC<sub>TYPE</sub> environment variables). Python *open* method(or *codec.open* for more advanced use),/os.listdir()/ automatically handle the unicode name, 

    filename = u'filename\u4500abc'
    f = open(filename, 'w')
    f.write('blah\n')
    f.close()

## Gotcha<a id="sec-9-3" name="sec-9-3"></a>

### Q: File is read by trunk, how do you make sure no partial read<a id="sec-9-3-1" name="sec-9-3-1"></a>

A: Cf. codec.open()

### Q: unicode + str(raw 8 bit) might be an error(not always error)<a id="sec-9-3-2" name="sec-9-3-2"></a>

    In [110]: s
    Out[110]: u'abc'
    
    In [111]: t
    Out[111]: '\xc3'
    
    In [121]: s+t
    ---------------------------------------------------------------------------
    UnicodeDecodeError                        Traceback (most recent call last)
    /home/sgu/centene/centene/test_geocode.py in <module>()
    ----> 1 s+t
    
    UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 0: ordinal not in range(128)
    
    In [122]: "%s, %s" % (s,t)
    ---------------------------------------------------------------------------
    UnicodeDecodeError                        Traceback (most recent call last)
    /home/sgu/centene/centene/test_geocode.py in <module>()
    ----> 1 "%s, %s" % (s,t)
    
    UnicodeDecodeError: 'ascii' codec can't decode byte 0xc3 in position 0: ordinal not in range(128)
    
    #However, s+s, t+t, "%s,%s" % (s,s) and "%s,%s" % (t,t)  all works. Only Mixing of s and t will error.

### Security hole<a id="sec-9-3-3" name="sec-9-3-3"></a>

The following snippet has a security problem. If an attacker could specify the 'base64' encoding, they could pass 'L2V0Yy9wYXNzd2Q=', which is the base-64 encoded form of the string '/etc/passwd', to read a system file. The above code looks for '/' characters in the encoded form and misses the dangerous character in the resulting decoded form.

    def read_file (filename, encoding):
        if '/' in filename:
            raise ValueError("'/' not allowed in filenames")
        unicode_name = filename.decode(encoding)
        f = open(unicode_name, 'r')
        # ... return contents of file ...

# Performance Tricks<a id="sec-10" name="sec-10"></a>

## dict<a id="sec-10-1" name="sec-10-1"></a>

-   Use *dict.intervalues()* instead of *dict.values()* if we only need to extract the first values

# Exceptions:<a id="sec-11" name="sec-11"></a>

    try:
        s = dfi[col].astype(np.float64)
    except:
        print "\tERROR:some info"
        raise     #re rasie the last exception

# Conda<a id="sec-12" name="sec-12"></a>

## Info<a id="sec-12-1" name="sec-12-1"></a>

List info including channels, configure files ect. 
conda info 
List all environments: conda info &#x2013;envs 

## Create environment<a id="sec-12-2" name="sec-12-2"></a>

conda create -n snakes python 
or to specify a version 
conda create &#x2013;name snakes python=3

## Install packages<a id="sec-12-3" name="sec-12-3"></a>

Conda has a rule to resolve package version (<http://conda.pydata.org/docs/channels.html>)
We can specify the version we want to install: 
conda install pandas==0.18.1
conda install pandas>=0.15.0

## List insalled packages and versions<a id="sec-12-4" name="sec-12-4"></a>

conda list 

# NumPy<a id="sec-13" name="sec-13"></a>

## view vs copy<a id="sec-13-1" name="sec-13-1"></a>

### simply indexing return view and advance indexing returns copy<a id="sec-13-1-1" name="sec-13-1-1"></a>

    v2=v1[1:5]
    v2[0] = 1.0 #v1[1] is also changed
    v2 is v1[1:5] # return FALSE, the internal array is the same but meta data is not which make different identity See internal data structure for detail

## dtype-structured array<a id="sec-13-2" name="sec-13-2"></a>

## syntax/function compared with matlab<a id="sec-13-3" name="sec-13-3"></a>

-   numpy.where() <&#x2013;> find() in matlab

    import numpy as np
    data=np.zeros((2,), dtype=[('A','i4'),('B','f4'),('C','a10')])
    data[:]=[(1,2.0,'Hello'),(2,3,'World')]

## Q&A<a id="sec-13-4" name="sec-13-4"></a>

### A[A>4] gives 1d even if A is 2d. What to obtain a 2D array?<a id="sec-13-4-1" name="sec-13-4-1"></a>

Use np.where(condition[,x,y]) 

    np.where(A>4, A, 0.0) #fill zero for condition false.

### How to extract a sub-array?<a id="sec-13-4-2" name="sec-13-4-2"></a>

Use np.ix\_

    # if a is 2d
    a[np,ix_([1,3],[2,5])] return a sub-array(also 2d) in row 1,3 and columns 2,5. The

# Scikit-learn<a id="sec-14" name="sec-14"></a>

## "Normalization" for OLS<a id="sec-14-1" name="sec-14-1"></a>

The normalization flag in LinearRegression constructor is not clearly explained. sklearn.linear<sub>model</sub>.LinearRegression(normalize=True). After some digging,
we can see that this "normalize" flag is referred to rescaling the observation X. Note than "centering"(i.e, subtracting the mean) is always done regardless of this normalization flag. The source code makes use of a math property the intercept is zero after we center both Y and X. Also, the flag "normalize" is purely for preconditioning. If it set true, the coefficient/intercept are transformed back properly.  Therefore, if ill-conditioning is not an issue, "normalize" flag should not change the value of the attributes *coef\_* or *intercept\_*. 

# Pandas<a id="sec-15" name="sec-15"></a>

## Data Structure:<a id="sec-15-1" name="sec-15-1"></a>

### Series<a id="sec-15-1-1" name="sec-15-1-1"></a>

1.  ndarry-like: can be passed to most NumPy function. Slicing also slice the index

2.  dict-like, can set/get values by index label, like s['key']=val; However, unlike a python dict, if a label doesn't exist, an exception is raised. Note that dict-like insertion(with broadcasting) is ok with DataFrame, ie., df['new col']=val, df.loc[:,'C']=df.loc[:,'A'] can also perform enlargement (DataFrame.ix can also performs enlargement, but not .iloc).

3.  automatic label alignment

        s[1:]+s[:-1] # due to the automatic label aligment, the first and the last entry is NaN

4.  A pandas.series  can be mix-typed; this usually happen when we select a row by DataFrame.loc[label] which gives a Series of dtype: object

        d={'C1':pd.Series([1.,2.,3.]),
           'C2':pd.Series(list('abc'))}
        df=pd.DataFrame(d)
        df.loc[0]
        C1    1
        C2    a
        Name: 0, dtype: object

### Data Frame<a id="sec-15-1-2" name="sec-15-1-2"></a>

1.  two axis: index(row labels, referred as df.index) and columns(column label,referred as df.columns)

2.  can be created from a dict or Series,  numpy structured array, a list of dicts, a dict of tuples(multi-indexed)

        d={'C1':Series([1.,2.,3.,], index=['a','b','c']),
           'C2:'Series(...)}
        df=DataFrame(d)

3.  If the data in DataFrame is numeric, elementwise numpy function and various other numpy functions can be used with no issues.

4.  There exists 3d(panel data in econometrics), 4d and nd dataframe.

## String Manipulation<a id="sec-15-2" name="sec-15-2"></a>

Designed for vectorization and ease to accommodate missing values. It is powerful when combined with pattern matching 

    data = {'Dave': "dave@gmail.com", 'Steve:': 'steve@gmail.com', 'Rob':np.nan}
    series = pd.Series(data)
    pattern = '([A-Z0-9._%+-]+)@([A-Z0-9.-]+)\\.([A-Z]{2,4})'
    series_2 = series.str.match(pattern,flags=re.IGNORECASE)
    series_2.str.get(1)

## Index/Selection<a id="sec-15-3" name="sec-15-3"></a>

    df['foo'] #get the columne 'foo'
    df.foo #column can be accessed like class attribute if the column name is a valid python variable name.
    df[s]: if s is a boolean dataframe (like df[df['col0']<0]) it selects rows instead of columns; this is a bit inconsistent but this syntax arose our of practicality; if s is a boolean dataframe(like df[df<5]] = 0), it picks up the entries.  Note that indexing always returns view instead of copy. Use Dataframe.copy() to obtain a copy   
    df[df<0] #two dimension indexing; the resulting dataframe  has the same shape (still two dimensions in this cases) but the selected entries are NaN; In R, this logical indexing in two dimensions results in one dimension vector. 
    df.where(df>0, -df, inplace=TRUE) # ( replace negatives with its magnitudes. 
    df.mask(df>0) # replace the positive entries with NaN
    df.lookup([row1,row2],[col1,col2]) #return 1d numpy array with two entries (row1,col1),(row2,col2))
    df.select(lambda x: x=='A', axis=1) #keep the column 'A' only 
    df.isin({'A':[1,3],'B':[2,4]})
    df[df.A<10 & df.B>10]
    df.query('colA == "Hello" & colB == "World"')

### Query<a id="sec-15-3-1" name="sec-15-3-1"></a>

-   A very succinct and convenient syntax

    df.query('b==["a","b","c"]') #select rows where column b is the one of the specified values. 
    df.query('b in a') #select rows where column b is one of the values in column a; which is equivalent to  df[df.b.isin(df.a)]

-   A bug makes it extremely dangerous,

    df.query("A='abc'")  # This reset the columan A! '=' should be '=='

### Three indexing methods: by label (.loc), by position(.iloc)  and advance indexing (.ix)<a id="sec-15-3-2" name="sec-15-3-2"></a>

    df.loc[row_idx, col_idx]
    panel.loc[item_idx, major_idx, minor_idx) #assume all for unspecified dim. 
    df[colnames] #([] correponds __getitem__, selecting low-dim slice 
    panel[itemnames]

### use at()/iat() methods for fast scalar value getting and setting([] is slow since it must handle a lot of cases)<a id="sec-15-3-3" name="sec-15-3-3"></a>

### Gotchas<a id="sec-15-3-4" name="sec-15-3-4"></a>

-   df.loc[start<sub>idx</sub>:last<sub>idx]</sub> includes the last index but df[start<sub>idx</sub>:last<sub>idx]</sub> doesn't.

## MultiIndex(column/row)<a id="sec-15-4" name="sec-15-4"></a>

### Select rows with list of values in a level<a id="sec-15-4-1" name="sec-15-4-1"></a>

    gb = df[['date','seg','balance']].groupby(['date','seg']).agg('sum')
    gb[gb.index.get_level_values("seg").isin(["A","B"])]

### Swaplevel and sortlevel<a id="sec-15-4-2" name="sec-15-4-2"></a>

    gb.swaplevel("seg","date").sortlevel("seg")

### flatten multi-index(rows)<a id="sec-15-4-3" name="sec-15-4-3"></a>

    df = pd.DataFrame({'key':['a','a','b','b'], 'val1':np.arange(4), 'val2':np.arange(4)})
    gb = df.groupby('key')
    In [11]: gba = gb.agg({'val1':'size', 'val2':[np.mean,np.sum]})
    Out[11]: 
        val2     val1
        mean sum size
    key              
    a    0.5   1    2
    b    2.5   5    2
    In [17]: gba.columns.values
    Out[17]: array([('val2', 'mean'), ('val2', 'sum'), ('val1', 'size')], dtype=object)
    
    In [18]: gba.columns. get_level_values(0)
    Out[18]: Index([u'val2', u'val2', u'val1'], dtype='object')
    
    In [19]: gba.columns. get_level_values(1)
    Out[19]: Index([u'mean', u'sum', u'size'], dtype='object')
    
    In [20]: gba.columns = gba.columns.get_level_values(0)
    
    In [21]: gba
    Out[21]: 
         val2  val2  val1
    key                  
    a     0.5     1     2
    b     2.5     5     2
    
    In [22]: gba['val2']
    Out[22]: 
         val2  val2
    key            
    a     0.5     1
    b     2.5     5

### Turn on/off sparse hierarchical output<a id="sec-15-4-4" name="sec-15-4-4"></a>

    pd.set_option('display.multi_sparse',True)

### pandas index/multi-index values may not not uniques<a id="sec-15-4-5" name="sec-15-4-5"></a>

    df = pd.DataFrame(np.ones((3,3)), index =['A','B','C'], columns=['foo_1','foo_2', 'foo_3']).set_index(['foo_1','foo_2']).loc[(1,1),:] # this is valid and will return everything.

## groupby and apply<a id="sec-15-5" name="sec-15-5"></a>

Q: How to identify each group in f when using *gb.apply(f)*?
A: the group seems to be in x.name. Note the *group<sub>keys</sub>* in the groupby kwars are NOT for this purpose(the doc is very confusing!). The *group<sub>keys</sub>* are used to indicate whether the group would become an index in the return result of *gb.apply*
<http://stackoverflow.com/questions/38856583/what-does-the-group-keys-argument-to-pandas-groupby-actually-do>

    In [41]: df
    Out[41]: 
        a  b   c   d
    0   0  1   2   3
    1   4  1   6   7
    2   8  5  10  11
    3  12  5  14  15
    4  16  9  18  19
    
    In [42]: def g(x):
        ...:     print x
        ...:     print x.index
        ...:     print x.name
        ...:     print "\n"
        ...:     return x.describe()
        ...:     
        ...: 
    
    In [44]: df_t = df.groupby('b',group_keys=False).apply(g)
       a  b  c  d
    0  0  1  2  3
    1  4  1  6  7
    Int64Index([0, 1], dtype='int64')
       a  b  c  d
    0  0  1  2  3
    1  4  1  6  7
    Int64Index([0, 1], dtype='int64')
    1
    
    
        a  b   c   d
    2   8  5  10  11
    3  12  5  14  15
    Int64Index([2, 3], dtype='int64')
    5
    
    
        a  b   c   d
    4  16  9  18  19
    Int64Index([4], dtype='int64')

## Pivot table<a id="sec-15-6" name="sec-15-6"></a>

Q: How can I pivot table and add a total to each subcategory?
A: Use both the *index* and *columns* in *pd.pivot<sub>table</sub>*; and then use *stack*

    pd.pivot_table(df,values="Duration",index=["Category"],columns=["SubCategory"],aggfunc="sum",margins=True).stack("SubCategory")

## Insert/delete rows/columns<a id="sec-15-7" name="sec-15-7"></a>

df.append(dict-like) # no check for new key; so spelling error would create a new column ; also not in place. 
df['newcol'] = series 
del df['col']

## Chaining<a id="sec-15-8" name="sec-15-8"></a>

    iris=read_csv('data/iris.data')
    iris.query('SepalLength > 5').assign(SepalRatio=lambda x: x.SepalWidth/x.SepalLength, PetalRatio=lambda x: x.PetalWidth/PetalLength).plot(kind='scatter', x='SepalRatio',y='PetalRatio')

## Dataframe: apply<a id="sec-15-9" name="sec-15-9"></a>

    df.apply(lambda x,y: x.where(x>0,y), y=df['A']) #same as df.where(df>0,df['A'],axis='index',inplace=TRUE))

## display<a id="sec-15-10" name="sec-15-10"></a>

    > set_option('display.width',160) #default is 80
    > df.head()
    > bassball=read_csv('data/baseball.csv')
    > baseball.info()
    > baseball.ilocal[-20:, :12].to_string()

## exploratory data analysis<a id="sec-15-11" name="sec-15-11"></a>

    df.info (): summary 
    s.value_count()
    df.dtypes  #show the dtypes for each column
    df.columns=[x.lower() for x in df.columns] #show column names in lower case; 
    df.values #access the values #for heterogeneous data, dtype will be chosen to accommodate all data invloved.
    df.get_dtype_counts() #return the number of columns of each type
    df.someColumn.str.lower #vectorized string methods are available through string attribute. Note that for the column with string, the dtype is object 
    df.convert_objects(convert_numeric=True) convert string that represents a numbedf.select_dtypes(include=['bool','int64']) #select the column of dtype bool and int64
    df.someCol.isin([2,4,6]) #return boolean vectors to indicate whether someCol in {2,4,6}; this boolean vectors can furthur be used for slicing.

## Iterator<a id="sec-15-12" name="sec-15-12"></a>

    for idx, row in df.iterrows(): 
         print ('%s\n%s' % (idx,row))
    #row is a reference, change to row will also alter df.

## Accelerated operations<a id="sec-15-13" name="sec-15-13"></a>

Pandas has support accelerating certain types of binary numerical and boolean operations using the numexpr and bottleneck libraries. 

## convenient features<a id="sec-15-14" name="sec-15-14"></a>

Pandas has the following convenient features 
-   combining two overlapping dataset( A is more preferred but B has more data)

## Time Series<a id="sec-15-15" name="sec-15-15"></a>

    from dateutil.relativedelta import relativedelta

## Gotcha<a id="sec-15-16" name="sec-15-16"></a>

### groupby.apply(f) might apply f twice to the first group<a id="sec-15-16-1" name="sec-15-16-1"></a>

### Never specify the dtype when reading in data. Instead, first read in, then convert <http://stackoverflow.com/questions/15210962/specifying-dtype-with-pandas-read-csv><a id="sec-15-16-2" name="sec-15-16-2"></a>

    # dont' use dtype converters explicity for the columns you care about
    # they will be converted to float64 if possible, or object if they cannot
    df = pd.read_csv('test.csv'.....)
    
    #### this is optional and related to the issue you posted ####
    # force anything that is not a numeric to nan
    # columns are the list of columns that you are interesetd in
    df[columns] = df[columns].convert_objects(convert_numeric=True)
    
    
        # astype
        df[columns] = df[columns].astype('float32')
    
    see http://pandas.pydata.org/pandas-docs/dev/basics.html#object-conversion
    
    Its not as efficient as doing it directly in read_csv (but that requires

### Merge on columns with NaN.<a id="sec-15-16-3" name="sec-15-16-3"></a>

NaN will NOT be ignored during the merge, instead it will merge if the other dataframe also has a NaN. Exclude the NaN from the other data frame is not desired.

    In [23]: df = pd.DataFrame(data= np.arange(6).reshape((3,2)),columns=['id','val'])
    
    In [24]: df
    Out[24]: 
       id  val
    0   0    1
    1   2    3
    2   4    5
    
    In [25]: df.iloc[2,0] = np.nan
    
    In [26]: df
    Out[26]: 
        id  val
    0  0.0    1
    1  2.0    3
    2  NaN    5
    
    In [27]: df2 = pd.DataFrame(data= np.arange(6).reshape((3,2)),columns=['id','val2'])
    
    In [28]: df2.iloc[2,0] = np.nan
    
    In [29]: df2
    Out[29]: 
        id  val2
    0  0.0     1
    1  2.0     3
    2  NaN     5
    
    In [30]: df.merge(df2, on ='id', how = 'left')
    Out[30]: 
        id  val  val2
    0  0.0    1     1
    1  2.0    3     3
    2  NaN    5     5
    
    In [31]: df.merge(df2[df2.id.notnull()], on ='id', how = 'left')
    Out[31]: 
        id  val  val2
    0  0.0    1   1.0
    1  2.0    3   3.0
    2  NaN    5   NaN

### Merge on float vs. int.<a id="sec-15-16-4" name="sec-15-16-4"></a>

if df1.col is float type and df2.col in int type, the merge is carried out based on value equality. 

    df1 = pd.DataFrame(data= np.arange(6).reshape((3,2)),columns=['id','val'])
    df2 = pd.DataFrame(data= np.arange(6).reshape((3,2)),columns=['id','val'])
    df1.iloc[2,0] = np.nan
    df1.iloc[0,0] = 1e-10
    In [43]: df1
    Out[43]: 
                 id  val
    0  1.000000e-10    1
    1  2.000000e+00    3
    2           NaN    5
    
    In [44]: df1.merge(df2, on = 'id', how='left'
        ...: )
    Out[44]: 
                 id  val_x  val_y
    0  1.000000e-10      1    NaN
    1  2.000000e+00      3    3.0
    2           NaN      5    NaN

# Pymssql<a id="sec-16" name="sec-16"></a>

## Doc: <http://www.pymssql.org/en/latest/intro.html><a id="sec-16-1" name="sec-16-1"></a>

## The parameter substitution of pymssql works sliently different than the python DB-API documented in <https://code.google.com/p/pyodbc/wiki/Cursor>. (Cf.<http://stackoverflow.com/questions/23244450/cant-insert-tuple-to-mssql-db>).<a id="sec-16-2" name="sec-16-2"></a>

    cursor.execute("select a from tbl where b=? and c=?", (10, 'Hello')) #Error; should change to: 
    cursor.execute("select a from tbl where b=%d and c=%s", (10, 'Hello')) # string will be properly quoted.

# matplotlib<a id="sec-17" name="sec-17"></a>

If X-window is not setup correctly and matplotlib pylab is not working properly, try:

## Use inline<a id="sec-17-1" name="sec-17-1"></a>

%matplotlib inline
pylab,plot(x,y)
pylab.show()

## Use non-interactive backend:<a id="sec-17-2" name="sec-17-2"></a>

import matplotlib
matplotlib.use('Agg')  # this should put before pylab.plot()
pylab.plot(x,y)
pylab.savefig("test.png")

## Artist<a id="sec-17-3" name="sec-17-3"></a>

-   matplotlib  contains three layers: FigureCanvas, Renderer and Artist. The FigureCanvas and Renderer handle all the details of talking to user interface toolkits like wxPython or drawing languages like PostScript®, and the Artist handles all the high level constructs like representing and laying out the figure, text, and lines.
-   Two types of artists: primitives(eg.Line2D, Rectangle, Text, AxesImage, ect.) and containers. The standard use is to create a Figure, and use Figure to create Axes and use Axes instance helper method to create primitives.

### Figure<a id="sec-17-3-1" name="sec-17-3-1"></a>

Here is a summary of what Figure contains: 

    axes A list of Axes instances (includes Subplot)
    patch The Rectangle background
    images A list of FigureImages patches - useful for raw pixel display
    legends A list of Figure Legend instances (dierent from Axes.legends)
    lines A list of Figure Line2D instances (rarely used, see Axes.lines)
    patches A list of Figure patches (rarely used, see Axes.patches)
    texts A list Figure Text instances

### Axes:<a id="sec-17-3-2" name="sec-17-3-2"></a>

Here is a summary of what axes contains: 

    artists: A list of Artist instances
    patch: Rectangle instance for Axes background
    collections: A list of Collection instances
    images: A list of AxesImage
    legends: A list of Legend instances
    lines: A list of Line2D instances
    patches: A list of Patch instances
    texts: A list of Text instances
    xaxis: matplotlib.axis.XAxis instance
    yaxis: matplotlib.axis.YAxis instance

## transformation and different coordinate systems.<a id="sec-17-4" name="sec-17-4"></a>

data -> axes coordinate -> figure coordinate -> display coordinate 

### data coordinate<a id="sec-17-4-1" name="sec-17-4-1"></a>

The userland data coordinate system, controlled by the xlim and ylim. Artist(Axes) handle the xlim, ylim automatically. ax.transData transform user data directly to display coordinates. In fact,  the transData is a composition of several transformations. 

    self.transData = self.transScale + (self.transLimits + self.transAxes)

### axes coordinate<a id="sec-17-4-2" name="sec-17-4-2"></a>

The coordinate system of the Axes; (0,0) is bottom left of the axes, and (1,1) is top right of the axes. ax.transAxes transform the axes coordinate to display coordiante. 
In the following example, the circle is always in the center of the axes

    import numpy as np
    import matplotlib.pyplot as plt
    import matplotlib.patches as patches
    fig = plt.figure()
    ax = fig.add_subplot(111)
    x, y = 10*np.random.rand(2, 1000)
    ax.plot(x, y, 'go') # plot some data in data coordinates
    circ = patches.Circle((0.5, 0.5), 0.25, transform=ax.transAxes,
    facecolor='yellow', alpha=0.5)
    ax.add_patch(circ)
    plt.show()

### figure coordinate<a id="sec-17-4-3" name="sec-17-4-3"></a>

The coordinate system of the Figure; (0,0) is bottom left of the figure, and (1,1) is top right of the figure. ax.transFigure transform the figure coordinate to display coordinate. 

### display coordinate<a id="sec-17-4-4" name="sec-17-4-4"></a>

This is the pixel coordinate system of the display; (0,0) is the bottom left of the display, and (width, height) is the top right of the display in pixels. Alternatively,the identity transform (matplotlib.transforms.IdentityTransform()) may be used instead of None

### Demo for coordinates<a id="sec-17-4-5" name="sec-17-4-5"></a>

The following example demonstrate drawing using different coordinates. 

    import matplotlib
    import matplotlib.pyplot as plt
    
    fig = plt.gcf()
    
    #the subplot determine how the axes is mapped to figure, i.e., the bounding box the axes. Note that we don't have to divide the figure in the same way as latter. 
    plt.subplot(211) 
    plt.plot([1,2,3], label="test1")
    plt.plot([3,2,1], label="test2")
    # Place a legend above this subplot, expanding itself to fully use the given bounding box. the bbox_to_anchor(left, bottom, width, height) is in axes coordinates. loc = 3  indicates the lower left of the lengend is put on (0.,1.02), Since transAxes map the (0,0), (1,1) to the subplot bounding box, the lengend is outside the subplot bounding box which is ok as seen in the following plot as well. 
    plt.legend(bbox_to_anchor=(0., 1.02, 1., .102), loc=3,ncol=2, mode="expand", borderaxespad=0.)
    
    # we plot two lines to indicate the suplot bounding box 
    l3 = matplotlib.lines.Line2D([0, 1], [0, 1],transform=plt.gca().transAxes, color='r',figure=fig)
    l4 = matplotlib.lines.Line2D([0, 1], [1, 0],transform=plt.gca().transAxes, color='r', figure=fig)
    
    # the subplot determine how the axes is mapped to figure, i.e., the bounding box the axes. Note that we don't have to divide the figure in the same way as previous plot.  
    plt.subplot(223)
    plt.plot([1,2,3], label="test1")
    plt.plot([3,2,1], label="test2")
    # we plot two lines to indicate the suplot bounding box 
    l5 = matplotlib.lines.Line2D([0, 1], [0, 1],transform=plt.gca().transAxes, color='k',figure=fig)
    l6 = matplotlib.lines.Line2D([0, 1], [1, 0],transform=plt.gca().transAxes, color='k', figure=fig)
    # As shown , this lengend is placed outside the subplot bounding box and hence overlap thhe previous subplot. 
    plt.legend(bbox_to_anchor=(1., 1), loc=3, borderaxespad=0.)
    
    # draw two lines to indicate the bounding box of the figure. 
    l1 = matplotlib.lines.Line2D([0, 1], [0, 1],transform=fig.transFigure, figure=fig)
    l2 = matplotlib.lines.Line2D([0, 1], [1, 0],transform=fig.transFigure, figure=fig)
    
    fig.lines.extend([l1, l2,l3,l4,l5,l6])
    plt.show()

### Aspect ratio<a id="sec-17-4-6" name="sec-17-4-6"></a>

In a typical plot, the data is mapped to axes coordinates (0,0) and (1,1). The axes is then mapped to figure with specify size. This process automatically determines how many pixel for one unit of data. This is what happen by default. Sometimes we may want one data unit in x and one data unit in y should represented by the same amount of pixel in the figure. In this case, we need to specify the aspect ratio. We may not be able to map the given range of data to a figure of given size while satisfying the aspect ratio, in this case, we need to adjust either the mapping of the axes to figure or adjust the range the data. 
<http://stackoverflow.com/questions/4747051/matplotlib-subplots-with-fixed-aspect-ratio>

## subplot<a id="sec-17-5" name="sec-17-5"></a>

-   Subplot is just a special case of an Axes that lives on a regular rows by columns grid of Subplot instances. If you want to create an Axes at an arbitrary location, simply use the add<sub>axes</sub>() method which takes a list of [left,bottom,width,height] values in 0-1 relative figure coordinates:

    fig2 = plt.figure()
    ax2 = fig2.add_axes([0.15, 0.1, 0.7, 0.3])

-   See the Demo example in transformation/coordinate systems.
-   Subplot in a figure has spaces in between so that the ticker/label of different subplots don't overlap.  The padding spaces are configured in matplotlibrc file. Sometimes, default padding cannot always prevent overlap of the ticker/labels in which case, we need to use tight<sub>layout</sub>() or manually adjust using *subplots<sub>adjust</sub>*

    # The figure subplot parameters. All dimensions are a fraction of the
    # figure width or height
    #figure.subplot.left : 0.125 # the left side of the subplots of the figure
    #figure.subplot.right : 0.9 # the right side of the subplots of the figure
    #figure.subplot.bottom : 0.1 # the bottom of the subplots of the figure
    #figure.subplot.top : 0.9 # the top of the subplots of the figure
    #figure.subplot.wspace : 0.2 # the amount of width reserved for blank space between␣
    ,→subplots
    #figure.subplot.hspace : 0.2 # the amount of height reserved for white space between␣
    ,→subplots

### How to create multiple subplot shared axis<a id="sec-17-5-1" name="sec-17-5-1"></a>

    # old style
    fig = plt.figure()
    ax1 = fig.add_subplot(221)
    ax2 = fig.add_subplot(222, sharex=ax1, sharey=ax1)
    ax3 = fig.add_subplot(223, sharex=ax1, sharey=ax1)
    ax3 = fig.add_subplot(224, sharex=ax1, sharey=ax1)
    
    # new style method 1; unpack the axes
    fig, ((ax1, ax2), (ax3, ax4)) = plt.subplots(2, 2, sharex=True, sharey=True)
    ax1.plot(x)

<div id="footnotes">
<h2 class="footnotes">Footnotes: </h2>
<div id="text-footnotes">

<div class="footdef"><sup><a id="fn.1" name="fn.1" class="footnum" href="#fnr.1">1</a></sup> <p>DEFINITION NOT FOUND.</p></div>

<div class="footdef"><sup><a id="fn.2" name="fn.2" class="footnum" href="#fnr.2">2</a></sup> <p>DEFINITION NOT FOUND.</p></div>


</div>
</div>
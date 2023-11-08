namespace Courses;
    use namespace Courses\In;
    use namespace Courses\OD;

async function render(): Awaitable<void> {
    echo "<h1>OPP Classes lesson</h1> <br/>";

    // methods_example();

    // properties_example();

    // constructors_example();

    object_disposal_example();

    echo "<br/><h1>OPP Classes lesson</h1><br/>";
}

function object_disposal_example(){
    echo "<br/>Object Disposal example>>>>><br/>";

    using ($f1 = new OD\TextFile("file1.txt", "rw")) {
        //  echo "\$f1 is >" . $f1 . "<\n";  // usage not permitted
        echo "<br>\$f1 is >".$f1->__toString()."<br>";
        // work with the file
        $f1->close(); // close explicitly
        $f1->close(); // try to close again
    } // dispose called here

    using ($f2 = new OD\TextFile("file2.txt", "rw")) {
        echo "<br>\$f2 is >".$f2->__toString()."<br>";
        // work with the file
        // no explicit close
    } // dispose called here

    using ($f3 = OD\TextFile::open_TextFile("file3.txt", "rw")) {
        echo "<br>\$f3 is >".$f3->__toString()."<br>";
        // work with the file
        // no explicit close
    } // dispose called here

    using $f4 = OD\TextFile::open_TextFile("file4.txt", "rw");
    echo "\$f4 is >".$f4->__toString()."<\n";
    using $f5 = new OD\TextFile("file5.txt", "rw");
    echo "\$f5 is >".$f5->__toString()."<\n";
    // work with both files
    // no explicit close
    // dispose called here for both $f4 and $f5

    echo "<br/>>>>>>End of Object Disposal example<br/>";
}


function constructors_example(){
    echo "<br/>Constructors example>>>>><br/>";

    $b = new Constructors\User(34, "Andrei");
    echo "<br> Use id ".$b-> get_id();
    echo "<br> Use name ".$b-> get_name();
    echo "<br>";

    try{
        $p = new Constructors\PremiumUser(30, "Dima", "premium");
        // $p = new Constructors\PremiumUser(30, "Dima");
    } catch(\Exception $e){
        \var_dump ($e);
    }

    echo "<br> Use id ".$p-> get_id();
    echo "<br> Use name ".$p-> get_name();
    echo "<br> Use status ".$p-> get_status();

    echo "<br/>>>>>>End of Constructors example<br/>";
}

function inheritance_example(){
    echo "<br/>Inheritance example>>>>><br/>";

    $b = new In\UnmutableIntBox(34);
    
    echo("<br> Get from UnmutableIntBox =".$b->get());

    $x = new In\MutableIntBox();
    echo("<br> UnmutableIntBox <br>");
    try{
        echo("<br> Get from MutableIntBox ".$x -> get());
    } catch(\Exception $e){
        echo("<br> If \$value is private we have UndefinedPropertyException <br>");
        \var_dump ($e);
    }
    
    
    $x -> set(5);
    echo("<br> Get from UnmutableIntBox <br>");
    echo ($x->get());


    echo "<br/>>>>>>End of Inheritance example<br/>";
}

function properties_example(){

    echo "<br/>Properties example>>>>><br/>";

    $b = new IntBox();
    $b->value();
    echo("<br>"); // method call
    \var_dump($b);
    echo("<br>");
    $b->value; // property access
    \var_dump($b);
    echo("<br>");

    echo "<br/>>>>>>End of Properties example<br/>";
}


function methods_example(){

    echo "<br/>Methods example>>>>><br/>";
    $p = new Person();
    echo($p -> greeting());
    echo("<br>");
    echo(Person::getPersonStatic());
    echo("<br>Call static method from instance<br>");
    echo($p::getPersonStatic());


    echo("<br> BadMethodCallException <br>");
    try{
        echo($p->getPersonStatic());
    } catch (\Exception $e) {
        echo "catch block";
        \var_dump($e);
        echo("<br>");
    }

    echo "<br/>>>>>>End of Methods example<br/>";
}

class Person {
  public string $name = "anonymous";

  public function greeting(): string {

    //you can call static method from non static
    echo ("Call static from non static");
    $this:: getPersonStatic();    
    return "Hi, my name is ".$this->name;
  }

// but you can't have static method with the same name
//     public static function greeting(): string {
//     return "Hi, my static name is ".$this->name;
//   }


  public static function getPersonStatic(): string {
    return "I'm static";
  }
// this is not work
//     public static function getErrorStatic(): string {
//     return "I'm static".$this->name;
//   }
}

class IntBox {
  public int $value = 0;

  public function value(): int {
    echo "method call";
    return $this->value;
  }
}
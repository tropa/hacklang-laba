namespace Courses;

async function render(): Awaitable<void> {
    echo "Expression file";
    echo "<br/>";
    // echo_example();

    // invariant_example();

    // list_example();

    new_example();

    // subscript_example();
    


    echo "<br/>End lfile<br/>";
}

function subscript_example(){
    $v = vec[10, 25, -6];
    \var_dump($v);
    echo "<br/>";
    $v[] = 99; 
    \var_dump($v);
    echo "<br/>";

    $s = vec[];
    \var_dump($s);
    echo "<br/>";
    $s[] = 99; 
    \var_dump($s);

}

function new_example (){
    echo "<br/>New example<br/>";

    f(Example::class);

    $ex = new ExampleChildClass();
    \var_dump($ex);


    try{
        f(new Example());
    } catch (\Exception $e) {
        echo "catch block for ExampleChildClass";
        echo "<br/>";

        \var_dump($e);
        echo("<br/>".$e->getMessage()."<br/>");
    }


    echo "<br/>End list example<br/>";
}

function list_example(){
    echo "<br/>List example<br/>";

   $tuple = tuple('one', 'two', 'three');
    list($one, $two, $three) = $tuple;
    echo "1 -> {$one}, 2 -> {$two}, 3 -> {$three}\n";

    echo "<br/>Vector example<br/>";
        $vec_of_tuples = vec[
        tuple('A', 'B', 'C'),
        tuple('a', 'b', 'c'),
        tuple('X', 'Y', 'Z'),
        ];

        foreach ($vec_of_tuples as list($first, $second, $third)) {
        echo " first - {$first} <br\> second -  {$second}  <br\> third - {$third}";
    }
    echo "<br/>Vector example end<br/>";

    echo "<br/>End list example<br/>";
}

function echo_example(){
    $v1 = true;
    $v2 = 123.45;
    // echo '>>'.$v1.'|'.$v2."<<\n"; // outputs ">>1|123.45<<"

    $v3 = "abc{$v2}xyz"; // outputs "abc123.45xyz"
    echo "$v3\n";

    \print_r_pure("some valeu ".$v2);
    \printf("some valeu {$v2}");

    echo "<br/>";
    echo "echo_example end here <br/>";
}

function invariant_example(){
    echo "<br/>Invariant example<br/>";

    $inv = new Invariant(11);
    \var_dump($inv);

    echo $inv -> print();


    echo "<br/>";
    echo "Invariant  after constructor";
    echo "<br/>";

    \var_dump($inv);


    echo "<br/>";
    echo "Invariant  valide";
    echo "<br/>";
    invariant($inv is Invariant, "Object must be Invariant");


    echo "<br/>";
    echo "Invariant  invalide";
    echo "<br/>";
    $v = "10";
    try{
        invariant($v is Invariant, "Object must be Invariant!!!!");
    } catch (\Exception $e) {
        echo "catch block";
        // \var_dump($e);
        echo("<br/>".$e->getMessage()."<br/>");
    }

    try{
        if($v is Invariant) {

        } else {
            throw new \HH\InvariantException("Object must be Invariant", 1);
        }
    } catch (\Exception $e) {
        echo "catch block for if statement";
        echo("<br/>".$e->getMessage()."<br/>");
    }

    echo "<br/>";
    echo "after invalide invariant";
    echo "<br/>";
}


class Invariant {
    private int $i = 10;

    // public function __construct (num $x){
    //     $this->i = $x;
    //     echo "<br/>constructor work here<br/>";

    // }

    public function print(): string {
        return "Invariant print";
    }
}

class Example{
    function __construct(){
        echo "<br/>constructor Exampole<br/>";
    }
}

class ExampleChildClass extends Example {

    function __construct(){
        echo "<br/>constructor ExampleChildClass<br/>";
    }
}

function f(classname<Example> $clsname): void {
        \var_dump ($clsname);
        // $w = new $clsname();
        // \var_dump($w);
    echo "<br/>constructor ExampleChildClass<br/>";

}




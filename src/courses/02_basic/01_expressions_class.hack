namespace Courses;

async function render(): Awaitable<void> {
    echo "<h1>Expression file</h1> <br/>";

    // echo_example();

    // invariant_example();

    // list_example();

    // new_example();

    // subscript_example();
    
    // coalesce_example();

    pipe_example();


    echo "<br/><h1>End of file execution</h1><br/>";
}

function pipe_example(){

    echo "<br/>Coalesce example >>>>><br/>";

    $x = vec[2,1,3];
    \var_dump($x);
    echo "<br/>";

    $y = \HH\Lib\Vec\map($x, $a ==> $a * $a);
    \var_dump($y);

    echo "<br/>";
    $z= \HH\Lib\Vec\sort($y);
    \var_dump($z);

    echo "<br/>Pipe<br/>";
    $pipe = vec[2,1,3]
        |> \HH\Lib\Vec\map($$, $a ==> $a * $a) 
        |> \HH\Lib\Vec\sort($$); 
    \var_dump($pipe);

    echo "<br/>>>>>>End of Coalesce example<br/>";
}

function coalesce_example(){
    echo "<br/>Coalesce example >>>>><br/>";
    $nully = null;
    $nonnull = 'a string';
    \print_r(vec[
        $nully ?? 10,    // 10 as $nully is `null`
        $nonnull ?? 10,  // 'a string' as $nonnull is `nonnull`
    ]);

    echo "<br/>";

    $arr = dict['black' => 10, 'white' => null];
    \print_r(vec[
        $arr['black'] ?? -100,  // 10 as $arr['black'] is defined and not null
        $arr['white'] ?? -200,  // -200 as $arr['white'] is null
        $arr['green'] ?? -300,  // -300 as $arr['green'] is not defined
    ]);


    echo "<br/>idx() example <br/>";

    $arr = dict['black' => 10, 'white' => null];
    \print_r(vec[
    idx($arr, 'black', -100),  // 10
    idx($arr, 'white', -200),  // null
    idx($arr, 'green', -300),  // -300
    idx($arr, 'green'),        // null
    ]);

    echo "<br/>>>>>>End of Coalesce example<br/>";
}

function subscript_example(){
    echo "<br/>Subscribe example >>>>><br/>";

    $v = vec[10, 25, -6];
    \var_dump($v);
    echo "<br/>";
    //you can add new item in vec
    $v[] = 99; 
    \var_dump($v);
    echo "<br/>";

    $s = vec[];
    \var_dump($s);
    echo "<br/>";
    //you can add new item in vec even if it's empty
    $s[] = 99; 
    \var_dump($s);

    echo "<br/>>>>>>End of Subscribe example<br/>";

}

function new_example (){
    echo "<br/>New operator example>>>>><br/>";

    // you can create new instance using 
    f(ExampleClass::class);


    //new class instatnce
    echo "<br/>initialisation order<br/>";
    $ex = new ExampleChildClass();
    \var_dump($ex);
    echo "<br/>end of initialisation order<br/>";


    //new class instatnce
    echo "<br/>class with constructor with parameter<br/>";
    try{
        f(Example::class);
        f(Invariant::class);
    } catch (\Exception $e) {
        echo "catch block for ExampleChildClass";
        echo "<br/>";
        \var_dump($e);
        echo("<br/>".$e->getMessage()."<br/>");
    }
    echo "<br/>>>>>>End of New operator example<br/>";
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

    public function __construct (num $x){
        $this->i = $x;
        echo "<br/>constructor work here<br/>";

    }

    public function print(): string {
        return "Invariant print";
    }
}

class ExampleClass{
    function __construct(){
        echo "<br/>constructor Example<br/>";
    }
}

class ExampleChildClass extends ExampleClass {

    function __construct(){
        echo "<br/>constructor ExampleChildClass<br/>";
    }
}

function f(classname<ExampleClass> $clsname): void {
    echo "<br/>function f execution<br/>";
        \var_dump ($clsname);
        $w = new $clsname();
        \var_dump($w);
    echo "<br/> end function f execution<br/>";

}




namespace Courses;

async function render(): Awaitable<void> {
    echo "<h1>Functions file</h1> <br/>";


    // typle_example();

    // shape_example();


    echo "<br/><h1>End of file execution</h1><br/>";
}


function shape_example(){
    echo "<br/>Format Shape example>>>>><br/>";

    $my_point = shape('x' => -3, 'y' => 6, 'visible' => true);
    \var_dump($my_point);
    echo("<br>");
    $n = $my_point['x'];
    \var_dump($n);

    echo("<br> Not OK (type error) must be, but it's works <br>");
    $field = 'y';
    $x = $my_point[$field];
    \var_dump($x);

    // Shapes are copy-on-write.
    echo("<br> Shapes are copy-on-write<br>");
    $s1 = shape('name' => 'db-01', 'age' => 365);
    $s2 = $s1;

    $s2['age'] = 42;

    \var_dump($s1);
    echo("<br>");
    \var_dump($s2);
    // $s1['age'] is still 365.

    echo("<br>");
    echo("<br>A shape can be constructed incrementally<br>");
    // $s has type shape().
    $s = shape();

    // $s now has type shape('name' => string).
    $s['name'] = 'db-01';
    \var_dump($s);
    echo("<br>");

    // $s now has type shape('name' => string, 'age' => int).
    $s['age'] = 365;
    \var_dump($s);
    echo("<br>");

    echo("<br>Since shapes are copy-on-write, updates can change the type<br>");
    // $s has type shape('name' => string, 'age' => int).
    $s = shape('name' => 'db-01', 'age' => 365);
    \var_dump($s);
    echo("<br>");


    // $s now has type shape('name' => string, 'age' => string).
    $s['age'] = '1 year';
    \var_dump($s);
    echo("<br>");

    echo("<br>To access the additional fields in an open shape, you can use Shapes::idx.<br>");
    takes_named(shape('name' => 'db-01', 'age' => 365));
    echo("<br>");
    takes_named(shape('name' => 'db-01', 'agee' => 365));

    echo "<br/>>>>>>End of Shape example<br/>";
}


function takes_named(shape('name' => string, ...) $n): void {
    echo("<br>The value in the shape, or null if field is absent<br>");
    $nullable_age = Shapes::idx($n, 'age');
    \var_dump($nullable_age);

    echo("<br>The value in the shape, or 0 if field is absent.<br>");
    $age_with_default = Shapes::idx($n, 'age', 0);
    \var_dump($age_with_default);
}

function typle_example(){
    echo "<br/>>>>>>End of Tuples example<br/>";
    //works fine
    $v = tuple("apples", 25);
    process_pair($v);

    //works fine
    $f = tuple("apples", 25, "new param");
    echo("<br>");
    //under the hood tuple is vector
    \var_dump($f);
    echo("<br>");

    process_pair($f);


    //error
    echo("<br>error message<br>");
    echo($f[0]);
    echo("<br>");

    echo($f[1]);
    echo("<br>");

    echo($f[2]);
    echo("<br>");

    //exception here
    try{
        echo($f[3]);
        echo("<br>");
    } catch (\Exception $e){
        echo "catch block<br>";
        \var_dump($e);
        echo("<br/>".$e->getMessage()."<br/>");
        // echo("<br/>".$e->getErrno()."<br/>");
    }
    echo "<br/>>>>>>End of Tuples example<br/>";

}

function process_pair((string, int) $pair): void {
    echo("process_pair<br>");
    foreach ($pair as $value) {
        echo($value."<br>");
    }
} 
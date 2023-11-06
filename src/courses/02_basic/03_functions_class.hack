namespace Courses;

async function render(): Awaitable<void> {
    echo "<h1>Functions file</h1> <br/>";

    // inproduction_example();

    // anonymous_example();

    // type_enforcement();

    format_strings_examaple();

    
    echo "<br/><h1>End of file execution</h1><br/>";
}

function  format_strings_examaple(){
    echo "<br/>Format Strings example>>>>><br/>";

    // this is not works. Be carefylly with namespases
    // Str\format("First: %d, second: %s", 1, "foo");

    //works fine
    echo(\HH\Lib\Str\format("First: %d, second: %s", 1, "foo"));
    echo("<br>");

    //works fine as well (cast paramt)
    echo(\HH\Lib\Str\format("First: %d, second: %s", "33", 112));

    //runtime error
    // echo(\HH\Lib\Str\format("First: %d, second: %s", 1));

    echo "<br/>>>>>>End of Format Strings<br/>";
}

function takes_format_string(
        \HH\FormatString<\PlainSprintf> $format,
        mixed ...$args
    ): void {
        echo(\HH\Lib\Str\format($format, $args[0], $args[1]));
    }


function function_example(int $x = 10, int $y = 0, int $z = -10): int {
    echo("<br>Example function execution<br>");
    echo( "x = ".$x."<br>");
    echo( "y = ".$y."<br>");
    echo( "z = ".$z."<br>");
    return $x + $y + $z;
}

function anonymous_example(){
    echo "<br/>anonymous example>>>>><br/>";

    $f = $x ==> $x * $x;
    \var_dump($f);
    echo("<br>");
    $one = $f(34);
    \var_dump($one);


    echo("<br>function with 2 parameters<br>");
    //function with 2 parameters
    $x = ($y, $z = 2) ==> $y * $z;
    \var_dump($x);
    echo("<br> only one param");
    $two = $x(34);
    \var_dump($two);
    echo("<br> both param");
    $two = $x(34, 10);
    \var_dump($two);


    echo("<br>");
    echo "<br/>>>>>>End of anonymous_example<br/>";
}

function inproduction_example(){
    echo "<br/>inproduction example>>>>><br/>";

    echo("result is : ".function_example());
    echo("result is : ".function_example(1, 2, 3));

    //need to add posibility to skip some prameters
    // echo("result is : ".function_example(3, $_, 4));

    echo "<br/>>>>>>End of inproduction example<br/>";
}

function type_enforcement(){
    echo "<br/>Type Enforcement example>>>>><br/>";

    $a = 10;
    \var_dump($a);

    echo("<br> it's possible to change value type<br>");

    $a = "string value";
    \var_dump($a);

    // takes_int("not an int"); // runtime error.

    // even with try catch in doesn't work. HHVM will raise a fatal error.
    try{
        takes_int(1);
        // takes_int("not an int");
    } catch (\Exception $e) {
        echo "catch block for if statement";
        echo("<br/>".$e->getMessage()."<br/>");
    }
    
    echo "<br/>>>>>>End of Type Enforcement example<br/>";
}

function takes_int(int $x): void {
    echo("<br> function takes_int with param ".$x);
}

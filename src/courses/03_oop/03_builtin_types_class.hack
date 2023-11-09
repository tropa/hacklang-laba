namespace Courses;

use namespace Courses\Enum;

async function render(): Awaitable<void> {
    echo "<h1>OOP Built In Types lesson</h1> <br/>";

    // enum_example();
    
    enum_class_example();

    echo "<br/><h1>End of OOP Built In Types lesson</h1><br/>";
}

function enum_class_example(){
    echo "<br/>Enum class example>>>>><br/>";

    
    \var_dump(Names::Hello);


    echo "<br/>>>>>>End of Enum class example<br/>";
}

function enum_example(){
    echo "<br/>Enum example>>>>><br/>";
    $names = Position::getNames();

    echo "<br> ----- getValues() / getNames() finctions ---";   
    echo "<br> Position::getNames() ---";
    foreach ($names as $key => $value) {
        echo "<br>\key >$key< has value >$value<";
    }

    echo "<br>";
    $values = Position::getValues();
    echo "<br> Position::getValues() ---";
    foreach ($values as $key => $value) {
        echo "<br> key >$key< has value >$value< ";
    }

    echo "<br> ----- assert() / coerce() finctions ---";    
    echo "<br> Position::assert(2) ";
    \var_dump(Position::assert(2)); // 2

    echo "<br> Position::assert(16)  ";
    try{
        Position::assert(16); // UnexpectedValueException
    } catch (\UnexpectedValueException $e) {
        \var_dump($e);
    }

    echo "<br>";
    echo "<br> Position::coerce(2) ";
    \var_dump(Position::coerce(2)); // 2
    echo "<br> Position::coerce(2.0) ";
    \var_dump(Position::coerce(2.0)); // null
    echo "<br> Position::coerce(216) ";
    \var_dump(Position::coerce(16)); // null
    
    echo "<br>";
    echo "<br> ----- assert() / coerce() finctions ---";    
    echo "<br> Position::isValid(2) ";
    \var_dump(Position::isValid(2));
    echo "<br> Position::isValid(\"2\") ";
    \var_dump(Position::isValid("2")); //converted
    echo "<br> Position::isValid(2.0) ";
    \var_dump(Position::isValid(2.0));
    echo "<br> Position::isValid(\"2.0\") ";
    \var_dump(Position::isValid("2.0"));
    echo "<br> Position::isValid(8) ";
    \var_dump(Position::isValid(8));

    echo "<br>";
    echo "<br> ----- is / as finctions ---";    
    echo "<br> 1 is Position ";
    \var_dump(1 is Position); // true
    echo "<br> 1 as Position ";
    \var_dump(1 as Position); // 1

    echo "<br> 42 is Position ";
    \var_dump(42 is Position); // false
    echo "<br> 42 is Position ";
    try{
        \var_dump(42 as Position); // TypeAssertionException
    } catch (\TypeAssertionException $e) {
        \var_dump($e);
    }


    echo "<br> foo' is Position ";
    \var_dump('foo' is Position); // false
    echo "<br> 'foo' as Position ";
    try{
        \var_dump('foo' as Position); // TypeAssertionException
    } catch (\TypeAssertionException $e) {
        \var_dump($e);
    }

    echo "<br> '1' is Position ";
    \var_dump('1' is Position); // CAUTION - true
    echo "<br> '1' as Position ";
    \var_dump('1' as Position); // CAUTION - '1'

    echo "<br/>>>>>>End of Enum example<br/>";
}

enum Position: int {
  Top = 0;
  Bottom = 1;
  Left = 2;
  Right = Position::Top + 10;
  Center = 4;
}

enum class Names: IHasName {
  HasName Hello = new Enum\HasName('hello');
  HasName World = new Enum\HasName('world');
  ConstName Bar = new Enum\ConstName();
}
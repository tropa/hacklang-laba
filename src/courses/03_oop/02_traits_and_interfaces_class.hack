namespace Courses;
use namespace Courses\Traits;

async function render(): Awaitable<void> {
    echo "<h1>OPP Classes lesson</h1> <br/>";

    // traits_example();

    traits_requirements_example();


    echo "<br/><h1>OPP Traits And Interfaces lesson</h1><br/>";
}

function traits_requirements_example(){
    echo "<br/>Using A Trait And Interface Requirements example>>>>><br/>";

     $ab = new Traits\AirBus();
    \var_dump($ab);
    echo "<br> \$ab->takeOff()<br>";
    \var_dump($ab->takeOff());

    echo "<br/>>>>>>End of Trait And Interface Requirements example<br/>";
}

function traits_example(){
    echo "<br/>Using A Trait example>>>>><br/>";

    $c1 = new Traits\C1();
    $c1 -> foo();
    echo "<br>";
    $c1 -> foo();
    echo "<br>";
    $c1 -> foo();
    echo "<br>New instance<br>";

    $c1_new = new Traits\C1();
    $c1_new -> foo();
    echo "<br>";
        $c1_new -> foo();
    echo "<br>";
        $c1_new -> foo();
    echo "<br>";

    echo "<br>Change value<br>";
    $c1_new = new Traits\C1();
    $c1_new -> foo();
    echo "<br> here x = 8 <br>";
    $c1_new -> x = 8;
    $c1_new -> foo();

    echo "<br>";
    (new Traits\C2()) -> bar();

    echo "<br/>>>>>>End of Using A Trait example<br/>";
}


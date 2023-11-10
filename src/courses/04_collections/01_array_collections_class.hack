namespace Courses;

async function render(): Awaitable<void> {
    echo "<h1>Arrays And Collections file</h1> <br/>";

    intro_example();

    echo "<br/><h1>End of file execution</h1><br/>";
}


function intro_example(){
    echo "<br/>Introduction  example>>>>><br/>";

    echo "<br/> Initial vec -> ";
    $v = vec[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    \var_dump($v);
    $n = 1;
    echo "<br/> Vec\\drop -> ";
    \var_dump(\HH\Lib\Vec\drop($v,$n));

    echo "<br/> but \$v  -> ";
    \var_dump($v);
    echo "<br/>";

    echo "<br/> Vec\\take -> ";
    \var_dump(\HH\Lib\Vec\take($v,1));
    echo "<br/> but \$v  -> ";
    \var_dump($v);
    echo "<br/>";



    echo "<br/> pop_front -> ";
    \var_dump(\HH\Lib\C\pop_front(inout $v));
    echo "<br/>";
    \var_dump($v);

    echo "<br/> pop_back -> ";
    \var_dump(\HH\Lib\C\pop_back(inout $v));
    echo "<br/>";
    \var_dump($v);
    echo "<br/> pop_back -> ";
    \var_dump(\HH\Lib\C\pop_back(inout $v));
    echo "<br/>";
    \var_dump($v);



    echo "<br/>>>>>>End of Introduction example<br/>";

}



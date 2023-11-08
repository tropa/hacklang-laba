namespace Courses;

async function render(): Awaitable<void> {
    echo "<h1>Statements file</h1> <br/>";

    foreach_example();

    echo "<br/><h1>End of file execution</h1><br/>";
}

function foreach_example(){
    echo "<br/>Foreach example >>>>><br/>";
    $colors = vec["red", "white", "blue"];
        foreach ($colors as $key => $color) {
        echo($key. " ->");
        echo($color);
        // \var_dump($a);
        // \var_dump($key);
        echo("<br/>");
    }

    echo "<br/>Using just value<br/>";

    foreach ($colors as $color) {
        echo($color);
        echo("<br/>");
    }

    echo "<br/>Using just dict<br/>";

    $a = dict['a' => 10, 'f' => 30];
    foreach ($a as $key => $_) { // 10 and 30 are ignored
        echo($key. " ->");
        // echo($color);
  }

      // this is work
    echo "<br/>Using just \$_<br/>";

          // this is not work
    echo "<br/>Using just $_<br/>";

  echo "<br/>>>>>>End of Foreach example<br/>";
}
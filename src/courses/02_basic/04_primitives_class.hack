namespace Courses;

async function render(): Awaitable<void> {
    echo "<h1>Functions file</h1> <br/>";

    
    typle_example();

    echo "<br/><h1>End of file execution</h1><br/>";
}

function typle_example(){
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


}

function process_pair((string, int) $pair): void {
    echo("process_pair<br>");
    foreach ($pair as $value) {
        echo($value."<br>");
    }
} 
namespace Courses;

async function render(): Awaitable<void> {
    echo "Expression file";
    echo "<br/>";
    echo_example();
    echo "Expression file\n";
    

    $inv = new Invariant();

    invariant($inv is Invariant, "Object must be Invariant");
}

function echo_example(){
    $v1 = true;
    $v2 = 123.45;
    // echo '>>'.$v1.'|'.$v2."<<\n"; // outputs ">>1|123.45<<"

    $v3 = "abc{$v2}xyz"; // outputs "abc123.45xyz"
    echo "$v3\n";

    \print_r_pure("some valeu ".$v2);
    \printf("some valeu {$v2}");
}


class Invariant {
    public function __construct (){
        echo "<br/>";
        echo "<Invariant constructor>";
    }

}


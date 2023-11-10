namespace Courses;

use namespace \HH\Lib\{C, Vec};

async function render(): Awaitable<void> {
    echo "<h1>Arrays And Collections file</h1> <br/>";

    // intro_example();
    
    vec_example();

    echo "<br/><h1>End of file execution</h1><br/>";
}

function vec_example(){
    echo "<br/>Vec example>>>>><br/>";
    $items = vec['a', 'b', 'c'];

    echo "<br/>Accessing items by index<br>";
    echo "<br/>\$items[0] - ".$items[0];
    try{
        echo "<br/>\$items[3] - ".$items[3];
    } catch (\OutOfBoundsException $e) {
        echo "<br/>\$items[3] - OutOfBoundsException<br>";
        \var_dump($e);
        echo "<br/>";
    }


    echo "<br/>Accessing items that might be out-of-bounds<br>";
    echo "<br/>\idx(\$items, 0) - ".idx($items, 0);
    echo "<br/>idx(\$items, 3) - ";
    \var_dump(idx($items, 3));
    echo "<br/>idx(\$items, 3, 'default') - ".idx($items, 3, 'default');
    echo "<br/>";

    // Modifying items. These operations set $items
    // to a modified copy, and do not modify the original value.
    echo "<br/>Modifying items. These operations set \$items<br>to a modified copy, and do not modify the original value.<br>";
    $items[0] = 'xx';// vec['xx', 'b', 'c']
    \var_dump($items); 
    echo "<br/>";
    $items[] = 'd'; 
    \var_dump($items);// vec['xx', 'b', 'c', 'd']
    echo "<br/>";

    echo "<br/>";



    echo "<br/>Getting the length";
    echo "<br/>C\count(\$items) - ".C\count($items);
    echo "<br/>";


    // Seeing if a vec contains a value or index.

    echo "<br/>Seeing if a vec contains a value or index";
    echo "<br/>C\contains(\$items, 'a') - ";
    \var_dump(C\contains($items, 'a'));

    echo "<br/>C\contains(\$items, 'xx') - ";
    \var_dump(C\contains($items, 'xx'));
    echo "<br/>";
    echo "<br/>C\contains_key(\$items, 2) - ";
    \var_dump(C\contains_key($items, 2));
    echo "<br/>C\contains_key(\$items, 22) - ";
    \var_dump(C\contains_key($items, 22));
    echo "<br/>";

    // Iterating.
    echo "<br/>Iterating<br>";
    foreach ($items as $item) {
        echo $item."<br>";
    }
    echo "<br/>Iterating with the index<br>";

    foreach ($items as $index => $item) {
        echo $index." - "; // e.g. 0
        echo $item."<br>";  // e.g. 'a'
    }

    // Equality checks. Elements are recursively compared with ===.
    vec[1] === vec[1]; // true
    vec[1, 2] === vec[2, 1]; // false

    // Combining vecs.
    Vec\concat(vec[1], vec[2, 3]); // vec[1, 2, 3]

    // Removing items at an index.
    $items = vec['a', 'b', 'c'];
    $n = 1;
    Vec\concat(Vec\take($items, $n), Vec\drop($items, $n + 1)); // vec['a', 'c']

    // Converting from an Iterable.
    vec(keyset[10, 11]); // vec[10, 11]
    vec(Vector { 20, 21 }); // vec[20, 21]
    vec(dict['key1' => 'value1']); // vec['value1']

    // Type checks.
    $items is vec<_>; // true


    echo "<br/>>>>>>End of Vec example<br/>";

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



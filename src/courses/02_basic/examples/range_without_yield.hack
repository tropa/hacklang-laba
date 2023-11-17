<<__EntryPoint>>
function main(): void
{
    $mem_start = memory_get_usage();
    
    echo "Generating lot of numbers consuming the memory..." . "\n";
    foreach (range(1, 1000000, 2) as $number) {
       // do something
    }

    $mem_stop = memory_get_usage();

    echo "Starting memory usage: " . $mem_start . "\n";
    echo "Final memory usage: " . $mem_stop ."\n";

    echo $mem_stop - $mem_start ." bytes difference" . "\n";
}

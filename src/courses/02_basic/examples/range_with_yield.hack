use namespace HH\Lib\File;


function xrange($start, $limit, $step = 1) {
    if ($start <= $limit) {
        if ($step <= 0) {
            throw new LogicException('Step must be positive');
        }

        for ($i = $start; $i <= $limit; $i += $step) {
            yield $i;
        }
    } else {
        if ($step >= 0) {
            throw new LogicException('Step must be negative');
        }

        for ($i = $start; $i >= $limit; $i += $step) {
            yield $i;
        }
    }
}


<<__EntryPoint>>
function main(): void
{
    $mem_start = memory_get_usage();
    
    echo "Generating lot of numbers safely". "\n";
    foreach (xrange(1, 1000000, 2) as $number) {
        // do something
    }

    $mem_stop = memory_get_usage();

    echo "Starting memory usage: " . $mem_start . "\n";
    echo "Final memory usage: " . $mem_stop ."\n";

    echo $mem_stop - $mem_start ." bytes difference" . "\n";
}

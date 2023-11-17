
async function csv_reader(string $filename): Awaitable<vec> {
   $f = \fopen($filename, 'r');
   $lines = vec[];

   try {
      while ($line = \fgets($f)) {
         $lines[] = $line;
      }
   } finally {
      \fclose($f);
   }

   return $lines;
}

<<__EntryPoint>>
async function main(): Awaitable<void>
{
    //ini_set('memory_limit', '128MB');

    $filename = __DIR__."/huge_csv.txt";

    $mem_start = memory_get_usage()/1048576;
    
    $csv_gen = await csv_reader($filename);
    $row_count = 0;

    foreach ($csv_gen as $row)
        $row_count += 1;

    echo "Row count is {$row_count}" . "\n";

    $mem_stop = memory_get_usage()/1048576;

    echo "Starting memory usage: " . $mem_start . "\n";
    echo "Final memory usage: " . $mem_stop ."\n";

    echo $mem_stop - $mem_start ." Mbytes difference" . "\n";
}
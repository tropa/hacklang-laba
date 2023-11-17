
async function csv_reader(string $filename): AsyncGenerator<string> {
   $f = \fopen($filename, 'rb');

   try {
      while ( ($line = \fgets($f)) !== false) {
        yield rtrim($line, "\r\n");
      }
   } finally {
      \fclose($f);
   }
}

<<__EntryPoint>>
async function main(): Awaitable<void>
{
    //ini_set('memory_limit', '128MB');

    $filename = __DIR__."/huge_csv.txt";

    $mem_start = memory_get_usage()/1048576;
    
    $row_count = 0;

    foreach (csv_reader($filename) await as $row)
        $row_count += 1;

    echo "Row count is {$row_count}" . "\n";

    $mem_stop = memory_get_usage()/1048576;

    echo "Starting memory usage: " . $mem_start . "\n";
    echo "Final memory usage: " . $mem_stop ."\n";

    echo $mem_stop - $mem_start ." Mbytes difference" . "\n";
}
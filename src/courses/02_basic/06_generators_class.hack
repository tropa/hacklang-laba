
namespace Courses;

async function render(): Awaitable<void> {
    echo <<<'EOD'
    <div class="col-lg-8 mx-auto p-3 py-md-5">
        <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
            <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
                <span class="fs-4">SOLVD Hack.laba</span>
            </a>
        </header>

        <main>
            <h1>Yield</h1>
            <a href="/" type="button" class="btn btn-outline-secondary">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"></path>
                </svg>
                Back
            </a>

            <p class="fs-5 col-md-8"></p>

            <div class="mb-10">
                <p>
                    Why is this necessary, this incomprehensible crap?
                </p>
            </div>

            <hr class="col-7 col-md-7 mb-7" />

            <div class="row g-5">
                <div class="col-md-12">
                    <p>
                        Let me remind you that both PHP and hack are both single-threaded engines.
                        PHP's job is to accept an incoming HTTP request and generate a response to it. 
                        One request - one answer. The scheme is very simple, and it is very convenient to process linearly in one thread.
                    </p>
                    <p>
                        However, this is convenient until you learn from the documentation that your one server must serve tens, hundreds, and if your site is really cool and everyone needs it, 
                        then thousands of clients at the same time, each of which sends some requests.
                        If your site is forced to perform complex calculations in memory in response to each request, then this may one day become a problem if the size of the array that needs to be allocated in memory exceeds the size of the memory that is generally available to your script.
                    </p>
                    
                    <p>
                        Generator functions are a special kind of function that return a lazy iterator. 
                        Generator provides a function that <strong>generates</strong> a set of values.
                        These are objects that you can loop over like a list.
                        However, unlike lists, lazy iterators do not store their contents in memory. 

                        Regular iterator works with stored data.
                    </p>

                    <p>
                        A common use case of generators is to work with data streams or large files, like CSV files.
                    </p>

                    <p>
                        Let's look at a slightly artificial example, which, nevertheless, can very often occur in one form or another in real life and, worse, in real projects:
                    </p>

                    <div class="highlight fbgfm source-language-Hack">
                        <pre>
                            // Suppose there is <code>csv_reader()</code> function that reads all lines from a file some_csv.txt.
                            // The code block below shows one way of counting rows:

                            $csv_gen = csv_reader("some_csv.txt");
                            $row_count = 0

                            foreach ($csv_gen as $row)
                            &nbsp;&nbsp;&nbsp;$row_count += 1;

                            echo("Row count is {$row_count}");
                        </pre>
                    </div>

                    <p>
                        Looking at this example, you might expect <code>$csv_gen</code> to be a list. 
                        To populate this list, <code>csv_reader()</code> opens a file and <strong>loads</strong> its contents into <code>$csv_gen</code>. 
                        Then, the program iterates over the list and increments <code>$row_count</code> for each row.
                    </p>

                    <p>
                        But would this design still work if the file is very large? What if the file is larger than the memory you have available? 
                        To answer this question, let's assume that <code>csv_reader()</code> just opens the file and reads it into an array:
                    </p>

                    <div class="highlight fbgfm source-language-Hack">
                        <pre>
                            // dont't do like this

                            function csv_reader($filename) {
                            &nbsp;&nbsp;&nbsp;$f = \fopen($filename, 'r');
                            &nbsp;&nbsp;&nbsp;$lines = vec[];

                            &nbsp;&nbsp;&nbsp;try {
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while ($line = fgets($f)) {
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$lines[] = $line;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
                            &nbsp;&nbsp;&nbsp;} finally {
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\fclose($f);
                            &nbsp;&nbsp;&nbsp;}

                            &nbsp;&nbsp;&nbsp;return $lines;
                            }
                        </pre>
                    </div>

                    <p>
                        This function opens a given file and uses fgets() to take each line as a separate element to a vector (kind of an array).
                        If you were to use this version of <code>csv_reader()</code> in the row counting code block you saw further up, then you migth get the following output:
                    </p>

                    <div class="highlight fbgfm source-language-Hack">
                        <pre>
                            we have a test file with lots of rows in src/courses/02_basic/examples/huge_csv.txt
                            run <code>docker exec -it hack-laba hhvm /var/www/src/courses/02_basic/examples/file_without_yield.hack</code>
                            <span class="php-output">
                                Row count is 471930
                                Starting memory usage: 1
                                Final memory usage: 57
                                56 Mbytes difference
                            </span>
                        </pre>
                        
                    </div>

                    <p>
                        If you simulate a situation where the memory limit is, say, 128 MB, you have every chance of getting this:
                    </p>
                    <div class="highlight fbgfm source-language-Hack">
                        <pre>
                            uncomment <code>ini_set('memory_limit', '128MB');</code> in file_without_yield.hack on line 20 and run 
                            <code>docker exec -it hack-laba hhvm /var/www/src/courses/02_basic/examples/file_without_yield.hack</code>
                            <span class="php-output">
                                Fatal error: request has exceeded memory limit in /var/www/src/courses/02_basic/examples/file_without_yield.hack on line 7
                            </span>
                            line 7 is a function fgets() which was reading our file row by row and collecting them in memory. Until it's over.
                        </pre>
                        
                    </div>

                    <div class="alert alert-info" role="alert">
                        <div style="float:left; margin-right:10px; height:75px">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-hand-index-fill" viewBox="0 0 16 16">
                            <path d="M8.5 4.466V1.75a1.75 1.75 0 1 0-3.5 0v5.34l-1.2.24a1.5 1.5 0 0 0-1.196 1.636l.345 3.106a2.5 2.5 0 0 0 .405 1.11l1.433 2.15A1.5 1.5 0 0 0 6.035 16h6.385a1.5 1.5 0 0 0 1.302-.756l1.395-2.441a3.5 3.5 0 0 0 .444-1.389l.271-2.715a2 2 0 0 0-1.99-2.199h-.581a5.114 5.114 0 0 0-.195-.248c-.191-.229-.51-.568-.88-.716-.364-.146-.846-.132-1.158-.108l-.132.012a1.26 1.26 0 0 0-.56-.642 2.632 2.632 0 0 0-.738-.288c-.31-.062-.739-.058-1.05-.046l-.048.002z"/>
                            </svg>
                        </div>
                        Remember: always, absolutely always, when you read an external resource, you cannot be sure that you have enough memory to get the entire result.
                    </div>

                    
                </div>
            </div>

            <br/>
            <h2>What is happening?</h2>
            <p>
                Open the <code>/var/www/src/courses/02_basic/examples/file_without_yield.hack</code> file. Look at the code.
            </p>
            <div class="highlight fbgfm source-language-Hack">
                <pre>
                    async function csv_reader(string $filename): Awaitable&lt;vec&gt: {
                    &nbsp;&nbsp;&nbsp;$f = \fopen($filename, 'r');
                        &nbsp;&nbsp;&nbsp;$lines = vec[];

                        &nbsp;&nbsp;&nbsp;try {
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while ($line = \fgets($f)) {
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$lines[] = $line;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
                        &nbsp;&nbsp;&nbsp;} finally {
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\fclose($f);
                        &nbsp;&nbsp;&nbsp;}

                        &nbsp;&nbsp;&nbsp;return $lines;
                    }
                </pre>
            </div>

            <div class="alert alert-info" role="alert">
                <div style="float:left; margin-right:10px; height:75px">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-hand-index-fill" viewBox="0 0 16 16">
                    <path d="M8.5 4.466V1.75a1.75 1.75 0 1 0-3.5 0v5.34l-1.2.24a1.5 1.5 0 0 0-1.196 1.636l.345 3.106a2.5 2.5 0 0 0 .405 1.11l1.433 2.15A1.5 1.5 0 0 0 6.035 16h6.385a1.5 1.5 0 0 0 1.302-.756l1.395-2.441a3.5 3.5 0 0 0 .444-1.389l.271-2.715a2 2 0 0 0-1.99-2.199h-.581a5.114 5.114 0 0 0-.195-.248c-.191-.229-.51-.568-.88-.716-.364-.146-.846-.132-1.158-.108l-.132.012a1.26 1.26 0 0 0-.56-.642 2.632 2.632 0 0 0-.738-.288c-.31-.062-.739-.058-1.05-.046l-.048.002z"/>
                    </svg>
                </div>
                The generator allows you to write code using a foreach statement to iterate over a set of data without having to create an array in memory.
            </div>
        </main>
EOD;
}
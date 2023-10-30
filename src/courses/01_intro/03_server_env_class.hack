namespace Courses;

use namespace App\Env;

function render(): void {


echo <<<'EOD'

    <div class="col-lg-8 mx-auto p-3 py-md-5">
        <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
            <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
                
                <span class="fs-4">SOLVD Hack.laba</span>
            </a>
        </header>

        <main>
            <h1>Server</h1>
            <p class="fs-5 col-md-8"> </p>

            <div class="mb-10">
                <p>
                    
                </p>
            </div>

            <hr class="col-7 col-md-7 mb-7" />

            <div class="row g-5">
            <div class="col-md-12">
             <p>
                Web applications differ from desktop applications not only in language, but also in the distribution of their parts, scalability and methods of communication
            </p>

            <p>
                Every web app contains at least one <strong>server</strong> and one <strong>client</strong>. They communicate via <strong>requests</strong>.
            
            </p>

            <p>
                Let's look at it with a couple of examples.
            </p>

            <h4></h4>
            <h4><span class="badge bg-secondary">1. Requests </span></h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>In web applications, data goes between client and server through requests.</p>
                        <p>Request is one of the key concepts in web application architecture.</p>
                        <p>
                            The client usually is your browser, and the server is something remotely proceccing your requests.
                            There can be various variations, for example, the client can be a web application, and the server can be a database program.
                            In general, the client and server are determined by the current function, and not by the device or type of equipment.
                            The one who requests the data is the client, the one who receives and processes the request is the server.
                        </p>
                        When you request a resource via a link, for example, <code>https://google.com</code>,
                        the browser sends a <strong>request</strong> somewhere to the Internet, in which it asks to connect it to the google.com server.
                        At the same time as a request to connect to the specified address, the request may contain a bunch of additional information.
                        Among other things, you should be aware that request can be used to transfer some information from you to a web application

                        <div class="innerContent">
                            <div class="highlight fbgfm source-language-Hack">
                                
                                <pre>
                                    <strong>Request</strong> has its own format and may be of several types, the most typical are GET and POST ones.
                                    In this example we can see a GET request. 
                                    A GET request looks like incomprehensible text in the browser's address bar, but it is designed extremely simply.

                                    For example:
                                    <code>
                                        http://localhost/?course=01_intro&class=03_server_env
                                    </code>
                                    This URL will cause a <strong>request</strong> from YOUR browser to the REMOTE server. 
                                    The request consists of several things.

                                    http://localhost is it's address. 

                                    <strong>?</strong> in URL indicates the end of address and the beginning of the params. 
                                    The parameters and their values are the content of the request.
                                </pre>

                            </div>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    <span class="php-comment">//The content of our request:</span>
                                    <code>
                                        ?course=01_intro&class=03_server_env
                                    </code>
                                    
                                    We have:
                                    - parameter "course" with value "01_intro"
                                    - parameter "class" with value "03_server_env"

                                    This means that we send to the server two named parameters: course and class. Each of them has the value. On the server-side our web-app
                                    can grab these paremeters and take its values. In this example, we send the name of course and the name of class to make our application
                                    open it for us.
                                </pre>
                            </div>

                            <div class="highlight fbgfm source-language-Hack">
                                
                                <pre>
                                To use the passed parameters, we need to pick them up somewhere in web app. 
                                In Hack (as well as in PHP) parameters can be found in the <strong><a href="https://www.php.net/manual/en/reserved.variables.request">$_REQUEST</a></strong> variable

                                <code>\var_dump($_REQUEST);</code>

                                Output:
                                    <span class="php-comment">//Open the source code of the page. The dump of your variable is:</span>
                                        <span class="php-output">
                                            dict(13) { 
                                                <strong>["course"]=> string(8) "01_intro"</strong>
                                                <strong>["class"]=> string(13) "03_server_env"</strong>
                                                ["_ga"]=> string(26) "GA1.1.618641160.1680027935" 
                                                ["sa-user-id"]=> string(86) "s%3A0-711a3404-8f94-5642-67e3-474aa54f7d1f.EUFKHgM6XNlKGpz7os4zq6dxzqwE1E9kAGeVKV7YmPg" 
                                                ["sa-user-id-v2"]=> string(81) "s%3AcRo0BI-UVkJn40dKpU99H5f55ms.JbViMr8r0ePdUEbWTFTBej8MY%2B7ZqRaWZ%2F8s1gsa%2Fw8" 
                                                ["__qca"]=> string(27) "P0-1540319904-1680027934951" 
                                                ["ajs_anonymous_id"]=> string(36) "acc7ac51-0541-4e1b-8025-093a08d7a006" 
                                                ["amplitude_id_acaae423faf755c75527a35f0b6aea02"]=> string(248) "eyJkZXZpY2VJZCI6IjZiYWYwZTJjLWYzMDMtNDVjMi04NTk4LTA4ZWE2YjY1ZDZjYVIiLCJ1c2VySWQiOm51bGwsIm9wdE91dCI6ZmFsc2UsInNlc3Npb25JZCI6MTY4MDI1Mjk2MDY5NSwibGFzdEV2ZW50VGltZSI6MTY4MDI1Mjk2MjMyMywiZXZlbnRJZCI6MzksImlkZW50aWZ5SWQiOjAsInNlcXVlbmNlTnVtYmVyIjozOX0=" 
                                                ["Phpstorm-216a7aa4"]=> string(36) "e7342c18-ecfd-4ac9-94ad-eca680e55b29" 
                                                ["_gcl_au"]=> string(25) "1.1.1643466476.1696424046" 
                                                ["_fbp"]=> string(29) "fb.0.1696424046104.1783245892" 
                                                ["visitor_id788423"]=> string(10) "1034372325" 
                                                ["visitor_id788423-hash"]=> string(104) "4a240b360b8141a7f03c22ad78e95d20e2e90aa69359245b4511038e33841b7d880fce897676c3b5ed0cd161f38fc113a8d3c05e" 
                                                }
                                        </span>
                                    </span>
                                    We see how much different information a typical request contains. Among other things we can find our parameters and their values.
                                    They are very easy to take:

                                    $course = $_REQUEST['course'];
                                    $class = $_REQUEST['class'];

                                    You can find an example of using it in our project in public/index.hack file.
                                </pre>
                            </div>

                        </div>

                        <hr/>

                        <p>
                            The next interesting and useful environment variable is 
                            <strong><a href="https://www.php.net/manual/en/reserved.variables.server.php">$_SERVER</a>.</strong> 
                        </p>
                        <p>
                            $_SERVER is a super global variable which holds information about headers, paths, and script locations.
                        </p>

                        <p>
                            Look at them just for your information. It is not known whether you will need them, but you need to know about them.
                        </p>

                        <div class="highlight fbgfm source-language-Hack">
                             <pre>
                                echo $_SERVER['PHP_SELF']; // /index.hack
                                
                                echo $_SERVER['SERVER_NAME']; // localhost
                                
                                echo $_SERVER['HTTP_HOST']; // localhost
                               
                                echo $_SERVER['HTTP_REFERER']; // http://localhost/
                                
                                echo $_SERVER['HTTP_USER_AGENT']; // Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36
                                
                                echo $_SERVER['SCRIPT_NAME']; // /index.hack
                             </pre>
                        </div>


                        

                    </div>

                    

                </div>
            </div>

            <br/>
            <h4><span class="badge bg-secondary">2. Running </span></h4>
            <div class="card" >
                <div class="card-body">
                    <p>
                            If you will be running the script from the command line rather than via a web server request, 
                            you will need the $argc and $argv parameters within your script:
                        </p>

                        <pre>
                            $argv - Array of arguments passed to script.
                            $argc - The number of arguments passed to script.

                            Both have the same sense as in C, C++ or Java.
                        </pre>

                        <div class="alert alert-warning" role="alert">
                            An important thing to understand how web applications and scripts work!
                        </div>

                        

                        <p>
                            Some clarifications should be given here.
                        </p>
                        <p>
                            In order to execute a single script, you need to transfer the full path to it to the hhvm virtual machine.
                            This mode is called CLI - command line interface.
                            If you want to open this file in the browser by sending the server a request like 
                            <p><code>http://localhost/cli_example.hack</code></p> 
                            <p>or</p> 
                            <p><code>http://localhost/examples/cli_example.hack</code></p>
                             or somehow else you will fail.
                        </p>
                        <p>
                            The web application works in such a way that you and your browser do not have access to application files over the Internet. 
                            You can only ask the web server through a request to launch the application. 
                            The server cannot execute arbitrary files; it is only allowed to execute one file, which is the entry point. 
                            In our case this is the file <code>public/index.hack</code>. 
                            This file is specified in the server configuration as the entry point.
                            No other file can be executed by the server at your request.
                        </p>
                        <p>
                            Please note that the server may transfer some files to the browser unchanged. Such files are called static. 
                            They are not scripts and do not execute program code, even if it is there. 
                            The server simply takes them and sends them as a string of bytes to your browser, 
                            telling you what type of file it sent so that the browser knows what to do with it - display it, play it, or save it to disk.
                        </p>
                        <p>
                            The folder in which static files can be located (including other folders with files) is also specified in the server configuration. 
                            Static files most often include image and style files.
                        </p>

                        <p>
                            Returning to the beginning, we realized that we can execute a specific script in CLI mode, 
                            or execute the entire web application using a web request  - &nbsp; <code>(and this request does not always come from the browser)</code>.
                        </p>

                        <p>
                            
                            
                        </p>
                        <pre>
                            Now run the script with the following command in your terminal:

                            <code>docker exec -it hack-laba hhvm /var/www/src/courses/01_intro/examples/cli_example.hack</code>
                        </pre>

                        <p>
                            Unlike C or Java, script parameters such as argv and argts are not passed to the main function. 
                            The hack, like PHP, uses a slightly different approach that is already familiar to you - 
                            passing parameters through environment variable - <strong>$_SERVER</strong>
                        </p>

                        <div class="highlight fbgfm source-language-Hack">
                                
                                <pre>
                                    Our script contains one function:
                                    <code>
                                    <<__EntryPoint>>
                                    function main() {
                                        &nbsp;&nbsp;&nbsp;var_dump($_SERVER);
                                    }
                                    </code>
                                    The result of his work will be as follows:

                                Output:
                                    <span class="php-comment">//Open the source code of the page. The dump of your variable is:</span>
                                        <span class="php-output">
                                            dict(19) {
                                                ["PATH"]=>
                                                string(60) "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
                                                ["HOSTNAME"]=>
                                                string(12) "ecb03ee3bd59"
                                                ["TERM"]=>
                                                string(5) "xterm"
                                                ["HHVM_DISABLE_NUMA"]=>
                                                string(4) "true"
                                                ["HHVM_DISABLE_PERSONALITY"]=>
                                                string(4) "true"
                                                ["HOME"]=>
                                                string(5) "/root"
                                                ["GLIBCPP_FORCE_NEW"]=>
                                                string(1) "1"
                                                ["GLIBCXX_FORCE_NEW"]=>
                                                string(1) "1"
                                                ["UNW_RBP_ALWAYS_VALID"]=>
                                                string(1) "1"
                                                ["REQUEST_START_TIME"]=>
                                                int(1698679441)
                                                ["REQUEST_TIME"]=>
                                                int(1698679441)
                                                ["REQUEST_TIME_FLOAT"]=>
                                                float(1698679441.3203)
                                                ["DOCUMENT_ROOT"]=>
                                                string(0) ""
                                                ["SCRIPT_FILENAME"]=>
                                                string(55) "/var/www/src/courses/01_intro/examples/cli_example.hack"
                                                ["SCRIPT_NAME"]=>
                                                string(55) "/var/www/src/courses/01_intro/examples/cli_example.hack"
                                                ["PHP_SELF"]=>
                                                string(55) "/var/www/src/courses/01_intro/examples/cli_example.hack"
                                        <strong>["argv"]=>
                                                vec(1) {
                                                    string(55) "/var/www/src/courses/01_intro/examples/cli_example.hack"
                                                }</strong>
                                        <strong>["argc"]=>
                                                int(1)</strong>
                                                ["PWD"]=>
                                                string(1) "/"
                                            }   
                                        </span>
                                    </span>
                                    Pay attention to the highlighted parameters - these are our argv and argc. 
                                    If you call a script without parameters, then <code>argc</code> is equal to 1, since the script always receives at least one parameter - the path to itself.
                                    This is clearly visible in argv - it contains the line "/var/www/src/courses/01_intro/examples/cli_example.hack" - the full path to the script.
                                    Everything looks and works completely similar to C or Java, except for the place where we can find these parameters.

                                    Now if you run our script with a parameter, you will see it in the results:

                                    <code>docker exec -it hack-laba hhvm /var/www/src/courses/01_intro/examples/cli_example.hack 'Hello, world'</code>
                                    <span class="php-output">
                                        dict(19) {
                                            ...
                                    <strong>["argv"]=>
                                            vec(2) {
                                                string(55) "/var/www/src/courses/01_intro/examples/cli_example.hack"
                                                string(12) "Hello, world"
                                            }</strong>
                                    <strong>["argc"]=>
                                            int(2)</strong>
                                            ["PWD"]=>
                                            string(1) "/"
                                        }   
                                    </span>
                                    We need <code>argc</code> as the size of the array of passed parameters. However, in Hack and PHP we have the opportunity to iterate over an array without knowing its actual size.
                                </pre>
                            </div>

                        
                </div>
            </div>

        </div>

        </main>

    </div>

EOD;

    
}
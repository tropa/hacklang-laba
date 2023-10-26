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

            <h4>1. Requests </h4>

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
                        When you request a resource via a link, for example, <code>https://google.com</code>
                        the browser sends a <strong>request</strong> somewhere to the Internet, in which it asks to connect it to the google.com server.
                        At the same time as a request to connect to the specified address, the request may contain a bunch of additional information.
                        Among other things, you should be aware that a request can be used to transfer some information from you to a web application

                        <div class="innerContent">
                            <div class="highlight fbgfm source-language-Hack">
                                
                                <pre>
                                    <strong>Request</strong> has its own format and may be of several types, the most typical are GET and POST ones.
                                    In this example we see a GET request. 
                                    A GET request looks like incomprehensible text in the browser's address bar, but it is designed extremely simply.

                                    For example:
                                    <code>
                                        http://localhost/?course=01_intro&class=03_server_env
                                    </code>
                                    This URL will cause a <strong>request</strong> from YOUR browser to the REMOTE server. 
                                    The request consists of several pathes.

                                    http://localhost is it's address. 

                                    <strong>?</strong> in URL indicates the end of address and the beginning of the params.
                                </pre>

                            </div>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    <span class="php-comment">//The content of the request:</span>
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
                                To use the passed parameters, we need to pick them up.
                                Both types of parameters can be found in the $_REQUEST variable

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
                                    We see how much different information a typical request contains. Among other things we can find our parameters and their values.
                                    They are very easy to take:

                                    $course = $_REQUEST['course'];
                                    $class = $_REQUEST['class'];

                                    You can find an example of using it in our project in public/index.hack file.
                                </pre>
                            </div>
                           
                        </div>

                        

                        

                    </div>

                </div>
            </div>

        </div>

        </main>

    </div>

EOD;
    
    echo '<div class="row">
            <div class="col-md-6">
            <span class="badge bg-secondary">Hello 2</span>
            </div></div>';

    //Env\Environment::_SERVER();
    //Env\Environment::_COOKIES();
    //Env\Environment::_GET();
    //Env\Environment::_POST();
    //Env\Environment::_REQUEST();
}
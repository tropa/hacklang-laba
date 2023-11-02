namespace Courses;



function render(): void {

echo <<<'EOD'
    <div class="col-lg-8 mx-auto p-3 py-md-5">
   
        <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
        <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
            
            <span class="fs-4">SOLVD Hack.laba</span>
            
        </a>
        </header>

        <main>
        <h1>Debugging</h1>
        <p class="fs-5 col-md-8">
            <a href="/" type="button" class="btn btn-outline-secondary">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"></path>
                </svg>
                Back
            </a>
        </p>

        <div class="mb-10">
            <p>
                Debugging in hack, as in PHP, does not look the same as you are probably used to in Java.
            </p>
        </div>

        <hr class="col-7 col-md-7 mb-7" />

        <div class="row g-5">
            <div class="col-md-12">
             <p>
                There are different ways to find out what is happening in your script, what the variables store, or which line of the script the error occurred on.
            </p>
            <p>
                Let's look at some of them, the most commonly used.
            </p>

            <div class="alert alert-primary" role="alert">
                Please try to realize that this is not Java. The web application is designed and works differently from the desktop one.
                It runs when you refresh the browser page and closes immediately after the browser displays the result of the script in the form of a web page.
            </div>

            <h4><span class="badge bg-secondary">1. Dumping variables</span></h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            One, and the most popular approach to observe what's going on in your PHP\Hack application is to use the <code>var_dump</code> function.
                        When you need a quick way to debug a script, you can generally output values.
                        </p>
                        
                        <p>
                            <code>var_dump()</code> is a PHP\Hack native function that shows structured, human-readable data about one (or more) expressions. 
                        This is especially beneficial when working with arrays and objects, as <code>var_dump()</code> recursively reveals their structure, 
                        providing you the most complete picture of what's going on. 
                        </p>
                        
                        <p>It will print the value of ANY variable to your browser or stdout if you are running your script in the terminal.</p>

                        

                        <p>99% of debugging needs during debugging process are covered by this function</p>
                        <p>It must be used with backslash <code>\var_dump($var);</code> or without <code>var_dump($var);</code> depends on namespace. </p>

                        <div class="innerContent">
                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    
                                        <span class="php-comment">//To get the content of string variable:</span>
                                        <code>
                                        $var = "string";
                                        \var_dump(\$var);
                                        </code>
                                   
                                    Output:
                                        <span class="php-output">string(6) "string" </span>
                                        where 'string(6)' means that the variable has <code>string</code> type and 6 chars length.
                                </pre>

                            </div>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    
                                        <span class="php-comment">//To get the content of array variable:</span>
                                        <code>
                                        $var = vec[1, 2, 3];
                                        \var_dump(\$var);
                                        </code>
                                   
                                    Output:
                                        <span class="php-output">vec(3) { int(1) int(2) int(3) }</span>
                                        where 'string(6)' means that the variable has <code>vec</code> type and 3 items length.
                                </pre>

                            </div>
                           
                        </div>

                        <p>With help of <code>var_dump</code> you can look into any variable and find out its structure, type, content and size. It is 
                        very useful and everyday, everyminute used function.</p>
                        <p>A common problem that newbies to PHP encounter is trying to catch the output of the <code>var dump()</code> function. 
                            If you cannot find the text of its output on the page, simply add a stop script execution command after it.
                             In this case, the output of the var dump function will be guaranteed to be the last one in the page code and you will always be able to find and read it.
                        </p>

                        <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                        <code>
                                        ... 
                                        $var = vec[1, 2, 3]; <span class="php-comment">//The variable was initialized somewhere above:</span>
                                        ...
                                        ...
                                        <span class="php-comment">//You cannot find the content of array variable because of excessive output.</span>
                                        <span class="php-comment">//Just add die() after var_dump():</span>
                                        \var_dump(\$var); die(); 
                                        </code>
                                   
                                    Output:
                                    <span class="php-comment">//Open the source code of the page. The dump of your variable is guaranteed to be the last one on the page:</span>
                                        ...
                                        ...
                                        <span class="php-output">vec(3) { int(1) int(2) int(3) }</span>
                                        
                                </pre>

                            </div>
                        </div>

                        <p>
                            <code>var dump()</code> allows you to output different variables together, this very often makes debugging more convenient. 
                            For example, you want to look inside a key-value list. In this case, you can simply display the variable in which it is stored using the <code>var_dump()</code> function.
                            But it often happens that you need to look at each element of the list while unpacking it inside a loop.
                        </p>
                        <p>
                            One of the most common tasks is outputting an array inside a loop. For example, creating a control element such as a selector, also known as a drop-down list.
                        </p>
                        <p>Imagine we need to make a list of cars with the name and ID of each one.</p>
                        <p>We will use it in order form. User will select the brand, but the application needs to get car ID in order to find it in database.</p>

                        <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                        <code>
                                        // template.hack - your template file
                                        
                                        function render() {

                                            $cars = dict[1 => 'BMW', 2 => 'AUDI', 3 => 'FORD']; // we have date from somewhere and want to show it as a selector

                                            echo '&ltselect&gt';
                                            foreach($cars as $id => $name) {
                                                echo "&ltoption value='{$id}'&gt{$name}&lt/option&gt";
                                                \var_dump( dict[$id => $name]); 
                                            }
                                            echo '&lt/select&gt';

                                            \var_dump(\$var); die();  
                                        }
                                        </code>
                                   
                                    Output:
                                    <span class="php-comment">//Open the source code of the page. The dump of your variable is:</span>
                                        <span class="php-output">
                                            dict(1) {
                                            [1]=&gt;
                                            string(3) "BMW"
                                            }
                                            dict(1) {
                                            [2]=&gt;
                                            string(4) "AUDI"
                                            }
                                            dict(1) {
                                            [3]=&gt;
                                            string(4) "FORD"
                                            }
                                        </span>
                                    <span class="php-comment">//you will find this inside your selector</span>
                                </pre>
                            </div>

                            <p>
                                This debugging method is very convenient and often used. Feel free to use var dump in any way, it is designed to make your life easier.
                            </p>

                            <div class="alert alert-dark" role="alert">
                                Check out the <a href="https://www.php.net/manual/en/function.var-dump">PHP documentation</a> for more information.
                            </div>

                        </div>

                    </div>

                </div>
            </div>

            <br/>
            <br/>

            <h4><span class="badge bg-secondary">2. Using logs</span></h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            A very rare and inconvenient method in PHP developer's life, but sometimes it is also useful. In production systems, error output is usually disabled. 
                            If something isn't working as expected, the first thing you need to do is figure out where to start looking. In this case, logs can be useful.
                        </p>

                        <p>
                            Typically, every web application has an error log. There are often a lot of useless messages that the PHP or hack virtual machine considers important. 
                            By the way, the level of importance can be adjusted if necessary.
                        </p>

                        <p>
                            <div class="alert alert-primary" role="alert">
                                By default, log output is included in the docker window.
                            </div>
                        </p>
                        
                        <p>
                            When we enable saving of logs, they will be here
                            <code>/var/log/hhvm/error.log</code>
                        </p>

                        <p>
                            You can easily enable logs, but in this case the output of errors and messages to the docker window will be automatically disabled, and you will only have to read the logs.
                            Open the <code>hhvm.prod.ini</code> file in the root of our project and find the commented line in it that turns on the recording of logs and sets the path for them inside the virtual machine.
                            
                            <pre><code>#hhvm.log.file = /var/log/hhvm/error.log</code></pre>
                            
                            Uncomment the line and save the file. Stop the virtual machine and delete the container and the image.
                            
                            <pre><code>docker-compose stop</code></pre>
                            <pre><code>docker rm -f hack-laba</code></pre>

                            <pre><code>docker rmi hacklang-laba-web</code></pre>

                            Don't be afraid, nothing bad will happen. This is necessary for the docker to reassemble the system with a new config. 
                            Then start everything again:

                            <pre><code></code></pre>
                            <pre><code>docker-compose up -d</code></pre>
                        </p>

                        <p>
                        
                            Open your Docker desktop and click on the Containers tab on the left. In the list of containers, select <code>hacklang-laba</code> and expand it. 
                            There will be a <code>hack-laba</code> container inside.
                            <p>
                                <img width=800 src="/static/img/Containers-Docker Desktop.jpg"/>
                            </p>

                            Click on it and then click "files":
                            <p>
                                <img width=800 src="/static/img/hack-laba-Container-Docker-files.jpg"/>
                            </p>

                            Logs should be here:
                            <p>
                                <img width=800 src="/static/img/hack-laba - Container - Docker Desktop 2023-10-24 at 6.51.45 PM.jpg"/>
                            </p>
                            
                        </p>
                            

                        <p>
                            <p>
                               When the project is configured to save logs to a file, it is easy to enable log output in our project's terminal. To do this, simply run the following command:
                                <pre>
                                    <code>
                                        docker exec -it hack-laba tail -f /var/log/hhvm/error.log
                                    </code>
                                </pre>
                                The contents of the log file will be output to the terminal.
                            </p>
                        </p>

                    </div>

                </div>
            </div>

            <br/>
            <br/>

            <h4><span class="badge bg-secondary">3. Using debugger</span> (the most funniest way)</h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            Finally something like  Java :).
                            Like any serious development environment, VSCode has a debugger.
                        </p>
                    </div>

                </div>
            </div>

        </div>

        </main>
    </div>

EOD;

// paste code here and find the output in browser

}
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
        <h1>Awaitables</h1>
        <a href="/" type="button" class="btn btn-outline-secondary">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"></path>
            </svg>
            Back
        </a>

        <p class="fs-5 col-md-8">
            
        </p>

        <div class="mb-10">
            <p>
                
            </p>
        </div>

        <hr class="col-7 col-md-7 mb-7" />

        <div class="row g-5">
            <div class="col-md-12">
                
                <h4><span class="badge bg-secondary">1. Awaitable  </span></h4>
                

                <div class="card" >
                    <div class="card-body">
                        <div class="alert alert-light" role="alert">
                            <p>
                                An <code>awaitable</code> is the key construct in async code. We <code>await</code> the awaitable until the operation has completed.
                            </p>
                            
                            <p>
                                A couple of features:
                                <ol>
                                    <li>
                                        async functions must return an Awaitable&lt;T&gt; object
                                    </li>
                                    <li>
                                        awaiting the same awaitable twice will not execute the code twice
                                    </li> 
                                </ol>
                            </p>

                            <p>
                                1. It doesn't matter what type your function returned before, an asynchronous function must return <code>Awaitable&lt;T&gt;</code>.
                                T is your return type - int, string or any. 
                              
                            </p>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    Awaitable&lt;boo&gt;
                                    Awaitable&lt;int&gt;
                                    Awaitable&lt;void&gt;
                                    ... etc

                                    async function foo(): Awaitable&lt;bool&gt; {
                                    &nbsp;&nbsp;&nbsp;return true;
                                    }

                                    async function bar(): Awaitable&lt;int&gt; {
                                    &nbsp;&nbsp;&nbsp;return 42;
                                    }

                                    async function demo(): Awaitable&lt;void&gt; {
                                    &nbsp;&nbsp;&nbsp;$x = foo();         // $x will be an Awaitable<int> (Remember this, it will come in handy below)
                                    &nbsp;&nbsp;&nbsp;$x = await foo();   // $x will be a bool
                                    }
                                </pre>
                            </div>

                            <p>
                                2. The same awaitable will not execute the code twice.
                            </p>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    Asynchronous functions return object.

                                    $x = async { print("Hello, world\n"); return 42; };
                                    \var_dump($x);

                                    Run the script with following command:

                                    <code>docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/awaitables_1.hack</code>
                                    <span class="php-output">
                                        Hello, world
                                        &nbsp;&nbsp;&nbsp;object(HH\StaticWaitHandle) (0) {
                                        }
                                    </span>
                                </pre>
                            </div>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    When we expect a result instead of an object that is returned to us, we use <code>await</code> operator:
                                    In this case, the result of the calculation will be returned instead of the object.
                                    
                                    $x = async { print("Hello, world\n"); return 42; };
                                    \var_dump(<strong>await</strong> $x);

                                    <code>docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/awaitables_2.hack</code>
                                    <span class="php-output">
                                        Hello, world
                                        int(42)
                                    </span>

                                    Instead of <code>Awaitable&lt;int&gt;</code> we got the result - int 42.
                                </pre>
                            </div>

                            <p>
                                Compare both pieces of code. In both cases, we see the line "Hello world!"", which is an indicator that the function code is being executed.
                                But the result is clearly different. In one case it is an object, in the second it is the number 42. 
                                The <code>await</code> command forces the result of the calculation to be returned. This is somewhat similar to a promises in JavaScript, 
                                were you can also receive a promise, or you can get a result.
                            </p>

                            <p>
                                Accordingly, if you call twice on an Avaitable object, then the calculations will not be performed twice, even if it seems that it should happen.
                                The following example will clearly show this.
                            </p>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    $x = async { print("Hello, world\n"); return 42; };

                                    \var_dump(await $x);
                                    \var_dump(await $x);
    
                                    <code>docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/awaitables_3.hack</code>
                                    <span class="php-output">
                                        Hello, world
                                        int(42)
                                        int(42)
                                    </span>
                                    We see that the function was executed only once, this was shown by our progress bar - the line "Hello world".
                                    And we see that the result of the function was printed twice, since we called the <code>\vardump(await $x);</code> twice.
                                    Both times we asked Hack to show us the result of the calculation from the Avaitable object, but the function itself was not run twice.
                                </pre>
                            </div>
                        </div>
                    </div>
                </div>
                
                <br/>
                <br/>

                <h4><span class="badge bg-secondary">2. Awaiting  </span></h4>

                <div class="card" >
                    <div class="card-body">
                        <div class="alert alert-light" role="alert">
                            <p>
                                Note that only asynchronous functions can pass control to other asynchronous functions, 
                                so <code>await</code> can only be used in an asynchronous function. 
                                For non-async places, we need to use <code>join()</code>.
                            </p>
                            <p>
                                HH\Asio\join takes an Awaitable and blocks until it resolves to a result.
                            </p>

                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    async function get_curl_content(Set<string> $urls): Awaitable&lt;Vector&lt;string&gt;&gt; {
                                    &nbsp;&nbsp;&nbsp;$content = Vector {};

                                    &nbsp;&nbsp;&nbsp;foreach ($urls as $url) {
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$str = await \HH\Asio\curl_exec($url);
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$content[] = \substr($str, 0, 10);
                                    &nbsp;&nbsp;&nbsp;} 

                                    &nbsp;&nbsp;&nbsp;return $content;
                                    }

                                    <<__EntryPoint>>
                                    function join_main(): void {
                                    &nbsp;&nbsp;&nbsp;$urls = Set {
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'https://hhvm.com/blog/2020/05/04/hhvm-4.56.html',
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'https://hhvm.com/blog/2020/10/21/hhvm-4.80.html',
                                    &nbsp;&nbsp;&nbsp;};

                                    &nbsp;&nbsp;&nbsp;$content = HH\Asio\join(get_curl_content($urls));
                                    &nbsp;&nbsp;&nbsp;\var_dump($content);
                                    }

                                    Run this code with the following command:
                                    <code>docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/awaitjoin.hack</code>

                                    The result will be:
                                    <span class="php-output">
                                        object(HH\Vector) (2) {
                                        [0]=>
                                        string(10) "<!DOCTYPE "
                                        [1]=>
                                        string(10) "<!DOCTYPE "
                                        }
                                    </span>
                                </pre>
                                
                            </div>

                            <p>
                                You can play with the value of the substr function arguments to get more than 10 characters of response.
                            </p>

                            <p>
                                <code>curl_exec()</code> function is <strong>asynchronous by design</strong>. This means that we will not be able to use it in any other way than in an asynchronous manner,
                                that is, our user-defined function <code>get_curl_content()</code>, inside of which we call <code>curl_exec()</code>, must be asynchronous and will return an <code>Awaitable&lt;T&gt;</code>.
                            </p>
                            <p>
                                As you remember from the previous section, if the function returned us an <code>Awaitable&lt;T&gt;</code> you can get the result of calculating this function from it using the <code>await</code> operator.
                            </p>

                            <p>
                                However, you cannot use the <code>await</code> operator inside a synchronous function. We start walking in circles. 
                                In order to run an asynchronous function, we need to place it inside an asynchronous function, which can only be called from an asynchronous function... 
                                this can drive you crazy at the initial stage.
                            </p>

                            <p>
                                HH\Asio\join():
                                
                                <ul>
                                    <li>
                                        <strong>takes</strong> an <code>Awaitable&lt;T&gt;</code> <span style="font-size:8px">(Thank God somewhere you can put this asynchronous call)</span>
                                    </li>
                                    <li>
                                        blocks entire script,
                                    </li> 
                                    <li>
                                        resolves to a result...
                                    </li>
                                    <li>
                                        releases the script!
                                    </li>
                                </ul>
                            </p>

                            <div class="alert alert-warning" role="alert">
                                It would be nonsense to place a HH\Asio\join() function call inside an asynchronous function. Read or guess for yourself why.
                            </div>
                        </div>
                    </div>
                </div>
<br/>
            <p>
                <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                    Useful links
                </button>
            </p>
            <div class="collapse" id="collapseExample">
                <div class="card card-body">
                    <a traget="_blank" href="https://docs.hhvm.com/hack/asynchronous-operations/awaitables">Asynchronous Operations: Awaitables</a>

                </div>
            </div>
            </div>
        </div>
        

    </main>

</div>
EOD;
}
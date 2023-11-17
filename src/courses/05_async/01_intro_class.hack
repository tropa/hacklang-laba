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
        <h1>Async</h1>
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
                Async bla bla bla
            </p>
        </div>

        <hr class="col-7 col-md-7 mb-7" />

        <div class="row g-5">
            <div class="col-md-12">
            <p>
                There are different ways to make your computer faster... Let's look at some of them, the most commonly used.
            </p>
            <p>
                How to speed up program execution? 
            </p>

            <h4><span class="badge bg-secondary">1. Sync, Async...  </span></h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            Hardly any of you remember this, but once upon a time the computer desktop looked like... there was no desktop. 
                            There was a black screen and a command line. 
                            If you enter one command with arguments there, for example, copy a file, then it is executed relatively quickly, depending on how big the file is. 
                        </p>
                        <p>
                            But if the computer simply executed not one command, but a <strong>program</strong>, that is, a sequential set of commands, for example, reading a file, forming an image on the screen and generating sound, then this took some time, and besides, you could not do anything else with your computer.
                        </p>

                        <p>
                            Now even the phone allows you to do much more, but what is important is to do it at the same time. 
                            Play music and show the navigator, not forgetting to receive telegram messages and charge the battery. 
                            All this works simultaneously thanks to <strong>parallelism</strong>.
                        </p>

                        <p>
                            In practice, it is not so important for us, as consumers, whether our program is executed in different processes, threads, or anything else in parallel. 
                            If only it worked faster and did not lose responsiveness during its execution.
                        </p>

                        <p>
                            There are three ways to speed up program execution: 
                            <ul>
                                <li>    
                                    Acceleration - execute each command faster;
                                </li>
                                <li>
                                    Parallelism - execute several commands simultaneously;
                                </li>
                                <li>
                                    Both methods;
                                </li>
                            </ul>
                        </p>

                        <p>
                            We cannot increase the speed of the web server, since it is physically inaccessible to us for configuration.
                            But we can use the concept of parallel programming.
                        <p/>

                        <p>
                            Modern processors consist of several cores, each of which operates relatively independently. 
                            Together with an operating system that supports parallelism, this allows you to greatly speed up the execution of programs (this is called multithreading), but more often it is used to simultaneously execute several different programs (this is called multitasking).
                        </p>
                        
                        <div class="alert alert-primary" role="alert" style="">
                            <div style="float:left; margin-right:10px; height:75px">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-patch-question-fill" viewBox="0 0 16 16">
                                <path d="M5.933.87a2.89 2.89 0 0 1 4.134 0l.622.638.89-.011a2.89 2.89 0 0 1 2.924 2.924l-.01.89.636.622a2.89 2.89 0 0 1 0 4.134l-.637.622.011.89a2.89 2.89 0 0 1-2.924 2.924l-.89-.01-.622.636a2.89 2.89 0 0 1-4.134 0l-.622-.637-.89.011a2.89 2.89 0 0 1-2.924-2.924l.01-.89-.636-.622a2.89 2.89 0 0 1 0-4.134l.637-.622-.011-.89a2.89 2.89 0 0 1 2.924-2.924l.89.01.622-.636zM7.002 11a1 1 0 1 0 2 0 1 1 0 0 0-2 0zm1.602-2.027c.04-.534.198-.815.846-1.26.674-.475 1.05-1.09 1.05-1.986 0-1.325-.92-2.227-2.262-2.227-1.02 0-1.792.492-2.1 1.29A1.71 1.71 0 0 0 6 5.48c0 .393.203.64.545.64.272 0 .455-.147.564-.51.158-.592.525-.915 1.074-.915.61 0 1.03.446 1.03 1.084 0 .563-.208.885-.822 1.325-.619.433-.926.914-.926 1.64v.111c0 .428.208.745.585.745.336 0 .504-.24.554-.627z"></path>
                                </svg>
                            </div>
                            Multitasking is the property of an operating system or runtime environment to provide the ability to process multiple tasks in parallel (or pseudo-parallel).
                        </div>

                        <div class="alert alert-primary" role="alert">
                            <div style="float:left; margin-right:10px; height:75px">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-patch-question-fill" viewBox="0 0 16 16">
                                <path d="M5.933.87a2.89 2.89 0 0 1 4.134 0l.622.638.89-.011a2.89 2.89 0 0 1 2.924 2.924l-.01.89.636.622a2.89 2.89 0 0 1 0 4.134l-.637.622.011.89a2.89 2.89 0 0 1-2.924 2.924l-.89-.01-.622.636a2.89 2.89 0 0 1-4.134 0l-.622-.637-.89.011a2.89 2.89 0 0 1-2.924-2.924l.01-.89-.636-.622a2.89 2.89 0 0 1 0-4.134l.637-.622-.011-.89a2.89 2.89 0 0 1 2.924-2.924l.89.01.622-.636zM7.002 11a1 1 0 1 0 2 0 1 1 0 0 0-2 0zm1.602-2.027c.04-.534.198-.815.846-1.26.674-.475 1.05-1.09 1.05-1.986 0-1.325-.92-2.227-2.262-2.227-1.02 0-1.792.492-2.1 1.29A1.71 1.71 0 0 0 6 5.48c0 .393.203.64.545.64.272 0 .455-.147.564-.51.158-.592.525-.915 1.074-.915.61 0 1.03.446 1.03 1.084 0 .563-.208.885-.822 1.325-.619.433-.926.914-.926 1.64v.111c0 .428.208.745.585.745.336 0 .504-.24.554-.627z"></path>
                                </svg>
                            </div>
                            Multithreading is a property of a platform (for example, an operating system, a virtual machine, etc.) or an application, consisting in the fact that a process generated in the operating system can consist of several threads running “in parallel,” that is, without prescribed order in time.
                        </div>

                        <p>
                            In <code>synchronous</code> code, each operation waits for the previous one to finish. 
                            Therefore, the entire program may freeze if one of the commands takes a very long time to execute.
                            And truth be told, that's exactly what happens.
                        </p>
                        <p>
                            The traditional backend of a web application works synchronously according to the scheme one request - one process. There are also more modern server options that use multithreading within the process. But this all works most effectively when not only the server, but also the programming language is capable of providing some kind of parallel programming.
                        </p>

                        <p style="font-size:18px; font-style: italic;">
                            <strong>Asynchronous</strong> code removes the blocking operation from the main thread of the program, so that it continues to execute, but somewhere else, and the handler can move on. Simply put, the main "process" sets up a task and passes it on to another independent "process".
                        </p>

                    
                        <div class="shadow-lg p-3 mb-5 bg-body rounded"> 
                            <p class="text-center" style="margin-bottom:0">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-exclamation-lg" viewBox="0 0 16 16">
                                    <path d="M7.005 3.1a1 1 0 1 1 1.99 0l-.388 6.35a.61.61 0 0 1-1.214 0L7.005 3.1ZM7 12a1 1 0 1 1 2 0 1 1 0 0 1-2 0Z"/>
                                </svg>
                                Async is not multithreading
                            </p>
                        </div>

                    </div>
                </div>
            </div>

            <br/><br/>
            <h4><span class="badge bg-secondary">2. How does it work? </span></h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            The idea behind asynchronous execution is that the start and end of the same operation occur at different times in different parts of the code. To get the result, you must wait, and the waiting time is unpredictable.
                        </p>
                        <p>
                            If we do not use asynchronous programming, each step will be executed one-after-the-other, while asynchronous execution gives a significant performance boost:
                        </p>
                       

                         <p>
                            <img src="/static/img/05/sync.jpeg" height="400" />
                        </p>

                        <p>
                            Using a simple trick, we launch some action and do not wait for the result of its execution
                        </p>

                        <p>
                            Here is an example of instructions for making breakfast to see how the <code>async</code> and <code>await</code> keywords make it easier to 
                            reason about code that includes a series of asynchronous instructions. 
                            You'd write the instructions something like the following list to explain how to make a breakfast:
                        </p>
                        <ol>
                            <li>Pour a cup of coffee.</li>
                            <li>Heat a pan, then fry two eggs.</li>
                            <li>Fry three slices of bacon.</li>
                            <li>Toast two pieces of bread.</li>
                            <li>Add butter and jam to the toast.</li>
                            <li>Pour a glass of orange juice.</li>
                        </ol>
                        <p>
                            If you have experience with cooking, you'd execute those instructions asynchronously.
                            You'd start warming the pan for eggs, then start the bacon. 
                            You'd put the bread in the toaster, then start the eggs. 
                            At each step of the process, you'd start a task, then turn your attention to tasks that are ready for your attention.
                        </p>

                        <p>
                            Cooking breakfast is a good example of asynchronous work that isn't parallel. 
                            One person (or thread) can handle all these tasks. 
                            Continuing the breakfast analogy, one person can make breakfast asynchronously by starting the next task before the first task completes.
                            The cooking progresses whether or not someone is watching it. As soon as you start warming the pan for the eggs, you can begin frying the bacon. 
                            Once the bacon starts, you can put the bread into the toaster.
                        </p>

                        
                        <p>
                            Now open src/courses/05_async/examples/sync_breakfast.hack in VSCODE.
                        </p>

                        <div class="highlight fbgfm source-language-Hack">
                        
                            <pre>
                                
                                Find <code>\sleep(3);</code> function calls. The sleep() function is an inbuilt function which is used to delay the execution of the current script for a specified number of seconds.
                                In our script, all calls to the sleep() function are delayed by 3 seconds. This simulates the duration of the tasks.
                                
                                Run the script with following command:
                                <code>
                                    docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/sync_breakfast.hack
                                </code>
                                In the terminal, you will see messages appear when each task is completed:
                                <span class="php-output">
                                    Pouring coffee 
                                    coffee is ready  
                                    Warming the egg pan... 
                                    cracking 2 eggs  
                                    cooking the eggs ... 
                                    Put eggs on plate  
                                    eggs are ready  
                                    putting 3 slices of bacon in the pan  
                                    cooking first side of bacon... 
                                    flipping a slice of bacon  
                                    flipping a slice of bacon  
                                    flipping a slice of bacon  
                                    cooking the second side of bacon...  
                                    Put bacon on plate 
                                    bacon is ready  
                                    Putting a slice of bread in the toaster  
                                    Putting a slice of bread in the toaster  
                                    Start toasting... 
                                    Remove toast from toaster  
                                    Putting butter on the toast  
                                    Putting jam on the toast 
                                    toast is ready  
                                    Pouring orange juice 
                                    oj is ready  
                                    Breakfast is ready!  
                                    Total time taken: 15.03147983551 seconds
                                </span>

                                Look at the script code. The action program is described in the constructor function.
                                1. Pour coffee,
                                2. Fry two eggs,
                                3. Fry three bacon slices,
                                .. and so on.

                                PourCoffee() function has no delay. We can see in the results: 
                                - Pouring coffee 
                                - coffee is ready 

                                Next task was FryEggs(2) - two eggs. FryEggs functions starts from "Warming the egg pan" - 3 seconds, then "cracking 2 eggs" 
                                and "cooking the eggs" for 3 seconds then "Put eggs on plate".
                                We have "eggs are ready" message. The task is completed.

                                In this way, you can track the implementation of the entire program of actions. It is executed sequentially. 
                                All tasks are equally important, so no one gets priority.
                             
                            </pre>
                        </div>
                         <p>
                            <img src="/static/img/05/synchronous-breakfast.png" />
                        </p>

                        <p>
                            The synchronously prepared breakfast took roughly 15 sec because the total is the sum of each task (each sleep(3)  - count them and make sure, 15 sec in sum).
                        </p>
                        <p>
                            Computers don't interpret those instructions the same way people do. 
                            The computer will block on each statement until the work is complete before moving on to the next statement. 
                            That creates an unsatisfying breakfast. The later tasks wouldn't be started until the earlier tasks had been completed. 
                            It would take much longer to create the breakfast, and some items would have gotten cold before being served.
                        </p>
                       
                        <p>
                            If you want the computer to execute the above instructions asynchronously, you must write asynchronous code.
                        </p>
                        
                        <div class="alert alert-primary" role="alert">
                           <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-sun" viewBox="0 0 16 16">
                            <path d="M8 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6zm0 1a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
                            </svg>
                            Don't block, await instead
                        </div>

                        <p>
                            Let's start by updating this code so that the thread doesn't block while tasks are running. 
                            The await keyword provides a non-blocking way to start a task, then continue execution when that task completes. 
                            A simple asynchronous version of the make a breakfast code would look like the following snippet:
                        </p>

                        <p>
                            Open src/courses/05_async/examples/async_breakfast.hack in VSCODE.
                            Pay attention to the new features:
                            <p> - <code>usleep()</code> function instead of <code>sleep()</code></p>
                            <p> - <code>async</code> function task(): <code>Awaitable&lt;void&gt;</code> definition </p>
                            <p> - <code>await</code> keyword</p>
                        </p>
                        <br/>

                        <div class="highlight fbgfm source-language-Hack">
                            
                            
                            <pre>
                                Run the script with following command:

                                <code>docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/async_breakfast.hack</code>

                                In the terminal, you will see a familiar list of messages:
                                <span class="php-output">
                                    Pouring coffee 
                                    Warming the egg pan... 
                                    putting 3 slices of bacon in the pan  
                                    cooking first side of bacon... 
                                    Putting a slice of bread in the toaster  
                                    Putting a slice of bread in the toaster  
                                    START TOASTING... 
                                    cracking 2 eggs  
                                    cooking the eggs ... 
                                    flipping a slice of bacon  
                                    flipping a slice of bacon  
                                    flipping a slice of bacon  
                                    cooking the second side of bacon...  
                                    REMOVE TOAST FROM TOASTER  
                                    Put eggs on plate  
                                    Put bacon on plate 
                                    coffee is ready  
                                    eggs are ready  
                                    bacon is ready  
                                    Putting butter on the toast  
                                    Putting jam on the toast 
                                    toast is ready  
                                    Pouring orange juice 
                                    oj is ready  
                                    Breakfast is ready!  
                                    Total time taken: 6.0249834060669 seconds
                                </span>
                            </pre>
                        </div>

                        <p>
                            <img src="/static/img/05/whenany-async-breakfast.png" />
                        </p>

                        
                        <p>
                            Sequential (synchronous) execution - 15 seconds.
                            
                        </p>
                        <p>
                            Asynchronous execution - 6 seconds
                        </p>

                        
                        
                        <div class="shadow-lg p-3 mb-5 bg-body rounded">
                            <p class="text-center" style="margin-bottom:0">
                                Looks like it was worth it, right? :) 3x faster!
                            </p>
                        </div>

                        <span class="badge bg-secondary">So new features are:</span>
                        <ul>
                            <li>
                                <code>usleep()</code> function
                            </li>
                            <li>
                                <code>async</code> and <code>Awaitable</code> keywords
                            </li>
                            <li>
                                <code>await</code> keyword
                            </li>
                        </ul>
                        <p>
                            - <code>usleep()</code> function is an inbuilt ASYNC alternative of sleep() function which is used to delay 
                            the execution of the current script for a specified number of <strong>micro</strong>seconds (<code>sleep()</code> takes <strong>seconds</strong>).
                        </p>
                        <p>
                            - <code>async</code> function task(): <code>Awaitable&lt;void&gt;</code> - 
                            Unusual function definition. It's actually quite common, we're just telling the computer that the function should be executed in an asynchronous manner
                             and that the return type is awaitable something - in  this case void type (we can wait for void from the function).
                        </p>
                        <p>
                            - <code>await</code> keyword expresses our desire to wait. We <strong>await</strong> the awaitable until the operation has completed. We say here what exactely we want to wait.
                        </p>  

                        <p class="text-center" style="margin-bottom:0">
                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1z"/>
                            </svg>
                        </p>
                        
                    </div>
                </div>
            </div>

            <br/><br/>
            <h4><span class="badge bg-secondary">3. HHVM Asynchronous Operations </span></h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            To easily and naturally make sure that your vision is not deceiving you, open the file with the code for the asynchronous breakfast procedure and increase the toasting time, for example.
                        </p>
                        
                        <div class="highlight fbgfm source-language-Hack">
                            
                            
                            <pre>
                                Run the script with following command:

                                <code>docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/async_breakfast.hack</code>
                            
                            Look at this function:

                            &nbsp;async function ToastBreadAsync(num $slices): Awaitable<Toast>
&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;for ($slice = 0; $slice < $slices; $slice++)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo("Putting a slice of bread in the toaster  \r\n");
&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;echo("Start toasting... \r\n");
&nbsp;&nbsp;&nbsp;&nbsp;await \HH\Asio\usleep(3000000);
&nbsp;&nbsp;&nbsp;&nbsp;echo("Remove toast from toaster  \r\n");

&nbsp;&nbsp;&nbsp;&nbsp;return new Toast();
&nbsp;}

                                We have <code>await \HH\Asio\usleep(3000000);</code> string. This command means that we are waiting for 3000000 microseconds (3 seconds).
                                Let's imagine that our slices of our bread are much thicker. Of course, it will take us noticeably more time to fry it.

                                Let's change our function as follows:

                                &nbsp;async function ToastBreadAsync(num $slices): Awaitable<Toast>
&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;for ($slice = 0; $slice < $slices; $slice++)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo("Putting a slice of bread in the toaster  \r\n");
&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;echo("Start toasting... \r\n");
&nbsp;&nbsp;&nbsp;&nbsp;await \HH\Asio\usleep(<strong>30000000</strong>);
&nbsp;&nbsp;&nbsp;&nbsp;echo("Remove toast from toaster  \r\n");

&nbsp;&nbsp;&nbsp;&nbsp;return new Toast();
&nbsp;}

                            And let's launch our program:
                            <code>docker exec -it hack-laba hhvm /var/www/src/courses/05_async/examples/async_breakfast.hack</code>

                            <span class="php-output">
                                    Pouring coffee 
                                    Warming the egg pan... 
                                    putting 3 slices of bacon in the pan  
                                    cooking first side of bacon... 
                                    Putting a slice of bread in the toaster  
                                    Putting a slice of bread in the toaster  
                                    <strong>START TOASTING...</strong>
                                    cracking 2 eggs  
                                    cooking the eggs ... 
                                    flipping a slice of bacon  
                                    flipping a slice of bacon  
                                    flipping a slice of bacon  
                                    cooking the second side of bacon...  
                                    Put eggs on plate  
                                    Put bacon on plate 
                                    <strong>REMOVE TOAST FROM TOASTER</strong>
                                    coffee is ready  
                                    eggs are ready  
                                    bacon is ready  
                                    Putting butter on the toast  
                                    Putting jam on the toast 
                                    toast is ready  
                                    Pouring orange juice 
                                    oj is ready  
                                    Breakfast is ready!  
                                    Total time taken: 30.031078338623 seconds
                                </span>
                            </pre>

                            
                        </div>

                        <p>
                            Compare the results. We lengthened the time for frying bread by 10 times and obviously affected the overall execution time, but this example is needed to show how the order of actions changes.
                            We, as before, started frying the bread after cutting it
                            Putting a slice of bread in the toaster  
                            START TOASTING... 
                        </p>
                        <p>
                            However, the second time, due to the fact that the frying time increased significantly, we took out the bread much later,
                             only after "Put bacon on plate" message, whereas last time we took it out much earlier. 
                        </p>

                        <p>
                            For the purity of the experiment, let us increase the frying time of the bread in our synchronous breakfast to the same value: 
                            <p>set <code>\sleep(30);</code> in ToastBread function of sync_breakfast.hack file</p>

                            <p>
                                It will be easy to see that the total execution time has not changed and is still the arithmetic sum of the durations of each operation - 42sec.
                            </p>

                            <p>
                                
                        </p>

                        <div class="shadow-lg p-3 mb-5 bg-body rounded">
                            <p class="text-center" style="margin-bottom:0; font-size:22px">
                                Do you still remember that asynchronous code with the same time intervals gave a total of 30 seconds?
                            </p>
                        </div>

                        <p>
                            But still remember that the main goal of asynchrony is not so much to speed up the code as to eliminate blocking when the interface does not respond to user actions. This is what we call a bad experience and this is what we should strive to eliminate.
                        </p>
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
                    <a traget="_blank" href="https://docs.hhvm.com/hack/asynchronous-operations/introduction">Asynchronous Operations: Introduction</a>

                </div>
            </div>
            


        </div>

        </main>
    </div>

EOD;

}
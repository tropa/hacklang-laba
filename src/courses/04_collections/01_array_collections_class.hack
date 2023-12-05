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
        <h1>Arrays & Collections</h1>
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
                Collections and arrays are one of the fundamentals of any language. Any programming language.
            </p>
        </div>

        <hr class="col-7 col-md-7 mb-7" />

        <div class="row g-5">
            <div class="col-md-12">
             <p>
                An array is a data structure consisting of a collection of elements (values or variables), each identified by at least one array index or key.
            </p>
            <p>
                Arrays can have multiple axes (more than one axis). Each axis is a <strong>dimension</strong>.
                By the way, Strings are basically a single dimension array of characters. 
            </p>

            

            <h4><span class="badge bg-secondary">1. Vec</span></h4>

            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            You can read in the official documentation that vec is an ordered, iterable data structure. 
                            And it is created with the vec[] syntax.
                        </p>
                        
                        <p>
                            For vectors, the execution time of insertions and deletions of elements at the end of the sequence is constant. 
                            The time to insert and remove elements in the middle of the vector varies linearly.
                        </p>
                        
                        <p>
                            From a programmer's point of view vector is a indexed array. Like any other collection option, a vector is an iterable type.
                        </p>

                        <div class="innerContent">
                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    
                                        If you want a function to return vec:
                                        <code>
                                        function get_items(): vec&lt;string&gt; {
                                        &nbsp;&nbsp;&nbsp;$items = vec['a', 'b', 'c'];
                                        &nbsp;&nbsp;&nbsp;return $items;
                                        }
                                        </code>
                                   
                                    Output:
                                        Pay attention to the <code>return</code> syntax
                                        When we want function to return a collection type we should say which exactely collection type and WHAT type we are planning to keep inside.
                                        <code>vec</code> - we are talking that we want to use <strong>vec</strong> type;
                                        <code>&lt;string&gt;</code> - we are talking WHAT we are going to store inside, in this case <strong>strings</strong>.

                                        So we will return an indexed array of string.
                                </pre>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <br/>
            <br/>

            <h4><span class="badge bg-secondary">2. Keyset</span></h4>
            <div class="card" >
                <div class="card-body">
                    <div class="alert alert-light" role="alert">
                        <p>
                            A keyset is an ordered data structure without duplicates. It is created with the keyset[] syntax.
                        </p>
                        
                        <p>
                           A keyset can only contain string or int values.
                        </p>
                        

                        <div class="innerContent">
                            <div class="highlight fbgfm source-language-Hack">
                                <pre>
                                    
                                        
                                   
                                    Output:
                                       
                                </pre>

                            </div>
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
                    <a traget="_blank" href="https://docs.hhvm.com/hack/arrays-and-collections/introduction">Arrays And Collections: Introduction</a>

                </div>
            </div>

        </div>

        

        </main>
    </div>

EOD;

// paste code here and find the output in browser

}
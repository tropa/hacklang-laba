namespace Laba\Templates;


use type Facebook\XHP\HTML\{a, body, head, html, div, header, span, main, h1, h2, p, hr, ol, li, button, strong, code};

async function RenderTemplate(): Awaitable<void> {
  

echo <<<END
  <div class="col-lg-8 mx-auto p-3 py-md-5">
   
    <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
      <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
        
        <span class="fs-4">SOLVD Hack.laba</span>
      </a>
    </header>

    <main>
      <h1>Congrats!</h1>
      <p class="fs-5 col-md-8">
        If you have reached this point, you can relax - the worst is over. We offer you a list of lessons, using which you can step by step learn new features and peculiarities of the Hack language.
      </p>

      <div class="mb-5">
        
      </div>

      <hr class="col-3 col-md-2 mb-5" />

      <div class="row g-5">
        <div class="col-md-6">
          <h2>Get started with Hack & HHVM - fast and furious web technology</h2>
          <p>
            Quickly and easily get started with our examples and helpful links. 
          </p>

          <pre>
           - <a target="_blank" href="https://docs.hhvm.com/">Oficial HACK documentations</a>
           - <a target="_blank" href="https://www.php.net/manual/en/">PHP manual</a>
          </pre>
          
        </div>

        <div class="col-md-6">
          <h2>Guides</h2>

          <div class="accordion accordion-flush" id="accordionFlushExample">
            
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingOne">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                  Get started 
                </button>
              </h2>
              <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <ol class="icon-list">
                    <li>
                      <a href="/?course=01_intro&class=01_install">Docker & project setup guide</a>
                    </li>
                    <li>
                      <a href="/?course=01_intro&class=02_debug">Debugging</a>
                    </li> 
                    <li>
                      <a href="/?course=01_intro&class=03_server_env">Server environment</a>
                    </li>
                    
                  </ol>
                  The first section, where you will become familiar with web applications and learn how to launch a training project.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                  Basic usage
                </button>
              </h2>
              <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <ol class="icon-list">
                    <li>
                      <a href="/?course=02_basic&class=01_expressions">Expressions And Operators</a>
                    </li>
                     <li>
                      <a href="/?course=02_basic&class=02_statements">Statements</a>
                    </li>
                    <li>
                      <a href="/?course=02_basic&class=03_functions">Functions</a>
                    </li>
                    <li>
                      <a href="/?course=02_basic&class=04_primitives">Built In Types (primitives)</a>
                    </li>
                    <li>
                      <a href="/?course=02_basic&class=05_attributes">Attributes</a>
                    </li>
                    <li>
                      <a href="/?course=02_basic&class=06_generators">Yield (Generators)</a>
                    </li>
                  </ol>
                  Basic language constructs.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                  OOP
                </button>
              </h2>
              <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <ol class="icon-list">
                    <li>
                      <a href="/?course=03_oop&class=01_classes">Classes</a>
                    </li>
                    <li>
                      <a href="/?course=03_oop&class=02_traits_and_interfaces">Traits And Interfaces</a>
                    </li>
                    <li>
                      <a href="/?course=03_oop&class=03_builtin_types">Built In Types</a>
                    </li>
                    <li>
                      <a href="/?course=03_oop&class=04_solid">Extended OOP</a>
                    </li>
                  </ol>
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingFour">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseThree">
                  Collections and generic
                </button>
              </h2>
                <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                  <div class="accordion-body">
                    <ol class="icon-list">
                      <li>
                        <a href="/?course=04_collections&class=01_array_collections">Arrays And Collections</a>
                      </li>
                      <li>
                        <a href="/?course=04_collections&class=02_generics">Generics</a>
                      </li>
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingFive">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                  Asynchronous Operations
                </button>
              </h2>
              <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <ol class="icon-list">
                    <li>
                      <a href="/?course=05_async&class=01_intro">Introduction to async</a>
                    </li>
                    <li>
                      <a href="/?course=05_async&class=02_await">Awaitables</a>
                    </li>
                  </ol>
                </div>

                <div class="card">
                  <div class="card-body">
                    <pre>
                    Asynchronous programming is a technique that enables your program to start a potentially long-running task and still be able to be responsive to other events while that task runs, rather than having to wait until that task has finished. 
                    
                    Once that task has finished, your program is presented with the result.
                    </pre>
                  </div>
                </div>

              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingSix">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                  Advanced usages
                </button>
              </h2>
              <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <ol class="icon-list">
                    <li>
                      <a href="/?course=06_advanced&class=02_readonly">Readonly</a>
                    </li>
                    <li>
                      <a href="/?course=06_advanced&class=03_modules">Modules</a>
                    </li>
                    <li>
                      <a href="/?course=06_advanced&class=04_xhp">XHP</a>
                    </li>
                  </ol>
                </div>
              </div>
            </div>

          </div>

          <p>Read more detailed instructions and documentation on using Hack.</p>
          
        </div>
      </div>

    </main>
  </div>;

END;
}
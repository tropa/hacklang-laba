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
                      <a href="/?course=1_intro&class=01_install">Docker & project setup guide</a>
                    </li>
                    <li>
                      <a href="/?course=1_intro&class=02_debug">Debugging</a>
                    </li>
                    
                  </ol>
                  This is the first section.
                </div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                  Accordion Item #2
                </button>
              </h2>
              <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <ol class="icon-list">
                    <li>
                      <a href="/?course=01_intro">Docker & project setup guide</a>
                    </li>
                    <li>
                      <a href="/?course=01_intro">Hack & HHVM</a>
                    </li>
                    <li>
                      <a href="/?course=02_env">Server environment</a>
                    </li>
                    <li>
                      <a href="/?course=03_yeld">Generators - why they are important</a>
                    </li>
                  </ol>
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
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
              </div>
            </div>

            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseThree">
                  Loops
                </button>
              </h2>
              <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                  <ol class="icon-list">
                    <li>
                      <a href="/?course=03_yeld">Generators - why they are important</a>
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
namespace Courses;

use type Facebook\XHP\HTML\{a, strong, body, head, html, div, header, span, main, p, hr, ol, li, br, button, code};
use type Facebook\XHP\HTML\{h1, h2, h3, h4, h5, h6, svg};



async function render(): Awaitable<void> {
    $xhp =
  <div class="col-lg-8 mx-auto p-3 py-md-5">
   
    <header class="d-flex align-items-center pb-3 mb-5 border-bottom">
      <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
        
        <span class="fs-4">SOLVD Hack.laba</span>
      </a>
    </header>

    <main>
      <h1>Intro</h1>

      <a href="/" type="button" class="btn btn-outline-secondary">
          Back
      </a>
      <p class="fs-5 col-md-8">
        
      </p>

      <div class="mb-5">
        <p>
            Due to some readons HHVM & Hack does not work on MacOS so we have to use virtual machine. Docker is a convinient way to start virtual Ubuntu without GUI and use it 
            as a server. We will start it with HHVM and use it the same way we use any internet resource.
          </p>

        <p>
          This page was made using the hack's template engine XHP.
          Open <code>{__FILE__}</code> if you are interested in how it works.
        </p>
      </div>

      <hr class="col-3 col-md-2 mb-5" />

      <div class="row g-5">
        <div class="col-md-12">
          <h2>Installation</h2>
          
          <p>
            We will install the necessary software and I will tell you why it is needed
          </p>
          
          <h4>1. We need to install some set of software</h4>

          <div class="card" style="width: 50rem;">
            <div class="card-body">
              <div class="alert alert-dark" role="alert">
                  Docker is a virtual machine. Treat it as a Linux server within your Mac. You can't see it, but it works. You can interact with it through special commands and requests.
              </div>

              <p> <a class="link" target="_blank" href="https://docs.docker.com/desktop/install/mac-install">Docker desktop</a> - <span class="badge bg-secondary">Virtual machine for MacOS</span> </p>
              <p> <a class="link" target="_blank" href="https://code.visualstudio.com">Visual Studio Code (VSCode)</a> - <span class="badge bg-secondary">Free IDE</span> </p>
              <p> <a class="link" target="_blank" href="https://github.com/slackhq/vscode-hack">VSCode-Hack extension</a> - <span class="badge bg-secondary">Syntax highliting plugin for VSCode</span> </p>
            </div>
          </div>

          <br/>
          <br/>
         
          <h4>2. Next we need to start the docker container</h4>
         
          <div class="card" style="width: 50rem;">
            <div class="card-body">
              
              <div class="alert alert-dark" role="alert">
                We use <code>docker-compose</code> - tool for defining and running multi-container Docker applications.
                Our docker-compose config is in the <code>docker-compose.yml</code> file in the root of the project.
                You can find more details <a href="https://docs.docker.com/compose/">here</a>
              </div>

              <div class="alert alert-light" role="alert">
                Open Terminal in your VSCode and paste here the next commands
              </div>

              <h6 class="card-title">To start the container:</h6>

              <code>docker-compose up -d </code>
              <br/><br/>
              
              <h6 class="card-title">To check the containers:</h6>
              <code>docker-compose ps</code>
              <br/><br/>

              <h6 class="card-title">To stop the container:</h6>
              <code>docker-compose stop</code>
              
            </div>
          </div>

          <br/>
          <br/>

          <h4>2. Next we need to ajust the project</h4>

          <div class="card" style="width: 50rem;">
            <div class="card-body">
              
              <div class="alert alert-dark" role="alert">
                Note that 'hack-laba' is predefined Docker container name in file <code>docker-compose.yml</code> `container_name` parameter.
              </div>

              <h6 class="card-title">To install composer autoload:</h6>

              <code>
                docker exec -it hack-laba bash -c "cd /var/www && php /opt/composer/composer.phar require  hhvm/hsl hhvm/hhvm-autoload"
              </code> and press "y" when it asks you.
              <br/><br/>

              <div class="alert alert-primary" role="alert">
                
                <p>
                  The autoloader obviously does what it is - automatically loads classes and namespaces for your convenience. 
                  It can be included in any PHP project and it is also included in the Hack.
                </p>

                <p>
                  The <code>hh_autoload.json</code> configuration file describes a directory whose contents will be automatically loaded by the autoloader.
                  In our case this is the <strong>/src</strong> folder.
                </p>

                <p>
                  Without this, you will need to explicitly include each file that is needed using function
                  <code><a href="https://www.php.net/manual/en/function.require-once.php">require_once()</a></code>.
                </p>
              </div>
              
              <h6 class="card-title">How to run HHVM typechecker:</h6>
              <code>docker exec -it hack-laba bash -c "cd /var/www && hh_client"</code>
              <br/><br/>

            </div>
          </div>
          

            
            <a href="/" type="button" class="btn btn-primary">Get back</a>
            <a href="https://docs.hhvm.com/hack/getting-started/getting-started" type="button" class="btn btn-primary">More info</a>

            
         
          
        </div>

        
      </div>

    </main>
  </div>;

  echo await $xhp->toStringAsync();
}
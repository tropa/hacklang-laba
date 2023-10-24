namespace Laba;

use namespace Laba\Templates;

//use namespace App\Users;

//use namespace App\Users\Premium as PremiumUser;

<<__EntryPoint>>
async function main(): Awaitable<void> {

  require_once(__DIR__.'/../vendor/autoload.hack');
  \Facebook\AutoloadMap\initialize();

  await Templates\RenderHeader();

  if(\isset($_REQUEST['course']))
  {
    $course = \strval($_REQUEST['course']) ?? '01_intro';
    $class = \strval($_REQUEST['class']) ?? null;

    $file =  __DIR__."/../src/courses/{$course}/{$class}_class.hack";

    if(\file_exists($file)){
      require_once $file;
      \Courses\render();
    }
  }
  else {
    await Templates\RenderTemplate();
  }

  
  
  
  
  

 // require_once(__DIR__.'/../vendor/autoload.hack');
 // \Facebook\AutoloadMap\initialize();

  /* Env settings */
  /*
  Env\Environment::_SERVER();
  Env\Environment::_COOKIES();
  Env\Environment::_GET();
  Env\Environment::_POST();
  Env\Environment::_REQUEST();
  */
  /* Env settings */

 
  /* namespaces  */

  // $user = new Users\User("Mikhail");
  // $user->getName();
  /*
    try{
      $user->setName("Andrei");
    }
    catch(\Exception $e){
      \var_dump($e->getMessage());
    }
    

    //$premiumUser = new PremiumUser\PremiumUser('Vasya');
    //$premiumUser->getName();
  */
  /* namespaces  */
}

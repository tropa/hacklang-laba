namespace MyProject;


use namespace App\Users;
use namespace App\Env;

<<__EntryPoint>>
async function main(): Awaitable<void> {

  require_once(__DIR__.'/../vendor/autoload.hack');
  \Facebook\AutoloadMap\initialize();

  /* Env settings */
  Env\Environment::_SERVER();
  Env\Environment::_COOKIES();
  Env\Environment::_GET();
  Env\Environment::_POST();
  Env\Environment::_REQUEST();
  /* Env settings */

 
/* namespaces  */
  $user = new Users\User("Mikhail");
  $user->getName();

  try{
    $user->setName("Andrei");
  }
  catch(\Exception $e){
    \var_dump($e->getMessage());
  }

}

namespace Laba;

use namespace Laba\Templates;

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
}

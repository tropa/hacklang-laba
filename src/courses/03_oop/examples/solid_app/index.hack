
<<__EntryPoint>>
function index_php(): void{
    require_once __FILE__.'/../app/UserController.hack';
    require_once __FILE__.'/../app/UserRepository.hack';
    require_once __FILE__.'/../app/User.hack';
    require_once __FILE__.'/../app/Db.hack';

    try {
        $controller = new UserController();
        echo $controller->handle();
    } catch (Throwable $exception) {
        echo 'Error: ' . $exception->getMessage();
    }
}
use namespace HH\Lib\C;

class UserController {
    public function handle()
    {
        $repo = new UserRepository();

        // Here must have been $_POST['email'] from somewhere:
        $user = $repo->findByEmail('test@test.com'); 

        if (!$user) {
            throw new \Exception('Пользователь не найден!');
        }
        return <<<RESPONSE
The name of the user is: $user->name
RESPONSE;
    }
}

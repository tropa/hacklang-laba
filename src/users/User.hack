namespace App\Users;


class User extends AbstractUser {
    private string $name;

    public function __construct (string $name) {
        $this->name = $name;
    }

    public function getName() {
        echo $this->name;
        echo "<br/>";
    }
    

}
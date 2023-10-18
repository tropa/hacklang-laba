namespace App\Users;

abstract class AbstractUser {
    public function __construct() {

    }

    public function getName(): void {}
    public function setName(): void {throw new \Exception(__METHOD__." Not implemented", 1);
    }
}
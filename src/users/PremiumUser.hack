namespace App\Users\Premium;

class PremiumUser {
    private string $name;

    public function __construct(string $name){
        $this->name = $name;
    }

    public function getName(){
        echo $this->name;
    }
}
namespace Courses\Constructors;

class User {
    // protected int $id;
    // protected string $name;

    // public function __construct(
    //     int $id,
    //     string $name,
    // ) {
    //     $this->id = $id;
    //     $this->name = $name;
    // }

    public function __construct(
        protected int $id,
        protected string $name,
    ) {}

    public function get_id(): int {
        return $this -> id;
    }


    public function get_name(): string {
        return $this -> name;
    }
}

class PremiumUser extends User {

    public function __construct(int $id, string $name,  private string $status) {
        parent::__construct($id, $name);
        // $this->id = $id;
        // $this->name = $name;
    }

    public function get_id(): int {
        echo "<br/>Overrided method get_id()";
        return parent::get_id();
    }


    public function get_name(): string {
        echo "<br/>Overrided method get_name()";
        return parent::get_name();
    }

    public function get_status(): string {
        echo "<br/>Overrided method get_status()";
        return $this-> status;
    }
}




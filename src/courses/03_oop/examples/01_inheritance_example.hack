namespace Courses\In;

class UnmutableIntBox {

    protected int $value = 0;

    public function __construct(int $new_value) {
        $this->value = $new_value;
    }

    public function get(): int {
        // echo "<br/>Parent method<br/>";
        return $this->value;
    }

    
}

class MutableIntBox extends UnmutableIntBox {

    public function set(int $value): void {
        $this->value = $value;
    }

    <<__Override>>
    public function get(): int {
        // echo "<br/>Overrided method<br/>";
        return $this->value;
    }
}
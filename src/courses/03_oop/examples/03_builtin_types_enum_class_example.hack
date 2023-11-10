namespace Courses\Enum;

interface IHasName {
  public function name(): string;
}

class HasName implements IHasName {
  public function __construct(private string $name)[] {}
  public function name(): string {
    return $this->name;
  }
}

class ConstName implements IHasName {
  public function name(): string {
    return "bar";
  }
}

enum class Names: IHasName {
  HasName Hello = new HasName('hello');
  HasName World = new HasName('world');
  ConstName Bar = new ConstName();
}
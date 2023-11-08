namespace Courses\Traits;

abstract class Machine {
  public function openDoors(): void {
    return;
  }
  public function closeDoors(): void {
    return;
  }
}
interface Fliers {
  public function fly(): bool;
}

trait Plane {
  require extends Machine;
  require implements Fliers;

  public function takeOff(): bool {
    $this->openDoors();
    $this->closeDoors();
    return $this->fly();
  }
}

//try not to mplement interface 
// hack-laba  | \nFatal error: Class 'Courses\\Traits\\AirBus' required to implement interface 
// 'Courses\\Traits\\Fliers' by trait 'Courses\\Traits\\Plane' in /var/www/src/courses/03_oop/02_traits_and_interfaces_requirements_example.hack on line 27
// class AirBus extends Machine {

class AirBus extends Machine implements Fliers {
  use Plane;

  public function fly(): bool {
    return true;
  }
}

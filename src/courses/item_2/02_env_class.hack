namespace Courses;

use namespace App\Env;

function render(): void {
    
    echo '<div class="row">
            <div class="col-md-6">
            <span class="badge bg-secondary">Hello 2</span>
            </div></div>';

    Env\Environment::_SERVER();
    Env\Environment::_COOKIES();
    Env\Environment::_GET();
    Env\Environment::_POST();
    Env\Environment::_REQUEST();
}
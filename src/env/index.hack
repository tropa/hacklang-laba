namespace App\Env;

class Environment{

    public static function _SERVER(){
        \var_dump($_SERVER);
    }

    public static function _COOKIES(){
        echo "<p>For cookies info please look at https://github.com/ytake/hack-cookie</p>";
    }

    public static function _GET() {
        \var_dump($_GET);
        echo "<br/>";
        echo "<br/>";
    }

    public static function _POST() {
        \var_dump($_POST);
         echo "<br/>";
         echo "<br/>";
    }

    public static function _REQUEST() {
        \var_dump($_REQUEST);
         echo "<br/>";
         echo "<br/>";
    }
}
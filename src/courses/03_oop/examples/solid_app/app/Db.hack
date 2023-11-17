

class Db {

    public function query(string $sql, HH\dict $params, $class = \stdClass::class): HH\vec
    {
        $user = new User();
        $user->name = 'Goose';
        $user->email = 'user@mail.com';

        return vec[$user];
    }

}
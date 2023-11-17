
use namespace HH\Lib\C;

class UserRepository {
   public function findByEmail(string $email): ?User
    {
        $db = new Db();
        $params = dict[':email' => $email];

        $res = $db->query(
            'SELECT * FROM users WHERE email=:email', $params, 
            User::class
        );

        return !C\is_empty($res) ? $res[0] : null;
    }
}

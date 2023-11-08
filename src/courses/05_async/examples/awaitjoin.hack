
async function get_curl_content(Set<string> $urls): Awaitable<Vector<string>> {
  $content = Vector {};

  foreach ($urls as $url) {
    $str = await \HH\Asio\curl_exec($url);
    $content[] = \substr($str, 0, 10);
  }
  return $content;
}

<<__EntryPoint>>
function join_main(): void {
  $urls = Set {
    'https://hhvm.com/blog/2020/05/04/hhvm-4.56.html',
    'https://hhvm.com/blog/2020/10/21/hhvm-4.80.html',
  };

  $content = HH\Asio\join(get_curl_content($urls));
  \var_dump($content);
}
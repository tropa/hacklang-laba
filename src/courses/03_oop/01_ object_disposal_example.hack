namespace Courses\OD;

class TextFile implements \IDisposable {
  private ?int $fileHandle = null;
  private bool $openFlag = false;
  private string $fileName;
  private string $openMode;

  public function __construct(string $fileName, string $openMode) {
    $this->fileHandle = 55; // open file somehow and store handle
    $this->openFlag = true; // file is open
    $this->fileName = $fileName;
    $this->openMode = $openMode;
  }

  public function close(): void {
    if ($this->openFlag === false) {
      return;
    }

    // ... somehow close the file
    $this->fileHandle = null;
    $this->openFlag = false;

    echo "Closed file $this->fileName\n";
  }

  public function __toString(): string {
    return 'fileName: '.
      $this->fileName.
      ', openMode: '.
      $this->openMode.
      ', fileHandle: '.
      (($this->fileHandle === null) ? "null" : $this->fileHandle).
      ', openFlag: '.
      (($this->openFlag) ? "True" : "False");
  }

  public function __dispose(): void {
    echo "Inside __dispose\n";
    $this->close();
  }

  <<__ReturnDisposable>>
  public static function open_TextFile(
    string $fileName,
    string $openMode,
  ): TextFile {
    return new TextFile($fileName, $openMode);
  }

  public function is_same_TextFile(<<__AcceptDisposable>> TextFile $t): bool {
    return $this->fileHandle === $t->fileHandle;
  }

  // other methods, such as read and write
}



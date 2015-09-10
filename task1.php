<?


class Building implements ArrayAccess {
    private $vars = array();

    public function offsetSet($offset, $value) {
        if (is_null($offset)) {
            $this->vars[] = $value;
        } else {
            $this->vars[$offset] = $value;
        }
    }

    public function offsetExists($offset) {
        return isset($this->vars[$offset]);
    }

    public function offsetUnset($offset) {
        unset($this->vars[$offset]);
    }

    public function offsetGet($offset) {
        return isset($this->vars[$offset]) ? $this->vars[$offset] : null;
    }

    public function save() {
        var_dump($this->vars);
    }

}

echo 'Возможно, начиная с пятой версии. Подразумевается, что класс Building использует встроенный интерфейс ArrayAccess, которые позволяет обратиться к объекту, как к массиву, тогда как в действительности объект имеет методы, обеспечивающие работу механизма, который и создаёт подобную функциональность.<br>';

$obj = new Building();
$obj['name'] = 'Main tower';
$obj['flats'] = 100;
$obj->save();

echo '<hr>';
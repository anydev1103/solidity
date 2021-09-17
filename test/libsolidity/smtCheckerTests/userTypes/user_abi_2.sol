type T is uint;

contract C {
	function f(bytes memory data) public pure {
		T x = abi.decode(data, (T));
		T y = abi.decode(data, (T));
		assert(T.unwrap(x) == T.unwrap(y)); // should hold
		assert(T.unwrap(x) != T.unwrap(y)); // should fail
	}
}
// ====
// SMTEngine: all

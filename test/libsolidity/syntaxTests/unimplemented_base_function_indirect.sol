abstract contract a {
    function f() virtual public;
}
contract b is a {
    function f() public override virtual {  }
}
contract c is b {
    function f() public override { a.f(); }
}
// ----
// TypeError: (176-181): Call to unimplemented function "f".

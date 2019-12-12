abstract contract a {
    function f() virtual public;
}
contract b is a {
    function f() public virtual override { a.f(); }
}
contract c is a,b {
    function f() public override(a, b) { a.f(); }
}
// ----
// TypeError: (118-123): Call to unimplemented function "f".
// TypeError: (190-195): Call to unimplemented function "f".

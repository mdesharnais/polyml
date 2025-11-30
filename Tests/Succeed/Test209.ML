(* Record update can be enabled manually. *)

PolyML.Compiler.languageExtensions := true;

let
    val r = {a = 10, b = [20, 21, 22], c = "30"}
    val a = 11
    val r' = {r with a = a}
in
    #a r' = a andalso #b r' = #b r andalso #c r' = #c r
end;

(* Record update can use record punning. *)

let
    val r = {a = 10, b = [20, 21, 22], c = "30"}
    val a = 11
    val r' = {r with a = a}
in
    #a r' = a andalso #b r' = #b r andalso #c r' = #c r
end;

(* Together, record update and record punning enable terse update of long records. *)

type longrec =
    {aaa : int,
     bbb : int * int,
     ccc : int * int * int,
     ddd : int list,
     eee : int list list,
     fff : int -> int,
     ggg : int -> int -> int,
     hhh : {x : int, y : int, z : int}} 

fun update_aaa (r : longrec) aaa : longrec = {r with aaa}
fun update_bbb (r : longrec) bbb : longrec = {r with bbb}
fun update_ccc (r : longrec) ccc : longrec = {r with ccc}
fun update_ddd (r : longrec) ddd : longrec = {r with ddd}
fun update_eee (r : longrec) eee : longrec = {r with eee}
fun update_fff (r : longrec) fff : longrec = {r with fff}
fun update_ggg (r : longrec) ggg : longrec = {r with ggg}
fun update_hhh (r : longrec) hhh : longrec = {r with hhh}

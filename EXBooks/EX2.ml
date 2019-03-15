type expr = Add of int*int
type exp_val = 
    | NumVal of int
    | BoolVal of bool
    | ProcVal of string*expr*env
and
env = 
    | EmptyEnv
    | ExtendedEnv of string*exp_val*env


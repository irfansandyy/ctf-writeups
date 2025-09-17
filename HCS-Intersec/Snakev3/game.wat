(module $game.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (func $__wasm_call_ctors (type 0))
  (func $init (type 1) (param i32)
    i32.const 0
    local.get 0
    i32.store offset=1136
    i32.const 0
    local.get 0
    i32.store offset=1132
    i32.const 0
    i32.const 0
    i32.store offset=1128)
  (func $update_on_eat (type 0)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=1128
    i32.const 9
    i32.add
    local.tee 0
    i32.store offset=1128
    i32.const 0
    i32.const 0
    i32.load offset=1136
    local.get 0
    i32.add
    i32.const 0
    i32.load offset=1132
    i32.const 5
    i32.rotl
    i32.xor
    i32.store offset=1132)
  (func $get_flag (type 1) (param i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1128
        i32.const 999999
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1132
        i32.const 1904218052
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 31
      i32.add
      i32.const 0
      i64.load offset=1055 align=1
      i64.store align=1
      local.get 0
      i32.const 24
      i32.add
      i32.const 0
      i64.load offset=1048
      i64.store align=1
      local.get 0
      i32.const 16
      i32.add
      i32.const 0
      i64.load offset=1040
      i64.store align=1
      local.get 0
      i32.const 8
      i32.add
      i32.const 0
      i64.load offset=1032
      i64.store align=1
      local.get 0
      i32.const 0
      i64.load offset=1024
      i64.store align=1
      return
    end
    local.get 0
    i32.const 0
    i32.load8_u offset=1104
    i32.const 0
    i32.load8_u offset=1072
    i32.xor
    i32.store8
    local.get 0
    i32.const 0
    i32.load8_u offset=1105
    i32.const 0
    i32.load8_u offset=1073
    i32.xor
    i32.store8 offset=1
    local.get 0
    i32.const 0
    i32.load8_u offset=1106
    i32.const 0
    i32.load8_u offset=1074
    i32.xor
    i32.store8 offset=2
    local.get 0
    i32.const 0
    i32.load8_u offset=1107
    i32.const 0
    i32.load8_u offset=1075
    i32.xor
    i32.store8 offset=3
    local.get 0
    i32.const 0
    i32.load8_u offset=1108
    i32.const 0
    i32.load8_u offset=1076
    i32.xor
    i32.store8 offset=4
    local.get 0
    i32.const 0
    i32.load8_u offset=1109
    i32.const 0
    i32.load8_u offset=1077
    i32.xor
    i32.store8 offset=5
    local.get 0
    i32.const 0
    i32.load8_u offset=1110
    i32.const 0
    i32.load8_u offset=1078
    i32.xor
    i32.store8 offset=6
    local.get 0
    i32.const 0
    i32.load8_u offset=1111
    i32.const 0
    i32.load8_u offset=1079
    i32.xor
    i32.store8 offset=7
    local.get 0
    i32.const 0
    i32.load8_u offset=1112
    i32.const 0
    i32.load8_u offset=1080
    i32.xor
    i32.store8 offset=8
    local.get 0
    i32.const 0
    i32.load8_u offset=1113
    i32.const 0
    i32.load8_u offset=1081
    i32.xor
    i32.store8 offset=9
    local.get 0
    i32.const 0
    i32.load8_u offset=1114
    i32.const 0
    i32.load8_u offset=1082
    i32.xor
    i32.store8 offset=10
    local.get 0
    i32.const 0
    i32.load8_u offset=1115
    i32.const 0
    i32.load8_u offset=1083
    i32.xor
    i32.store8 offset=11
    local.get 0
    i32.const 0
    i32.load8_u offset=1116
    i32.const 0
    i32.load8_u offset=1084
    i32.xor
    i32.store8 offset=12
    local.get 0
    i32.const 0
    i32.load8_u offset=1117
    i32.const 0
    i32.load8_u offset=1085
    i32.xor
    i32.store8 offset=13
    local.get 0
    i32.const 0
    i32.load8_u offset=1118
    i32.const 0
    i32.load8_u offset=1086
    i32.xor
    i32.store8 offset=14
    local.get 0
    i32.const 0
    i32.load8_u offset=1119
    i32.const 0
    i32.load8_u offset=1087
    i32.xor
    i32.store8 offset=15
    local.get 0
    i32.const 0
    i32.load8_u offset=1120
    i32.const 0
    i32.load8_u offset=1088
    i32.xor
    i32.store8 offset=16
    local.get 0
    i32.const 0
    i32.load8_u offset=1121
    i32.const 0
    i32.load8_u offset=1089
    i32.xor
    i32.store8 offset=17
    local.get 0
    i32.const 0
    i32.load8_u offset=1122
    i32.const 0
    i32.load8_u offset=1090
    i32.xor
    i32.store8 offset=18
    local.get 0
    i32.const 0
    i32.load8_u offset=1123
    i32.const 0
    i32.load8_u offset=1091
    i32.xor
    i32.store8 offset=19
    local.get 0
    i32.const 0
    i32.load8_u offset=1124
    i32.const 0
    i32.load8_u offset=1092
    i32.xor
    i32.store8 offset=20
    local.get 0
    i32.const 0
    i32.load8_u offset=1125
    i32.const 0
    i32.load8_u offset=1093
    i32.xor
    i32.store8 offset=21
    local.get 0
    i32.const 0
    i32.load8_u offset=1126
    i32.const 0
    i32.load8_u offset=1094
    i32.xor
    i32.store8 offset=22)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66688))
  (global (;1;) i32 (i32.const 1128))
  (global (;2;) i32 (i32.const 1132))
  (global (;3;) i32 (i32.const 1136))
  (global (;4;) i32 (i32.const 1072))
  (global (;5;) i32 (i32.const 1104))
  (global (;6;) i32 (i32.const 1024))
  (global (;7;) i32 (i32.const 1140))
  (global (;8;) i32 (i32.const 1152))
  (global (;9;) i32 (i32.const 66688))
  (global (;10;) i32 (i32.const 1024))
  (global (;11;) i32 (i32.const 66688))
  (global (;12;) i32 (i32.const 131072))
  (global (;13;) i32 (i32.const 0))
  (global (;14;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "init" (func $init))
  (export "update_on_eat" (func $update_on_eat))
  (export "get_flag" (func $get_flag))
  (export "score" (global 1))
  (export "integrity" (global 2))
  (export "seed" (global 3))
  (export "encrypted_flag" (global 4))
  (export "key" (global 5))
  (export "__dso_handle" (global 6))
  (export "__data_end" (global 7))
  (export "__stack_low" (global 8))
  (export "__stack_high" (global 9))
  (export "__global_base" (global 10))
  (export "__heap_base" (global 11))
  (export "__heap_end" (global 12))
  (export "__memory_base" (global 13))
  (export "__table_base" (global 14))
  (data $.rodata (i32.const 1024) "hey, no \e2\98\9d\ef\b8\8f no \e2\98\9d\ef\b8\8f no \e2\98\9d\ef\b8\8f yah\00")
  (data $.data (i32.const 1072) "?&?\18\0d\0c\07&+\1c\00\12\01\17,&\1a(\02\1f\18\1f\00\00\00\00\00\00\00\00\00\00welcome_to_the_RE_club\00"))

(component
  (core module $m
    (func (export "add") (param $a i32) (param $b i32) (result i32)
      local.get $a
      local.get $b
      i32.add
    )
  )
  (core instance $i (instantiate $m))
  (func $add (param "a" s32) (param "b" s32) (result s32) (canon lift (core func $i "add")))
  (export "add" (func $add))
)

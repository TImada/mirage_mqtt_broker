open Mirage

let server_ipconfig : ipv4_config =
  let nw = Ipaddr.V4.Prefix.of_string_exn "192.168.112.150/24" in
  let gw = Some (Ipaddr.V4.of_string_exn "192.168.112.1") in
  { network = nw; gateway = gw }

let sv4 =
  generic_stackv4 ~config:server_ipconfig default_network

let packages = [ package "rresult" ]

let main = main ~packages "Unikernel.Main" (stackv4 @-> mclock @-> job)

let () =
  register "mqb" [
    main $ sv4 $ default_monotonic_clock
  ]


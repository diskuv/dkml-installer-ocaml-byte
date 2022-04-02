open Cmdliner
open Dkml_package_textarchive_uninstaller

let uninstall_cmd =
  let doc = "the DKML OCaml uninstaller" in
  ( Term.(
      const uninstall
      $ const Private_common.program_name
      $ Dkml_package_textarchive_common.package_args_t),
    Term.info "dkml-install-uninstaller" ~version:"%%VERSION%%" ~doc )

let () =
  Term.(
    exit
    @@ Dkml_install_runner.Error_handling.catch_cmdliner_eval
         (fun () -> eval ~catch:false uninstall_cmd)
         (`Error `Exn))
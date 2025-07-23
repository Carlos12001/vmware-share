## 2025-07-23 14:57:00

```bash
cmata@redhat003 vector_multicore_siwa]$ git log --oneline
95bfa6f (HEAD -> clean-main) initial clean snapshot
[cmata@redhat003 vector_multicore_siwa]$ git count-objects -vH
count: 1112
size: 4.45 MiB
in-pack: 12840
packs: 3
size-pack: 1007.09 MiB
prune-packable: 4
garbage: 0
size-garbage: 0 bytes
[cmata@redhat003 vector_multicore_siwa]$ git verify-pack -v .git/objects/pack/*.idx | sort -k3nr | head

961815c2061e3d9805944bd26f77dbb2c3ec98ca blob   64941337 1741786 1022303982
cc8d9939811694539098e27c67adbb358389c46d blob   45785586 2389564 52716213
c01ffc6bb5a5723439342b58792d581b24835a40 blob   45776528 2390659 55129496
e58b2646cbd05ddae5fb743a4b2e7c01459c4e38 blob   42938338 430322 717189555
1093c1d367a548e9488ab59d7db1b0e9b1a4c532 blob   38168354 4466049 66574496
22f603f20c378d76d98d27100646984ecd5436ca blob   25090050 6127779 113804608
d3b07c1e82771d74b2254204513f9412b6a8c306 blob   24898300 6118907 119932387
71790ba400929ae30b9c3f0fa2bfae5b312e5299 blob   24392296 9478075 558675349
be97ef19c0a8eced2ba1937d7e8e7f9be3e2caae blob   24372783 9469431 506927271
3609b0576480ea26faa0aa67a4842cb30b0412d9 blob   24315277 668038 716498256
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | egrep -i '.(mw'
grep: Unmatched ( or \(
[cmata@redhat003 vector_multicore_siwa]$ test -x .git/hooks/pre-commit && echo
[cmata@redhat003 vector_multicore_siwa]$ # estando en clean-main
[cmata@redhat003 vector_multicore_siwa]$ git log --stat        # confirma que sólo hay 1 commit
commit 95bfa6ffea183e19d49e4060d6801ae909c7828a (HEAD -> clean-main)
Author: Carlos12001 <carlos.andres12001@gmail.com>
Date:   Wed Jul 23 14:51:04 2025 -0600

    initial clean snapshot

 .gitignore                                                                       |    108 +
 README.md                                                                        |      2 +
 TEC_RISCV/ALU/ALU.v                                                              |    197 +
 TEC_RISCV/ALU/ALU_2.sv                                                           |    196 +
 TEC_RISCV/ALU/ALU_Library.sv                                                     |    386 +
 TEC_RISCV/ALU/ALU_tb.v                                                           |    178 +
 TEC_RISCV/ALU/Barrel_Shifter.sv                                                  |    175 +
 TEC_RISCV/ALU/CSA4.sv                                                            |     21 +
 TEC_RISCV/ALU/CSK_sin_mux.sv                                                     |     61 +
 TEC_RISCV/ALU/Informe_ALU.pdf                                                    |    Bin 0 -> 435155 bytes
 TEC_RISCV/ALU/Manchester_carry_chain.sv                                          |     61 +
 TEC_RISCV/ALU/VCSA.sv                                                            |     88 +
 TEC_RISCV/ALU/barrel_tb.sv                                                       |    127 +
 TEC_RISCV/ALU/carry_skip_adder.sv                                                |     61 +
 TEC_RISCV/ALU/csk_bloque.sv                                                      |     17 +
 TEC_RISCV/ALU/test_ALU_2.sv                                                      |    177 +
 TEC_RISCV/ALU/test_VCSA.sv                                                       |     57 +
 TEC_RISCV/ALU/test_adder_sin_mux.sv                                              |     68 +
 TEC_RISCV/ALU/test_adders.sv                                                     |     57 +
 TEC_RISCV/ALU/test_cadena.sv                                                     |     57 +
 TEC_RISCV/ALU/test_top.sv                                                        |    170 +
 TEC_RISCV/ALU/top.sv                                                             |    139 +
 TEC_RISCV/AXI_Interface/Design_srcs/AXI_Int.sv                                   |    102 +
 TEC_RISCV/AXI_Interface/Design_srcs/AXI_Ports.sv                                 |     42 +
 TEC_RISCV/AXI_Interface/Design_srcs/C_Escrituras.sv                              |    141 +
 TEC_RISCV/AXI_Interface/Design_srcs/C_Lecturas.sv                                |    129 +
 TEC_RISCV/AXI_Interface/Design_srcs/FIFO_E.sv                                    |     60 +
...skipping...
Author: Carlos12001 <carlos.andres12001@gmail.com>
Date:   Wed Jul 23 14:51:04 2025 -0600

    initial clean snapshot

 .gitignore                                                                       |    108 +
 README.md                                                                        |      2 +
 TEC_RISCV/ALU/ALU.v                                                              |    197 +
 TEC_RISCV/ALU/ALU_2.sv                                                           |    196 +
 TEC_RISCV/ALU/ALU_Library.sv                                                     |    386 +
 TEC_RISCV/ALU/ALU_tb.v                                                           |    178 +
 TEC_RISCV/ALU/Barrel_Shifter.sv                                                  |    175 +
 TEC_RISCV/ALU/CSA4.sv                                                            |     21 +
 TEC_RISCV/ALU/CSK_sin_mux.sv                                                     |     61 +
 TEC_RISCV/ALU/Informe_ALU.pdf                                                    |    Bin 0 -> 435155 bytes
 TEC_RISCV/ALU/Manchester_carry_chain.sv                                          |     61 +
 TEC_RISCV/ALU/VCSA.sv                                                            |     88 +
 TEC_RISCV/ALU/barrel_tb.sv                                                       |    127 +
 TEC_RISCV/ALU/carry_skip_adder.sv                                                |     61 +
 TEC_RISCV/ALU/csk_bloque.sv                                                      |     17 +
 TEC_RISCV/ALU/test_ALU_2.sv                                                      |    177 +
 TEC_RISCV/ALU/test_VCSA.sv                                                       |     57 +
 TEC_RISCV/ALU/test_adder_sin_mux.sv                                              |     68 +
 TEC_RISCV/ALU/test_adders.sv                                                     |     57 +
 TEC_RISCV/ALU/test_cadena.sv                                                     |     57 +
 TEC_RISCV/ALU/test_top.sv                                                        |    170 +
 TEC_RISCV/ALU/top.sv                                                             |    139 +
 TEC_RISCV/AXI_Interface/Design_srcs/AXI_Int.sv                                   |    102 +
 TEC_RISCV/AXI_Interface/Design_srcs/AXI_Ports.sv                                 |     42 +
 TEC_RISCV/AXI_Interface/Design_srcs/C_Escrituras.sv                              |    141 +
 TEC_RISCV/AXI_Interface/Design_srcs/C_Lecturas.sv                                |    129 +
```
## 2025-07-23 14:43:00

```bash
[cmata@redhat003 vector_multicore_siwa]$ git pull --ff-only          # tu branch ya está al día, pegará en fast-forward
remote: Enumerating objects: 1714, done.
remote: Counting objects: 100% (156/156), done.
remote: Compressing objects: 100% (81/81), done.
remote: Total 1714 (delta 74), reused 91 (delta 70), pack-reused 1558 (from 1)
Receiving objects: 100% (1714/1714), 22.13 MiB | 5.63 MiB/s, done.
Resolving deltas: 100% (683/683), completed with 17 local objects.
From github.com:rmolina44tec/vector_multicore_siwa
   c51c0c3..741214d  vector     -> origin/vector
Already up to date.
[cmata@redhat003 vector_multicore_siwa]$ git ls-files -ci --exclude-standard   # ? debería seguir vacío
TEC_RISCV/MMU/resultados/mem_inside/.__tmp_pns_undo_file.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/.__tmp_pns_undo_file.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.sdc
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.spef.max
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.spef.min
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.v
TEC_RISCV/MMU/resultados/mem_inside/be/icc_gui.output
TEC_RISCV/MMU/resultados/mem_inside/be/icc_output.txt
TEC_RISCV/MMU/resultados/mem_inside/be/implement/.__tmp_pns_undo_file.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/implement/buffer.gcts
TEC_RISCV/MMU/resultados/mem_inside/be/implement/crear.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/implement/icc_gui.output
TEC_RISCV/MMU/resultados/mem_inside/be/implement/icc_output.txt
TEC_RISCV/MMU/resultados/mem_inside/be/implement/net.acts
TEC_RISCV/MMU/resultados/mem_inside/be/implement/net.gcts
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VDD.ar
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VDD.msg
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VDD.mtcmos
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VDD.power
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VDD.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VSS.ar
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VSS.msg
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VSS.mtcmos
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VSS.power
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.VSS.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.connview
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.inst_hl.pna
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.missing_iopin
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.padmaster
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/RegisterFile6.pwrview
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/VDD.VD.report
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/VDD.pad_current
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/VSS.pad_current
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/create_pns_pg.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/pns_replay.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/strap_end.VDD.vpad
TEC_RISCV/MMU/resultados/mem_inside/be/implement/pna_output/strap_end.VSS.vpad
TEC_RISCV/MMU/resultados/mem_inside/be/implement/user.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/net.gcts
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VDD.ar
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VDD.floating_HM
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VDD.msg
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VDD.mtcmos
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VDD.power
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VDD.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VSS.ar
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VSS.floating_HM
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VSS.msg
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VSS.mtcmos
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VSS.power
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.VSS.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.connview
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.inst_hl.pna
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.missing_iopin
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.padmaster
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/CMB.pwrview
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/VDD.VD.report
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/VDD.pad_current
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/VSS.pad_current
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/create_pns_pg.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/pns_replay.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/strap_end.VDD.vpad
TEC_RISCV/MMU/resultados/mem_inside/be/pna_output/strap_end.VSS.vpad
TEC_RISCV/MMU/resultados/mem_inside/be/scripts/be/icc_setup.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/scripts/common_setup.tcl
TEC_RISCV/MMU/resultados/mem_inside/be/source/CMB.sdc
TEC_RISCV/MMU/resultados/mem_inside/be/source/CMB.v
TEC_RISCV/MMU/resultados/mem_inside/be/source/XSPRAMLP_2048X32_M8P.v
TEC_RISCV/MMU/resultados/mem_inside/be/source/icc_output.txt
TEC_RISCV/MMU/resultados/mem_inside/fe/db/CMB.sdc
TEC_RISCV/MMU/resultados/mem_inside/fe/db/CMB.v
TEC_RISCV/MMU/resultados/mem_inside/fe/scripts/CMB.tcl
TEC_RISCV/MMU/resultados/mem_inside/fe/scripts/CMB_constraint.tcl
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/CMB.sv
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/XSPRAMLP_2048X32_M8P.v
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/bus_fsm.sv
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/controlador.sv
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/core_fsm.sv
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/error_handler.sv
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/fifo.sv
TEC_RISCV/MMU/resultados/mem_inside/fe/sources/mem_sgnl_gen.sv
TEC_RISCV/MMU/resultados/mem_outside/be/buffer.gcts
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.sdc
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.spef.max
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.spef.min
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.v
TEC_RISCV/MMU/resultados/mem_outside/be/icc_gui.output
TEC_RISCV/MMU/resultados/mem_outside/be/icc_output.txt
TEC_RISCV/MMU/resultados/mem_outside/be/implement/.__tmp_pns_undo_file.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/implement/buffer.gcts
TEC_RISCV/MMU/resultados/mem_outside/be/implement/crear.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/implement/icc_gui.output
TEC_RISCV/MMU/resultados/mem_outside/be/implement/icc_output.txt
TEC_RISCV/MMU/resultados/mem_outside/be/implement/net.acts
TEC_RISCV/MMU/resultados/mem_outside/be/implement/net.gcts
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VDD.ar
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VDD.msg
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VDD.mtcmos
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VDD.power
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VDD.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VSS.ar
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VSS.msg
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VSS.mtcmos
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VSS.power
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.VSS.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.connview
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.inst_hl.pna
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.missing_iopin
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.padmaster
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/RegisterFile6.pwrview
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/VDD.VD.report
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/VDD.pad_current
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/VSS.pad_current
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/create_pns_pg.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/pns_replay.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/strap_end.VDD.vpad
TEC_RISCV/MMU/resultados/mem_outside/be/implement/pna_output/strap_end.VSS.vpad
TEC_RISCV/MMU/resultados/mem_outside/be/implement/user.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/net.acts
TEC_RISCV/MMU/resultados/mem_outside/be/net.gcts
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/VDD.VD.report
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/VDD.pad_current
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/VSS.pad_current
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VDD.ar
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VDD.msg
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VDD.mtcmos
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VDD.power
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VDD.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VSS.ar
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VSS.msg
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VSS.mtcmos
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VSS.power
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.VSS.pw_hl.pna
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.connview
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.inst_hl.pna
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.missing_iopin
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.padmaster
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/controlador.pwrview
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/create_pns_pg.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/pns_replay.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/strap_end.VDD.vpad
TEC_RISCV/MMU/resultados/mem_outside/be/pna_output/strap_end.VSS.vpad
TEC_RISCV/MMU/resultados/mem_outside/be/scripts/be/icc_setup.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/scripts/common_setup.tcl
TEC_RISCV/MMU/resultados/mem_outside/be/source/controlador.sdc
TEC_RISCV/MMU/resultados/mem_outside/be/source/controlador.v
TEC_RISCV/MMU/resultados/mem_outside/fe/db/controlador.sdc
TEC_RISCV/MMU/resultados/mem_outside/fe/db/controlador.v
TEC_RISCV/MMU/resultados/mem_outside/fe/scripts/controlador.tcl
TEC_RISCV/MMU/resultados/mem_outside/fe/scripts/controlador_constraint.tcl
TEC_RISCV/MMU/resultados/mem_outside/fe/sources/bus_fsm.sv
TEC_RISCV/MMU/resultados/mem_outside/fe/sources/controlador.sv
TEC_RISCV/MMU/resultados/mem_outside/fe/sources/core_fsm.sv
TEC_RISCV/MMU/resultados/mem_outside/fe/sources/error_handler.sv
TEC_RISCV/MMU/resultados/mem_outside/fe/sources/fifo.sv
TEC_RISCV/MMU/resultados/mem_outside/fe/sources/mem_sgnl_gen.sv
TEC_RISCV/synopsys_custom/bookmarks.xml
TEC_RISCV/synopsys_custom/deOLPPresets.xml
TEC_RISCV/synopsys_custom/favorites.xml
TEC_RISCV/synopsys_custom/history.xml
TEC_RISCV/synopsys_custom/prefs.xml
TEC_RISCV/synopsys_custom/workspaces.xml
test_env/core_spi_uart/.fsm.sch.verilog.xml
test_env/core_spi_uart/synopsys_custom/deOLPPresets.xml
test_env/core_spi_uart/synopsys_custom/history.xml
test_env/core_spi_uart/synopsys_custom/prefs.xml
test_env/core_spi_uart/synopsys_custom/workspaces.xml
test_env/core_spi_uart/urgReport/session.xml
test_env/uvm_alu/urgReport/session.xml
test_env/uvm_core/src/.fsm.sch.verilog.xml
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'         # ? debería imprimir NADA
[cmata@redhat003 vector_multicore_siwa]$ 
```

## 2025-07-23 14:36:00

```bash
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'   # ? no debe imprimir nada
"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
[cmata@redhat003 vector_multicore_siwa]$ .git/hooks/pre-commit
bash: .git/hooks/pre-commit: No such file or directory
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'   # ? no debe imprimir nada
"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
[cmata@redhat003 vector_multicore_siwa]$ # elimina SOLO del índice (-r: recursivo, --cached: deja los ficheros en tu disco)
[cmata@redhat003 vector_multicore_siwa]$ git rm -r --cached -- "TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
fatal: pathspec 'TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos' did not match any files
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # confirma el cambio
[cmata@redhat003 vector_multicore_siwa]$ git commit -m "chore: remove duplicate folder with space/UTF-8 accent (Windows safe)"
On branch fix/windows-invalid-path
Your branch is up to date with 'origin/fix/windows-invalid-path'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	TEC_RISCV/BUS/FG_KIT/.synopsys_dc.setup
	TEC_RISCV/BUS/FG_KIT_GATE_LEVEL/.synopsys_dc.setup
	TEC_RISCV/BUS/FG_KIT_GATE_LEVEL_EXPERIMENTO/.synopsys_dc.setup
	TEC_RISCV/BUS/INTERCONNECT_RISCV/csrc/
	TEC_RISCV/BUS/INTERCONNECT_RISCV/simv
	TEC_RISCV/BUS/INTERCONNECT_RISCV/ucli.key
	TEC_RISCV/BUS/INTERCONNECT_RISCV/vcd_file.vcd
	TEC_RISCV/BUS/POWER_AREA_KIT/.synopsys_dc.setup
	TEC_RISCV/BUS/POWER_AREA_PARALLEL/.synopsys_dc.setup
	TEC_RISCV/BUS/POWER_AREA_SERIE/.synopsys_dc.setup
	TEC_RISCV/BUS/Test_Router/.synopsys_dve_rebuild.tcl
	TEC_RISCV/FIFO_Latches/.synopsys_dc.setup
	TEC_RISCV/FIFO_Latches/.synopsys_dve_rebuild.tcl
	TEC_RISCV/Integration/implement/
	TEC_RISCV/Interrupt_Handler/.synopsys_dve_rebuild.tcl
	TEC_RISCV/MBC/dual_program_test/csrc/
	TEC_RISCV/MBC/dual_program_test/simv
	TEC_RISCV/MBC/dual_program_test/ucli.key
	TEC_RISCV/SPI/dual_program_test/csrc/
	TEC_RISCV/SPI/dual_program_test/simv
	TEC_RISCV/SPI/dual_program_test/ucli.key
	TEC_RISCV/SPI/dual_program_test/verdiLog/
	TEC_RISCV/TOP/DVEfiles/
	TEC_RISCV/TOP/csrc/
	TEC_RISCV/TOP/simv
	TEC_RISCV/TOP/ucli.key
	TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/
	TEC_RISCV/TOP_PHY_PR/back_end/libs/
	TEC_RISCV/TOP_PHY_PR/front_end/libs/
	TEC_RISCV/TOP_PHY_PR/front_end/source/FIFO_Latches/.synopsys_dc.setup
	TEC_RISCV/TOP_PHY_PR/front_end/source/FIFO_Latches/.synopsys_dve_rebuild.tcl
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/DVEfiles/
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/csrc/
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/simv
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/ucli.key
	TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/
	TEC_RISCV/Top_Phy/front_end/source/FIFO_Latches/.synopsys_dc.setup
	TEC_RISCV/Top_Phy/front_end/source/FIFO_Latches/.synopsys_dve_rebuild.tcl
	cleanup_badchar.sh
	remove_trailing_space.sh
	test_env/core/.synopsys_dve_rebuild.tcl
	test_env/core/DVEfiles/
	test_env/core/csrc/
	test_env/core/results.txt
	test_env/core/simv
	test_env/core/temp.txt
	test_env/core/ucli.key
	test_env/core_spi_uart/.synopsys_dve_rebuild.tcl
	test_env/core_spi_uart/DVEfiles/
	test_env/core_spi_uart/csrc/
	test_env/core_spi_uart/results.txt
	test_env/core_spi_uart/simv
	test_env/core_spi_uart/temp.txt
	test_env/core_spi_uart/ucli.key
	test_env/core_spi_uart/verdiLog/
	test_env/regression/ALU/DVEfiles/
	test_env/regression/ALU/csrc/
	test_env/regression/ALU/dump.vcd
	test_env/regression/ALU/simv
	test_env/regression/ALU/ucli.key
	test_env/uvm_alu/DVEfiles/
	test_env/uvm_alu/csrc/
	test_env/uvm_alu/dump.vcd
	test_env/uvm_alu/simv
	test_env/uvm_alu/ucli.key
	test_env/uvm_bus/Ariel_code/DVEfiles/
	test_env/uvm_bus/Ariel_code/csrc/
	test_env/uvm_bus/Ariel_code/dump.vcd
	test_env/uvm_bus/Ariel_code/simv
	test_env/uvm_bus/Ariel_code/ucli.key
	test_env/uvm_core/src/csrc/
	test_env/uvm_core/src/salida.daidir/kdb.elab++/work.lib++/oh.etc/oh.rc
	test_env/uvm_core/src/salida.daidir/simv.kdb
	test_env/uvm_core/src/simv
	test_env/uvm_core/src/tb.vcd
	test_env/uvm_core/src/ucli.key
	test_env/uvm_core/src/verdiLog/
	test_env/uvm_core/support/temp.txt

nothing added to commit but untracked files present (use "git add" to track)
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ git push
Everything up-to-date
[cmata@redhat003 vector_multicore_siwa]$ git rm -r --cached -- "TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres mÃ³dulos" 
rm 'TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres mÃ³dulos'
[cmata@redhat003 vector_multicore_siwa]$ git status
On branch fix/windows-invalid-path
Your branch is up to date with 'origin/fix/windows-invalid-path'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	deleted:    "TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	TEC_RISCV/BUS/FG_KIT/.synopsys_dc.setup
	TEC_RISCV/BUS/FG_KIT_GATE_LEVEL/.synopsys_dc.setup
	TEC_RISCV/BUS/FG_KIT_GATE_LEVEL_EXPERIMENTO/.synopsys_dc.setup
	TEC_RISCV/BUS/INTERCONNECT_RISCV/csrc/
	TEC_RISCV/BUS/INTERCONNECT_RISCV/simv
	TEC_RISCV/BUS/INTERCONNECT_RISCV/ucli.key
	TEC_RISCV/BUS/INTERCONNECT_RISCV/vcd_file.vcd
	TEC_RISCV/BUS/POWER_AREA_KIT/.synopsys_dc.setup
	TEC_RISCV/BUS/POWER_AREA_PARALLEL/.synopsys_dc.setup
	TEC_RISCV/BUS/POWER_AREA_SERIE/.synopsys_dc.setup
	TEC_RISCV/BUS/Test_Router/.synopsys_dve_rebuild.tcl
	TEC_RISCV/FIFO_Latches/.synopsys_dc.setup
	TEC_RISCV/FIFO_Latches/.synopsys_dve_rebuild.tcl
	TEC_RISCV/Integration/implement/
	TEC_RISCV/Interrupt_Handler/.synopsys_dve_rebuild.tcl
	TEC_RISCV/MBC/dual_program_test/csrc/
	TEC_RISCV/MBC/dual_program_test/simv
	TEC_RISCV/MBC/dual_program_test/ucli.key
	TEC_RISCV/SPI/dual_program_test/csrc/
	TEC_RISCV/SPI/dual_program_test/simv
	TEC_RISCV/SPI/dual_program_test/ucli.key
	TEC_RISCV/SPI/dual_program_test/verdiLog/
	TEC_RISCV/TOP/DVEfiles/
	TEC_RISCV/TOP/csrc/
	TEC_RISCV/TOP/simv
	TEC_RISCV/TOP/ucli.key
	TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/
	TEC_RISCV/TOP_PHY_PR/back_end/libs/
	TEC_RISCV/TOP_PHY_PR/front_end/libs/
	"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
	TEC_RISCV/TOP_PHY_PR/front_end/source/FIFO_Latches/.synopsys_dc.setup
	TEC_RISCV/TOP_PHY_PR/front_end/source/FIFO_Latches/.synopsys_dve_rebuild.tcl
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/DVEfiles/
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/csrc/
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/simv
	TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/ucli.key
	TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/
	TEC_RISCV/Top_Phy/front_end/source/FIFO_Latches/.synopsys_dc.setup
	TEC_RISCV/Top_Phy/front_end/source/FIFO_Latches/.synopsys_dve_rebuild.tcl
	cleanup_badchar.sh
	remove_trailing_space.sh
	test_env/core/.synopsys_dve_rebuild.tcl
	test_env/core/DVEfiles/
	test_env/core/csrc/
	test_env/core/results.txt
	test_env/core/simv
	test_env/core/temp.txt
	test_env/core/ucli.key
	test_env/core_spi_uart/.synopsys_dve_rebuild.tcl
	test_env/core_spi_uart/DVEfiles/
	test_env/core_spi_uart/csrc/
	test_env/core_spi_uart/results.txt
	test_env/core_spi_uart/simv
	test_env/core_spi_uart/temp.txt
	test_env/core_spi_uart/ucli.key
	test_env/core_spi_uart/verdiLog/
	test_env/regression/ALU/DVEfiles/
	test_env/regression/ALU/csrc/
	test_env/regression/ALU/dump.vcd
	test_env/regression/ALU/simv
	test_env/regression/ALU/ucli.key
	test_env/uvm_alu/DVEfiles/
	test_env/uvm_alu/csrc/
	test_env/uvm_alu/dump.vcd
	test_env/uvm_alu/simv
	test_env/uvm_alu/ucli.key
	test_env/uvm_bus/Ariel_code/DVEfiles/
	test_env/uvm_bus/Ariel_code/csrc/
	test_env/uvm_bus/Ariel_code/dump.vcd
	test_env/uvm_bus/Ariel_code/simv
	test_env/uvm_bus/Ariel_code/ucli.key
	test_env/uvm_core/src/csrc/
	test_env/uvm_core/src/salida.daidir/kdb.elab++/work.lib++/oh.etc/oh.rc
	test_env/uvm_core/src/salida.daidir/simv.kdb
	test_env/uvm_core/src/simv
	test_env/uvm_core/src/tb.vcd
	test_env/uvm_core/src/ucli.key
	test_env/uvm_core/src/verdiLog/
	test_env/uvm_core/support/temp.txt

[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'   # ? no debe imprimir nada
[cmata@redhat003 vector_multicore_siwa]$ git rm -r --cached -- "TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
fatal: pathspec 'TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos' did not match any files
[cmata@redhat003 vector_multicore_siwa]$ git rm -r --cached -- "TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres mÃ³dulos" 
fatal: pathspec 'TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres mÃ³dulos' did not match any files
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'   # ? no debe imprimir nada
[cmata@redhat003 vector_multicore_siwa]$ 
```

## 2025-07-23 14:22:00

```bash
 mode 100644 test_env/uvm_core/src/simv.daidir/vce.sdb
 delete mode 100755 test_env/uvm_core/src/simv.daidir/vcs_rebuild
 delete mode 100644 test_env/uvm_core/src/simv.daidir/vcselab_master_hsim_virtintf_info.dat
 delete mode 100644 test_env/uvm_core/src/simv.daidir/vcselab_misc_hsim_merge.sdb
 delete mode 100644 test_env/uvm_core/src/simv.daidir/vcselab_misc_tCEYNb
 delete mode 100644 test_env/uvm_core/src/simv.daidir/vcselab_misc_vpdnodenums
 delete mode 100644 test_env/uvm_core/src/verdi_config_file
 delete mode 100644 test_env/uvm_core/support/temp.txt
[cmata@redhat003 vector_multicore_siwa]$ git push
Enumerating objects: 45, done.
Counting objects: 100% (45/45), done.
Delta compression using up to 24 threads
Compressing objects: 100% (23/23), done.
Writing objects: 100% (23/23), 1.80 KiB | 264.00 KiB/s, done.
Total 23 (delta 20), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (20/20), completed with 20 local objects.
To github.com:rmolina44tec/vector_multicore_siwa.git
   06278e7..920c533  fix/windows-invalid-path -> fix/windows-invalid-path
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ git status
On branch fix/windows-invalid-path
Your branch is up to date with 'origin/fix/windows-invalid-path'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   test_env/core_spi_uart/.fsm.sch.verilog.xml
	modified:   test_env/core_spi_uart/Metrics_Reports/Metrics_Report_test.txt
	modified:   test_env/core_spi_uart/mem_model.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	cleanup_badchar.sh
	remove_trailing_space.sh

no changes added to commit (use "git add" and/or "git commit -a")
[cmata@redhat003 vector_multicore_siwa]$ # A) ¿se sigue trackeando algo que esté ignorado?  -> debe quedar vacío
[cmata@redhat003 vector_multicore_siwa]$ git ls-files -ci --exclude-standard
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # B) ¿existe alguna ruta con espacio o ':' al final? -> vacío también
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'
"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
[cmata@redhat003 vector_multicore_siwa]$ git mv "TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres mÃ³dulos" TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres_modulos
fatal: destination exists, source=TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres mÃ³dulos, destination=TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres_modulos
[cmata@redhat003 vector_multicore_siwa]$ 
```

## 2025-07-23 14:09:00

``` bash
cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$' | while read -r p; do
>   printf ' ? %s\n' "$(printf '%q' "$p")"
> done
 ? \"TEC_RISCV/ALU/Nombres\ m\\303\\203\\302\\263dulos\"
 ? \"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres\ m\\303\\203\\302\\263dulos\"
 ? \"TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres\ m\\303\\203\\302\\263dulos\"
[cmata@redhat003 vector_multicore_siwa]$ git mv TEC_RISCV/ALU/Nombres\ mÃ³dulos TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres_modulos
[cmata@redhat003 vector_multicore_siwa]$ git mv TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres\ mÃ³dulos        TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres_modulos
[cmata@redhat003 vector_multicore_siwa]$ git status   # debería mostrar los tres R 100% ?  Nombres_modulos
On branch fix/windows-invalid-path
Your branch is up to date with 'origin/fix/windows-invalid-path'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	renamed:    "TEC_RISCV/ALU/Nombres m\303\203\302\263dulos" -> TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres_modulos
	renamed:    "TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres m\303\203\302\263dulos" -> TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres_modulos
	renamed:    test_env/uvm_core/support/HOLA MUNDO -> test_env/uvm_core/support/HOLA_MUNDO

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   test_env/core_spi_uart/.fsm.sch.verilog.xml
	modified:   test_env/core_spi_uart/Metrics_Reports/Metrics_Report_test.txt
	modified:   test_env/core_spi_uart/mem_model.txt
	modified:   test_env/core_spi_uart/novas.conf
	modified:   test_env/core_spi_uart/results.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	TEC_RISCV/MBC/dual_program_test/csrc/
	TEC_RISCV/MBC/dual_program_test/simv
	TEC_RISCV/MBC/dual_program_test/simv.daidir/
	TEC_RISCV/MBC/dual_program_test/verdi_config_file
	TEC_RISCV/SPI/dual_program_test/csrc/
	TEC_RISCV/SPI/dual_program_test/novas.conf
	TEC_RISCV/SPI/dual_program_test/simv
	TEC_RISCV/SPI/dual_program_test/simv.daidir/
	TEC_RISCV/SPI/dual_program_test/verdi_config_file
	cleanup_badchar.sh
	remove_trailing_space.sh
	test_env/core_spi_uart/csrc/
	test_env/core_spi_uart/simv
	test_env/core_spi_uart/simv.daidir/
	test_env/core_spi_uart/temp.txt

[cmata@redhat003 vector_multicore_siwa]$ git commit -m "Rename last paths: remove space/UTF-8 accent (Windows safe)"
[fix/windows-invalid-path 20c0ebe] Rename last paths: remove space/UTF-8 accent (Windows safe)
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename "TEC_RISCV/ALU/Nombres m\303\203\302\263dulos" => TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres_modulos (100%)
 rename "TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres m\303\203\302\263dulos" => TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres_modulos (100%)
 rename test_env/uvm_core/support/{HOLA MUNDO => HOLA_MUNDO} (100%)
[cmata@redhat003 vector_multicore_siwa]$ git push
Enumerating objects: 27, done.
Counting objects: 100% (26/26), done.
Delta compression using up to 24 threads
Compressing objects: 100% (15/15), done.
Writing objects: 100% (15/15), 2.09 KiB | 142.00 KiB/s, done.
Total 15 (delta 12), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (12/12), completed with 11 local objects.
To github.com:rmolina44tec/vector_multicore_siwa.git
   d1fe669..20c0ebe  fix/windows-invalid-path -> fix/windows-invalid-path
[cmata@redhat003 vector_multicore_siwa]$ # A) Nada trackeado que esté ahora en .gitignore
[cmata@redhat003 vector_multicore_siwa]$ git ls-files -ci --exclude-standard
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # B) Ninguna ruta con espacio o ':' al final
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'
"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
[cmata@redhat003 vector_multicore_siwa]$ 
```

## 2025-07-23 14:06:00

```bash
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$' | while read -r p; do
>   printf ' ? %s\n' "$(printf '%q' "$p")"
> done
 ? \"TEC_RISCV/ALU/Nombres\ m\\303\\203\\302\\263dulos\"
 ? \"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres\ m\\303\\203\\302\\263dulos\"
 ? \"TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres\ m\\303\\203\\302\\263dulos\"
[cmata@redhat003 vector_multicore_siwa]$ 
```

<!--CCP_SEPARATOR-->
## 2025-07-23 13:57:00
```bash
mata@redhat003 vector_multicore_siwa]$ # 1. ¿Queda algo trackeado que ahora esté ignorado?
[cmata@redhat003 vector_multicore_siwa]$ git ls-files -ci --exclude-standard  # ? debería imprimir nada
TEC_RISCV/MMU/resultados/mem_outside/be/source/controlador.saif
TEC_RISCV/MMU/resultados/mem_outside/fe/sources/controlador.saif
test_env/regression/ALU/simv.vdb/.cmoptions
test_env/regression/ALU/simv.vdb/.mode64
test_env/regression/ALU/simv.vdb/.vdb_version
test_env/regression/ALU/simv.vdb/snps/coverage/db/.cm_totalPaths
test_env/regression/ALU/simv.vdb/snps/coverage/db/auxiliary/dve_debug.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/auxiliary/verilog.instance_parameters.txt
test_env/regression/ALU/simv.vdb/snps/coverage/db/auxiliary/verilog.sourceinfo.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/design/verilog.design.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/assert.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/branch.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/cond.verilog.exclude.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/cond.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/fsm.verilog.exclude.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/fsm.verilog.generated_config.txt
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/fsm.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/line.verilog.exclude.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/line.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/path.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/shape/tgl.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/assert.verilog.apc.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/assert.verilog.data.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/assert.verilog.shape.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/branch.verilog.data.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/cond.verilog.data.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/fsm.verilog.data.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/line.verilog.data.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/siminfo.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/testbench.cumulative.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/testbench.inst.xml
test_env/regression/ALU/simv.vdb/snps/coverage/db/testdata/test/tgl.verilog.data.xml
test_env/uvm_alu/simv.vdb/.cmoptions
test_env/uvm_alu/simv.vdb/.mode64
test_env/uvm_alu/simv.vdb/.vdb_version
test_env/uvm_alu/simv.vdb/snps/coverage/db/.cm_totalPaths
test_env/uvm_alu/simv.vdb/snps/coverage/db/auxiliary/dve_debug.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/auxiliary/verilog.instance_parameters.txt
test_env/uvm_alu/simv.vdb/snps/coverage/db/auxiliary/verilog.sourceinfo.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/design/verilog.design.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/shape/assert.verilog.shape.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/shape/cond.verilog.exclude.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/shape/fsm.verilog.exclude.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/shape/fsm.verilog.generated_config.txt
test_env/uvm_alu/simv.vdb/snps/coverage/db/shape/line.verilog.exclude.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/shape/line.verilog.shape.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/testdata/test/assert.verilog.data.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/testdata/test/assert.verilog.shape.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/testdata/test/line.verilog.data.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/testdata/test/siminfo.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/testdata/test/testbench.cumulative.xml
test_env/uvm_alu/simv.vdb/snps/coverage/db/testdata/test/testbench.inst.xml
test_env/uvm_core/src/salida.vdb/.cmoptions
test_env/uvm_core/src/salida.vdb/.mode64
test_env/uvm_core/src/salida.vdb/.vdb_version
test_env/uvm_core/src/salida.vdb/snps/coverage/db/auxiliary/dve_debug.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/auxiliary/vcmArguments.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/auxiliary/verilog.instance_parameters.txt
test_env/uvm_core/src/salida.vdb/snps/coverage/db/auxiliary/verilog.sourceinfo.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/common/assert.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/design/verilog.compact_hier_file.txt
test_env/uvm_core/src/salida.vdb/snps/coverage/db/design/verilog.design.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/assert.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/branch.verilog.exclude.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/branch.verilog.info.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/branch.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/cond.verilog.exclude.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/cond.verilog.info.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/cond.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/fsm.verilog.exclude.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/fsm.verilog.generated_config.txt
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/fsm.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/line.verilog.exclude.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/line.verilog.info.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/line.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/tgl.verilog.info.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/shape/tgl.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/assert.verilog.apc.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/assert.verilog.data.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/assert.verilog.shape.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/branch.verilog.data.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/cond.verilog.data.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/fsm.verilog.data.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/line.verilog.data.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/siminfo.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/testbench.cumulative.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/testbench.inst.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/tgl.verilog.data.xml
test_env/uvm_core/src/salida.vdb/snps/coverage/db/testdata/test/vcmArguments.xml
test_env/uvm_core/src/simv.vdb/.cmoptions
test_env/uvm_core/src/simv.vdb/.mode64
test_env/uvm_core/src/simv.vdb/.vdb_version
test_env/uvm_core/src/simv.vdb/snps/coverage/db/auxiliary/dve_debug.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/auxiliary/vcmArguments.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/auxiliary/verilog.instance_parameters.txt
test_env/uvm_core/src/simv.vdb/snps/coverage/db/auxiliary/verilog.sourceinfo.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/common/assert.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/design/verilog.compact_hier_file.txt
test_env/uvm_core/src/simv.vdb/snps/coverage/db/design/verilog.design.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/assert.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/branch.verilog.exclude.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/branch.verilog.info.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/branch.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/cond.verilog.exclude.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/cond.verilog.info.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/cond.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/fsm.verilog.exclude.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/fsm.verilog.generated_config.txt
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/fsm.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/line.verilog.exclude.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/line.verilog.info.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/line.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/tgl.verilog.info.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/shape/tgl.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/testdata/test/assert.verilog.data.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/testdata/test/assert.verilog.shape.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/testdata/test/siminfo.xml
test_env/uvm_core/src/simv.vdb/snps/coverage/db/testdata/test/vcmArguments.xml
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # 2. ¿Alguna ruta con caracteres ilegales para Windows?
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E ' |:$'        # ? tampoco debería imprimir
"TEC_RISCV/ALU/Nombres m\303\203\302\263dulos"
"TEC_RISCV/TOP_PHY_PR/front_end/source/ALU/Nombres m\303\203\302\263dulos"
"TEC_RISCV/Top_Phy/front_end/source/ALU/Nombres m\303\203\302\263dulos"
test_env/uvm_core/support/HOLA MUNDO
test_env/uvm_core/support/Package Control/1_reloader.py
test_env/uvm_core/support/Package Control/2_bootstrap.py
test_env/uvm_core/support/Package Control/Default.sublime-commands
test_env/uvm_core/support/Package Control/Main.sublime-menu
test_env/uvm_core/support/Package Control/Package Control.py
test_env/uvm_core/support/Package Control/Package Control.sublime-settings
test_env/uvm_core/support/Package Control/dependencies.json
test_env/uvm_core/support/Package Control/example-channel.json
test_env/uvm_core/support/Package Control/example-dependencies.json
test_env/uvm_core/support/Package Control/example-messages.json
test_env/uvm_core/support/Package Control/example-repository.json
test_env/uvm_core/support/Package Control/messages.json
test_env/uvm_core/support/Package Control/messages/1.3.0.txt
test_env/uvm_core/support/Package Control/messages/1.6.0.txt
test_env/uvm_core/support/Package Control/messages/2.0.0.txt
test_env/uvm_core/support/Package Control/messages/3.0.0.txt
test_env/uvm_core/support/Package Control/messages/3.1.0.txt
test_env/uvm_core/support/Package Control/messages/3.2.0.txt
test_env/uvm_core/support/Package Control/messages/3.4.0.txt
test_env/uvm_core/support/Package Control/package-metadata.json
test_env/uvm_core/support/Package Control/package_control/__init__.py
test_env/uvm_core/support/Package Control/package_control/automatic_upgrader.py
test_env/uvm_core/support/Package Control/package_control/bootstrap.py
test_env/uvm_core/support/Package Control/package_control/ca_certs.py
test_env/uvm_core/support/Package Control/package_control/cache.py
test_env/uvm_core/support/Package Control/package_control/clear_directory.py
test_env/uvm_core/support/Package Control/package_control/clients/__init__.py
test_env/uvm_core/support/Package Control/package_control/clients/bitbucket_client.py
test_env/uvm_core/support/Package Control/package_control/clients/client_exception.py
test_env/uvm_core/support/Package Control/package_control/clients/github_client.py
test_env/uvm_core/support/Package Control/package_control/clients/gitlab_client.py
test_env/uvm_core/support/Package Control/package_control/clients/json_api_client.py
test_env/uvm_core/support/Package Control/package_control/clients/readme_client.py
test_env/uvm_core/support/Package Control/package_control/cmd.py
test_env/uvm_core/support/Package Control/package_control/commands/__init__.py
test_env/uvm_core/support/Package Control/package_control/commands/add_channel_command.py
test_env/uvm_core/support/Package Control/package_control/commands/add_repository_command.py
test_env/uvm_core/support/Package Control/package_control/commands/advanced_install_package_command.py
test_env/uvm_core/support/Package Control/package_control/commands/create_package_command.py
test_env/uvm_core/support/Package Control/package_control/commands/disable_package_command.py
test_env/uvm_core/support/Package Control/package_control/commands/discover_packages_command.py
test_env/uvm_core/support/Package Control/package_control/commands/enable_package_command.py
test_env/uvm_core/support/Package Control/package_control/commands/existing_packages_command.py
test_env/uvm_core/support/Package Control/package_control/commands/install_local_dependency_command.py
test_env/uvm_core/support/Package Control/package_control/commands/install_package_command.py
test_env/uvm_core/support/Package Control/package_control/commands/list_packages_command.py
test_env/uvm_core/support/Package Control/package_control/commands/list_unmanaged_packages_command.py
test_env/uvm_core/support/Package Control/package_control/commands/package_control_disable_debug_mode_command.py
test_env/uvm_core/support/Package Control/package_control/commands/package_control_edit_settings_command.py
test_env/uvm_core/support/Package Control/package_control/commands/package_control_enable_debug_mode_command.py
test_env/uvm_core/support/Package Control/package_control/commands/package_control_insert_command.py
test_env/uvm_core/support/Package Control/package_control/commands/package_control_open_default_settings_command.py
test_env/uvm_core/support/Package Control/package_control/commands/package_control_open_user_settings_command.py
test_env/uvm_core/support/Package Control/package_control/commands/package_control_tests_command.py
test_env/uvm_core/support/Package Control/package_control/commands/remove_channel_command.py
test_env/uvm_core/support/Package Control/package_control/commands/remove_package_command.py
test_env/uvm_core/support/Package Control/package_control/commands/remove_repository_command.py
test_env/uvm_core/support/Package Control/package_control/commands/satisfy_dependencies_command.py
test_env/uvm_core/support/Package Control/package_control/commands/upgrade_all_packages_command.py
test_env/uvm_core/support/Package Control/package_control/commands/upgrade_package_command.py
test_env/uvm_core/support/Package Control/package_control/console_write.py
test_env/uvm_core/support/Package Control/package_control/deps/__init__.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/__init__.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/_errors.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/_inet.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/_int.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/_iri.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/_ordereddict.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/_teletex_codec.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/_types.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/algos.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/cms.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/core.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/crl.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/csr.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/keys.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/ocsp.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/parser.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/pdf.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/pem.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/pkcs12.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/tsp.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/util.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/version.py
test_env/uvm_core/support/Package Control/package_control/deps/asn1crypto/x509.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/__init__.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_asn1.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_asymmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_cipher_suites.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_ecdsa.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_errors.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_ffi.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_int.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_linux_bsd/__init__.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_linux_bsd/trust_list.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/__init__.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/_common_crypto.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/_common_crypto_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/_core_foundation.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/_core_foundation_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/_security.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/_security_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/asymmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/symmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/tls.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/trust_list.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_mac/util.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/__init__.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/_libcrypto.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/_libcrypto_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/_libssl.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/_libssl_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/asymmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/symmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/tls.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_openssl/util.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_pkcs1.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_pkcs12.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_pkcs5.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_rand.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_tls.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_types.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/__init__.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_advapi32.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_advapi32_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_cng.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_cng_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_crypt32.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_crypt32_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_decode.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_kernel32.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_kernel32_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_secur32.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/_secur32_ctypes.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/asymmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/symmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/tls.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/trust_list.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/_win/util.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/asymmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/errors.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/kdf.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/keys.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/symmetric.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/tls.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/trust_list.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/util.py
test_env/uvm_core/support/Package Control/package_control/deps/oscrypto/version.py
test_env/uvm_core/support/Package Control/package_control/download_manager.py
test_env/uvm_core/support/Package Control/package_control/downloaders/__init__.py
test_env/uvm_core/support/Package Control/package_control/downloaders/background_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/binary_not_found_error.py
test_env/uvm_core/support/Package Control/package_control/downloaders/caching_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/cli_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/curl_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/decoding_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/downloader_exception.py
test_env/uvm_core/support/Package Control/package_control/downloaders/http_error.py
test_env/uvm_core/support/Package Control/package_control/downloaders/limiting_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/non_clean_exit_error.py
test_env/uvm_core/support/Package Control/package_control/downloaders/non_http_error.py
test_env/uvm_core/support/Package Control/package_control/downloaders/oscrypto_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/oscrypto_downloader_exception.py
test_env/uvm_core/support/Package Control/package_control/downloaders/rate_limit_exception.py
test_env/uvm_core/support/Package Control/package_control/downloaders/urllib_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/wget_downloader.py
test_env/uvm_core/support/Package Control/package_control/downloaders/win_downloader_exception.py
test_env/uvm_core/support/Package Control/package_control/downloaders/wininet_downloader.py
test_env/uvm_core/support/Package Control/package_control/events.py
test_env/uvm_core/support/Package Control/package_control/file_not_found_error.py
test_env/uvm_core/support/Package Control/package_control/http/__init__.py
test_env/uvm_core/support/Package Control/package_control/http/debuggable_http_connection.py
test_env/uvm_core/support/Package Control/package_control/http/debuggable_http_handler.py
test_env/uvm_core/support/Package Control/package_control/http/debuggable_http_response.py
test_env/uvm_core/support/Package Control/package_control/http/debuggable_https_response.py
test_env/uvm_core/support/Package Control/package_control/http/invalid_certificate_exception.py
test_env/uvm_core/support/Package Control/package_control/http/persistent_handler.py
test_env/uvm_core/support/Package Control/package_control/http/validating_https_connection.py
test_env/uvm_core/support/Package Control/package_control/http/validating_https_handler.py
test_env/uvm_core/support/Package Control/package_control/http_cache.py
test_env/uvm_core/support/Package Control/package_control/loader.py
test_env/uvm_core/support/Package Control/package_control/open_compat.py
test_env/uvm_core/support/Package Control/package_control/package_cleanup.py
test_env/uvm_core/support/Package Control/package_control/package_creator.py
test_env/uvm_core/support/Package Control/package_control/package_disabler.py
test_env/uvm_core/support/Package Control/package_control/package_installer.py
test_env/uvm_core/support/Package Control/package_control/package_io.py
test_env/uvm_core/support/Package Control/package_control/package_manager.py
test_env/uvm_core/support/Package Control/package_control/package_renamer.py
test_env/uvm_core/support/Package Control/package_control/processes.py
test_env/uvm_core/support/Package Control/package_control/providers/__init__.py
test_env/uvm_core/support/Package Control/package_control/providers/bitbucket_repository_provider.py
test_env/uvm_core/support/Package Control/package_control/providers/channel_provider.py
test_env/uvm_core/support/Package Control/package_control/providers/github_repository_provider.py
test_env/uvm_core/support/Package Control/package_control/providers/github_user_provider.py
test_env/uvm_core/support/Package Control/package_control/providers/gitlab_repository_provider.py
test_env/uvm_core/support/Package Control/package_control/providers/gitlab_user_provider.py
test_env/uvm_core/support/Package Control/package_control/providers/provider_exception.py
test_env/uvm_core/support/Package Control/package_control/providers/release_selector.py
test_env/uvm_core/support/Package Control/package_control/providers/repository_provider.py
test_env/uvm_core/support/Package Control/package_control/providers/schema_compat.py
test_env/uvm_core/support/Package Control/package_control/semver.py
test_env/uvm_core/support/Package Control/package_control/settings.py
test_env/uvm_core/support/Package Control/package_control/show_error.py
test_env/uvm_core/support/Package Control/package_control/show_quick_panel.py
test_env/uvm_core/support/Package Control/package_control/sys_path.py
test_env/uvm_core/support/Package Control/package_control/tests/__init__.py
test_env/uvm_core/support/Package Control/package_control/tests/clients.py
test_env/uvm_core/support/Package Control/package_control/tests/providers.py
test_env/uvm_core/support/Package Control/package_control/text.py
test_env/uvm_core/support/Package Control/package_control/thread_progress.py
test_env/uvm_core/support/Package Control/package_control/unicode.py
test_env/uvm_core/support/Package Control/package_control/upgraders/__init__.py
test_env/uvm_core/support/Package Control/package_control/upgraders/git_upgrader.py
test_env/uvm_core/support/Package Control/package_control/upgraders/hg_upgrader.py
test_env/uvm_core/support/Package Control/package_control/upgraders/vcs_upgrader.py
test_env/uvm_core/support/Package Control/package_control/versions.py
test_env/uvm_core/support/Package Control/readme.md
[cmata@redhat003 vector_multicore_siwa]$ 
```


## 2025-07-23 13:39:00

```bash
ata@redhat003 vector_multicore_siwa]$ vim .gitignore 
[cmata@redhat003 vector_multicore_siwa]$ # Añade el .gitignore al índice
[cmata@redhat003 vector_multicore_siwa]$ git add .gitignore
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # Saca del tracking TODO lo que ahora coincida con el .gitignore
[cmata@redhat003 vector_multicore_siwa]$ git rm -r --cached $(git ls-files -i --exclude-standard)
fatal: ls-files -i must be used with either -o or -c
fatal: No pathspec was given. Which files should I remove?
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # Confirma la limpieza
[cmata@redhat003 vector_multicore_siwa]$ git commit -m "Add global Synopsys .gitignore; stop tracking generated artifacts"
[fix/windows-invalid-path 747ac39] Add global Synopsys .gitignore; stop tracking generated artifacts
 1 file changed, 63 insertions(+), 12 deletions(-)
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # Sube cambios
[cmata@redhat003 vector_multicore_siwa]$ git push -u origin HEAD   # (o la rama donde estés)
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 24 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 820 bytes | 164.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:rmolina44tec/vector_multicore_siwa.git
   7bec3f2..747ac39  HEAD -> fix/windows-invalid-path
branch 'fix/windows-invalid-path' set up to track 'origin/fix/windows-invalid-path'.
[cmata@redhat003 vector_multicore_siwa]$ # No debería mostrar artefactos nuevos
[cmata@redhat003 vector_multicore_siwa]$ git status

On branch fix/windows-invalid-path
Your branch is up to date with 'origin/fix/windows-invalid-path'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   test_env/core_spi_uart/.fsm.sch.verilog.xml
	modified:   test_env/core_spi_uart/Metrics_Reports/Metrics_Report_test.txt
	modified:   test_env/core_spi_uart/mem_model.txt
	modified:   test_env/core_spi_uart/novas.conf
	modified:   test_env/core_spi_uart/novas.rc
	modified:   test_env/core_spi_uart/results.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	TEC_RISCV/MBC/dual_program_test/csrc/
	TEC_RISCV/MBC/dual_program_test/simv
	TEC_RISCV/MBC/dual_program_test/simv.daidir/
	TEC_RISCV/MBC/dual_program_test/verdi_config_file
	TEC_RISCV/SPI/dual_program_test/csrc/
	TEC_RISCV/SPI/dual_program_test/novas.conf
	TEC_RISCV/SPI/dual_program_test/simv
	TEC_RISCV/SPI/dual_program_test/simv.daidir/
	TEC_RISCV/SPI/dual_program_test/verdi_config_file
	cleanup_badchar.sh
	remove_trailing_space.sh
	test_env/core_spi_uart/csrc/
	test_env/core_spi_uart/simv
	test_env/core_spi_uart/simv.daidir/
	test_env/core_spi_uart/simv.vdb/
	test_env/core_spi_uart/temp.txt

no changes added to commit (use "git add" and/or "git commit -a")
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ # Asegúrate de que no queden archivos Milkyway ni .vpd/.fsdb en el historial actual
[cmata@redhat003 vector_multicore_siwa]$ git ls-files | grep -E '\.mw/|\.vpd$|\.fsdb$' || echo "??  Sin artefactos restantes"
TEC_RISCV/FIFO_Latches/inter.vpd
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/.lock
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/lib
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/lib_1
TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/lib_bck
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/.lock
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/lib
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/lib_1
TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/lib_bck
TEC_RISCV/TOP/inter.vpd
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/.lock
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_1
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_2
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_3
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_4
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_5
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_6
TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_bck
TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/.lock
TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/lib
TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/lib_1
TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/lib_bck
TEC_RISCV/TOP_PHY_PR/front_end/libs/Tec_Riscv_pads.mw/.lock
TEC_RISCV/TOP_PHY_PR/front_end/libs/Tec_Riscv_pads.mw/lib
TEC_RISCV/TOP_PHY_PR/front_end/libs/Tec_Riscv_pads.mw/lib_1
TEC_RISCV/TOP_PHY_PR/front_end/libs/Tec_Riscv_pads.mw/lib_bck
TEC_RISCV/TOP_PHY_PR/front_end/source/FIFO_Latches/inter.vpd
TEC_RISCV/TOP_PHY_PR/front_end/source/TOP/inter.vpd
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/.lock
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_1
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_2
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_3
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_4
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_5
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_6
TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/lib_bck
TEC_RISCV/Top_Phy/front_end/source/FIFO_Latches/inter.vpd
test_env/core/inter.vpd
test_env/core_spi_uart/inter.vpd
test_env/regression/ALU/dump.vcd.vpd
test_env/uvm_alu/inter.vpd
test_env/uvm_bus/Ariel_code/dump.vcd.vpd
test_env/uvm_core/src/inter_1.fsdb
[cmata@redhat003 vector_multicore_siwa]$ 
[cmata@redhat003 vector_multicore_siwa]$ 
```

## 2025-07-23 13:09:03

```bash
 done
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_22
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_23
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_24
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_25
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_26
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_27
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_28
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_3
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_30
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_4
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB:1_5
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_22
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_23
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_24
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_25
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_26
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_27
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_28
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_3
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_32
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_4
BADCHAR      TEC_RISCV/MMU/resultados/mem_inside/be/db/be/CMB/CMB.mw/CEL/CMB_routing:1_5
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/CMB:1
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/CMB:1_4
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_27
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_28
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_29
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_3
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_30
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_31
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_32
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_33
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:1_35
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_27
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_28
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_29
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_3
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_30
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_31
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_32
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_33
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:2_35
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_27
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_28
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_29
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_3
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_30
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_31
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_32
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_33
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador:3_35
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_27
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_28
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_29
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_3
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_30
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_31
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_32
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_33
BADCHAR      TEC_RISCV/MMU/resultados/mem_outside/be/db/be/controlador/controlador.mw/CEL/controlador_routing:1_37
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/CEL/XSPRAMLP_2048X32_M8P:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/FRAM/XSPRAMLP_2048X32_M8P:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1.lock
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_51
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_52
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_53
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_54
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_55
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_56
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_60
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_61_tmp@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_62_tmp@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_63_tmp@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_64_tmp@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_65_tmp@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_66_tmp@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_67_tmp@25955zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_69
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_70
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_71
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_72
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_73
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_74
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_75
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_76
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_77
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_78
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_79
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_80
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_81
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/clock_tree_placed:1_83
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_102
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_103
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_104
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_105
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_106
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_107
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_108
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_123
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_127
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_129
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_completed:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_102
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_103
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_104
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_105
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_106
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_107
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_108
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_113
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_114
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_115
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_123
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_129
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_134
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/design_routed_ends:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_31
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_33
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/first_preroute_std_cells:1_35
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_27
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends1:1_29
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_27
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/floorplan_ends:1_29
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_final:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_final:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_final:1_15
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_final:1_17
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_final:1_19
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_first:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_first:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_first:1_13
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_first:1_15
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_first:1_17
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_second:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_second:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_second:1_15
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_second:1_17
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_placement_second:1_19
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_placed:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_placed:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_placed:1_17
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_placed:1_19
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_placed:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_unplaced:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_unplaced:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_unplaced:1_11
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_unplaced:1_7
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pad_ring_unplaced:1_9
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pg_derived_ok:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pg_derived_ok:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pg_derived_ok:1_11
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pg_derived_ok:1_13
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pg_derived_ok:1_15
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_27
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_29
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy:1_31
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_29
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_31
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_blockage:1_33
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_vss_extra:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_vss_extra:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_vss_extra:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_vss_extra:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_vss_extra:1_31
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/power_rail_rdy_metal_vss_extra:1_33
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_51
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_52
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_53
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_54
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_55
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_56
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_58
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_60
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_63
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_65
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_ends1:1_67
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_51
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_52
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_53
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_54
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_55
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_56
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_58
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_60
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_63
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/powerplan_rail_ends:1_65
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pre_power:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pre_power:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/pre_power:1_9
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1.lock
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_102
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_103
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_104
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_105
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_106
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_106_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_106_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_107
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_107_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_107_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_108
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_108_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_108_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_109_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_109_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_110_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_110_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_111_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_111_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_112_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_112_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_113
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_114
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_114_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_114_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_115
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_115_tmp@21098zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_115_tmp@7025zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_119
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_123
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_124
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_125
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_75
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_76
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_77
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_78
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_79
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_80
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_81
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell:1_83
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_102
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_103
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_104
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_105
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_106
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_107
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_108
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_113
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_114
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_115
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_119
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_120
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_121
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/routed_cell_no_fill:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1@15375zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1@16518zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1@19213zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1@19795zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1@21935zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1@703zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1@7714zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_102
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_103
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_104
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_105
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_106
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_107
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_108
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_113
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_114
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_115
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_121
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_123_tmp@7714zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_125
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_127
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_127_tmp@21935zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_129_tmp@15375zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_129_tmp@16518zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_129_tmp@19213zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_129_tmp@19795zener
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_130
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_22
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_23
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_59
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_113
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_114
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_115
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_130
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_pad_filled:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_riscv_tec_pads:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_riscv_tec_pads:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/top_riscv_tec_pads:1_7
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/voltage_domains_created:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/voltage_domains_created:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/voltage_domains_created:1_17
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/voltage_domains_created:1_19
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/CEL/voltage_domains_created:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_106
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_107
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_108
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_127
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/design_completed:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_106
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_107
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_108
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_113
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_114
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_115
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_127
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_132
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_24
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_25
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top:1_61
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_109
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_110
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_111
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_112
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_113
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_114
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_115
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_132
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_20
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_21
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/FILL/top_pad_filled:1_57
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/clock_tree_placed:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/design_completed:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/design_routed_ends:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/design_routed_ends_lvs:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/design_routed_ends_lvs:1.lock
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/powerplan_ends1:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/routed_cell:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/routed_cell_lvs:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/routed_cell_lvs:1.lock
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/routed_cell_no_fill:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/top:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/top_lvs:1
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/top_lvs:1.lock
BADCHAR      TEC_RISCV/TOP_PHY_PR/back_end/libs/Tec_Riscv_pads.mw/err/top_pad_filled:1
BADCHAR      TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/CEL/XSPRAMLP_2048X32_M8P:1
BADCHAR      TEC_RISCV/Top_Phy/back_end/db/XSPRAMLP_2048X32_M8P_UPF_typ_1_80V_25C.mw/FRAM/XSPRAMLP_2048X32_M8P:1
[cmata@redhat003 vector_multicore_siwa]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-22 01:30:09

```bash
CPU time: .373 seconds to compile + .243 seconds to elab + .210 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP2_Full64; Runtime version R-2020.12-SP2_Full64;  Jun 22 01:29 2025
                5000  MBC0 -> 0
                5000  MBC1 -> 0
               25000  core-0  BOOT_DATA
               45000  MBC0 -> 4
               45000  MBC1 -> 4
               55000  MBC0 -> 6
               55000  MBC1 -> 6
              145000  core-0  END_BST
              175000  MBC0 -> 8
              185000  MBC0 -> 11
              195000  MBC0 -> 10
              205000  MBC0 -> 4
              215000  core-1  BOOT_DATA
              215000  MBC0 -> 6
              245000  MBC1 -> 8
              255000  MBC1 -> 11
              265000  MBC1 -> 10
              275000  MBC1 -> 4
              285000  MBC1 -> 6
              335000  core-1  END_BST
              365000  MBC1 -> 8
              375000  MBC1 -> 11
              385000  MBC1 -> 10
              395000  MBC1 -> 4
              405000  MBC1 -> 6
              655000  simulation finished
 called from file tb_mcb_dual.sv, line 148.
 at simulation time               655000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 655000 ps
CPU Time:      0.260 seconds;       Data structure size:   0.0Mb
Sun Jun 22 01:29:17 2025
[cmata@redhat003 dual_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-22 01:26:40

```bash
[cmata@redhat003 dual_program_test]$ ccp push ======================================
  Compilando y ejecutando testbench  source ./run_tb_mcb.sh 
                                     source ./run_tb_mcb.sh 
======================================
  Compilando y ejecutando testbench
  MBC
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Sun Jun 22 01:25:47 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_mcb_dual.sv'
Parsing design file '../../../TEC_RISCV/MBC/MBC_dual.sv'
Top Level Modules:
       tb_mcb_dual
TimeScale is 1 ns / 1 ps

Error-[ICSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 47
  Illegal combination of structural drivers.
  Variable spi is driven by multiple structural drivers.
  This variable is declared at
  ../../../TEC_RISCV/MBC/MBC_dual.sv, 47: logic spi;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 100: assign spi
  = (d_pop_g[61:60] == 2'b1);
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 94: assign spi
  = (d_pop_g[61:60] == 2'b1);


Error-[ICSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 48
  Illegal combination of structural drivers.
  Variable boot_end is driven by multiple structural drivers.
  This variable is declared at
  ../../../TEC_RISCV/MBC/MBC_dual.sv, 48: logic boot_end;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 101: assign 
  boot_end = (d_pop_g[59:57] == 3'd3);
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 95: assign 
  boot_end = (d_pop_g[59:57] == 3'd3);

1 warning
2 errors
CPU time: .238 seconds to compile
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
bash: ./simv: No such file or directory
[cmata@redhat003 dual_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-22 01:17:57

```bash
======================================
  Compilando y ejecutando testbench
  MBC
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Sun Jun 22 01:16:59 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_mcb_dual.sv'
Parsing design file '../../../TEC_RISCV/MBC/MBC_dual.sv'
Top Level Modules:
       tb_mcb_dual
TimeScale is 1 ns / 1 ps
Starting vcs inline pass...

2 modules and 0 UDP read.
recompiling module tb_mcb_dual
recompiling module mbc
Both modules done.
/mnt/vol_NFS_Pivot/rmolina_installation_files/tools/synopsys/vcs/R-2020.12-SP2/bin/vcs: line 33610: 965617 Segmentation fault      (core dumped) /bin/cfs_ident_exec -f  -o /idents_tapi.xml -o_SrcFile /src_files_c  > tapi_xml_writer.log
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -rdynamic  -Wl,-rpath=''/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/mnt/vol_NFS_Pivot/rmolina_installation_files/tools/synopsys/vcs/R-2020.12-SP2/linux64/lib -L/mnt/vol_NFS_Pivot/rmolina_installation_files/tools/synopsys/vcs/R-2020.12-SP2/linux64/lib  -Wl,-rpath-link=./  /usr/lib64/libnuma.so.1   objs/amcQw_d.o   _965460_archive_1.so  SIM_l.o      rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /mnt/vol_NFS_Pivot/rmolina_installation_files/tools/synopsys/vcs/R-2020.12-SP2/linux64/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /mnt/vol_NFS_Pivot/rmolina_installation_files/tools/synopsys/vcs/R-2020.12-SP2/linux64/lib/vcs_save_restore_new.o -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .398 seconds to compile + .344 seconds to elab + .200 seconds to link
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP2_Full64; Runtime version R-2020.12-SP2_Full64;  Jun 22 01:17 2025
                5000  MBC0 -> 0
                5000  MBC1 -> 0
               25000  core-0  BOOT_DATA
               45000  MBC0 -> 4
               45000  MBC1 -> 4
               55000  MBC0 -> 6
               55000  MBC1 -> 6
              145000  core-0  END_BST
              175000  MBC0 -> 8
              175000  MBC1 -> 8
              185000  MBC0 -> 11
              185000  MBC1 -> 11
              195000  MBC0 -> 10
              195000  MBC1 -> 10
              205000  MBC0 -> 4
              205000  MBC1 -> 4
              215000  core-1  BOOT_DATA
              215000  MBC0 -> 6
              215000  MBC1 -> 6
              245000  MBC0 -> 8
              245000  MBC1 -> 8
              255000  MBC0 -> 11
              255000  MBC1 -> 11
              265000  MBC0 -> 10
              265000  MBC1 -> 10
              275000  MBC0 -> 4
              275000  MBC1 -> 4
              285000  MBC0 -> 6
              285000  MBC1 -> 6
              335000  core-1  END_BST
              365000  MBC0 -> 8
              365000  MBC1 -> 8
              375000  MBC0 -> 11
              375000  MBC1 -> 11
              385000  MBC0 -> 10
              385000  MBC1 -> 10
              395000  MBC0 -> 4
              395000  MBC1 -> 4
              405000  MBC0 -> 6
              405000  MBC1 -> 6
              655000  simulation finished
 called from file tb_mcb_dual.sv, line 148.
 at simulation time               655000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 655000 ps
CPU Time:      0.270 seconds;       Data structure size:   0.0Mb
Sun Jun 22 01:17:01 2025
[cmata@redhat003 dual_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-22 01:11:05

```bash
[cmata@redhat003 dual_program_test]$ source ./run_tb_mcb.sh 
======================================
  Compilando y ejecutando testbench
  MBC
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Sun Jun 22 01:10:32 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_mcb_dual.sv'

Error-[SE] Syntax error
  Following verilog source has syntax error :
  tb_mcb_dual.sv, 15: token is 'always'
  always #(CLK_T/2) clk = ~clk;
        ^

1 warning
1 error
CPU time: .140 seconds to compile
bash: ./simv: No such file or directory
[cmata@redhat003 dual_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-22 01:07:59

```bash
[cmata@redhat003 dual_program_test]$ source ./run_tb_mcb.sh 
======================================
  Compilando y ejecutando testbench
  MBC
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Sun Jun 22 01:07:32 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_mcb_dual.sv'

Error-[SE] Syntax error
  Following verilog source has syntax error :
  tb_mcb_dual.sv, 14: token is 'always'
  logic clk = 0;  always #(CLK_T/2) clk = ~clk;
                        ^

1 warning
1 error
CPU time: .142 seconds to compile
bash: ./simv: No such file or directory
[cmata@redhat003 dual_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-22 00:59:28

```bash
[cmata@redhat003 dual_program_test]$ CC











































[cmata@redhat003 dual_program_test]$ source ./run_tb_mcb.sh 
======================================
  Compilando y ejecutando testbench
  MBC
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Sun Jun 22 00:57:55 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_mcb_dual.sv'
Parsing design file '../../../TEC_RISCV/MBC/MBC_dual.sv'
Top Level Modules:
       tb_mcb_dual
TimeScale is 1 ns / 1 ps

Warning-[TFIPC] Too few instance port connections
tb_mcb_dual.sv, 77
tb_mcb_dual, mbc #(.max(::MAX_A)) dut( .clk (clk),  .reset (reset),  .address (address),  .d_write (d_write),  .b (b),  .h (h),  .enable (enable),  .r_w (r_w),  .d_pop (d_pop),  .pndng (pndng),  .q (q),  .sign_ext (sign_ext),  .d_read (d_read),  .a (a),  .d (d),  .d_psh (d_psh),  .psh (psh),  .mem_rdy (mem_rdy),  .pop_mbc (pop_mbc),  .error_drs (error_drs),  .clk_mem (clk_mem),  .cen (cen),  .sl (sl),  .wen (wen));
  The above instance has fewer port connections than the module definition.
  Please use '+lint=TFIPC-L' to print out detailed information of unconnected 
  ports.


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Error-[ICPSD] Illegal combination of drivers
../../../TEC_RISCV/MBC/MBC_dual.sv, 26
  Illegal combination of structural and procedural drivers.
  Variable psh is driven by an invalid combination of structural and 
  procedural drivers. Variables driven by a structural driver cannot have any 
  other drivers.
  This variable is declared at ../../../TEC_RISCV/MBC/MBC_dual.sv, 26: logic
  psh;
  The first driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 315: 
  always_comb  begin
  case (state)
   ...
  The second driver is at ../../../TEC_RISCV/MBC/MBC_dual.sv, 90: assign psh
  = m(psh_i);


Note-[MAX_ERROR_COUNT] Maximum error count reached
  Current number of errors has reached the default maximum error count (10).
  Please use +error+<count> to increase the limit.

2 warnings
10 errors
CPU time: .218 seconds to compile
Verdi KDB elaboration done and the database successfully generated: 0 error(s), 0 warning(s)
bash: ./simv: No such file or directory

```

<!--CCP_SEPARATOR-->

## 2025-06-22 00:57:30

```bash
[cmata@redhat003 dual_program_test]$ source ./run_tb_mcb.sh 
======================================
  Compilando y ejecutando testbench
  MBC
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Sun Jun 22 00:56:38 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_mcb_dual.sv'
Parsing design file '../../../TEC_RISCV/MBC/MBC_dual.sv'
Top Level Modules:
       tb_mcb_dual
TimeScale is 1 ns / 1 ps

Warning-[TFIPC] Too few instance port connections
tb_mcb_dual.sv, 77
tb_mcb_dual, mbc
```

<!--CCP_SEPARATOR-->

## 2025-06-18 16:38:54

```bash
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP2_Full64; Runtime version R-2020.12-SP2_Full64;  Jun 18 16:37 2025
[5000] state = 0
[15000] state = 1
[105000] Sending first START_BST
[135000] POP  word sent: 0x4e00000000000000
[135000] state = 2
[145000] state = 3
[155000] state = 4
[165000] state = 5
[175000] state = 6
[185000] state = 7
[195000] state = 1
[205000] PUSH word: 0x1800000078563412
           t_word = 0x12345678  address = 0x000000
           instruction = 0xxxxxxxxx
[235000] POP  word sent: 0x4e00000000000000
[235000] state = 2
[245000] state = 3
[255000] state = 4
[265000] state = 5
[275000] state = 6
[285000] state = 7
[295000] state = 1
[305000] PUSH word: 0x18000004f0debc9a
           t_word = 0x9abcdef0  address = 0x000004
           instruction = 0xxxxxxxxx
[335000] POP  word sent: 0x4e00000000000000
[335000] state = 2
[345000] state = 3
[355000] state = 4
[365000] state = 5
[375000] state = 6
[385000] state = 7
[395000] state = 1
[405000] PUSH word: 0x18000008df9b5713
           t_word = 0x13579bdf  address = 0x000008
           instruction = 0xxxxxxxxx
[435000] POP  word sent: 0x4e00000000000000
[435000] state = 2
[445000] state = 3
[455000] state = 4
[465000] state = 5
[475000] state = 6
[485000] state = 7
[495000] state = 1
[505000] PUSH word: 0x1800000ccefaedfe
           t_word = 0xfeedface  address = 0x00000c
           instruction = 0xxxxxxxxx
[535000] POP  word sent: 0x4e00000000000000
[535000] state = 2
[545000] state = 3
[555000] state = 4
[565000] state = 5
[575000] state = 6
[585000] state = 8
[595000] state = 1
[605000] PUSH word: 0x1600000000000000
           t_word = 0xffffffff  address = 0x000010
[605000] END_BST received – TEST PASS
 called from file tb_top_spi_bootloader.sv, line 83.
 at simulation time               655000
           V C S   S i m u l a t i o n   R e p o r t 
Time: 655000 ps
CPU Time:      0.270 seconds;       Data structure size:   0.0Mb
Wed Jun 18 16:37:28 2025
[cmata@redhat003 double_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-17 17:37:09

```bash

```

<!--CCP_SEPARATOR-->

## 2025-06-17 17:37:05

```bash
Verdi>run

=== SPI BOOTLOADER TEST (FORCED MEMORY) ===

Time 210000: SPI in state 1
Time 230000: SPI in state 1
Time 250000: SPI in state 1
Time 270000: SPI in state 1
Time 290000: SPI in state 1
Time 310000: SPI in state 1
Time 330000: SPI in state 1
Time 350000: SPI in state 1
Time 370000: SPI in state 1
Time 390000: SPI in state 1
Sending START_BST command...
  D_pop = 0x2700000000000000000000
  DESTINO = 001 (should be 001)
  ORIGEN = 00
  INDEX = 111 (should be 111)
Command accepted!
Time 410000: SPI in state 2
Time 430000: SPI in state 3
Time 450000: SPI in state 4
Time 470000: SPI in state 5
Time 470000: SPI sending data: 0x0300000000ffffff
Time 490000: SPI in state 5
Time 510000: SPI in state 5
Time 530000: SPI in state 5
Time 550000: SPI in state 5
Time 570000: SPI in state 5
Time 590000: SPI in state 5
Time 610000: SPI in state 5
Time 630000: SPI in state 5
Time 650000: SPI in state 5
Time 670000: SPI in state 5
Time 690000: SPI in state 5
Time 710000: SPI in state 5
Time 730000: SPI in state 5
Time 750000: SPI in state 5
Time 770000: SPI in state 5
Time 790000: SPI in state 5
Time 810000: SPI in state 5
Time 830000: SPI in state 5
Time 850000: SPI in state 5
Time 870000: SPI in state 5
Time 890000: SPI in state 5
Time 910000: SPI in state 5
Time 930000: SPI in state 5
Time 950000: SPI in state 5
Time 970000: SPI in state 5
Time 990000: SPI in state 5
Time 1010000: SPI in state 5
Time 1030000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 1050000: SPI in state 5
Time 1070000: SPI in state 5
Time 1090000: SPI in state 5
Time 1110000: SPI in state 5
Time 1130000: SPI in state 5
Time 1150000: SPI in state 5
Time 1170000: SPI in state 5
Time 1190000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 1210000: SPI in state 5
Time 1230000: SPI in state 5
Time 1250000: SPI in state 5
Time 1270000: SPI in state 5
Time 1290000: SPI in state 5
Time 1310000: SPI in state 5
Time 1330000: SPI in state 5
Time 1350000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 1370000: SPI in state 5
Time 1390000: SPI in state 5
Time 1410000: SPI in state 5
Time 1430000: SPI in state 5
Time 1450000: SPI in state 5
Time 1470000: SPI in state 5
Time 1490000: SPI in state 5
Time 1510000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 1530000: SPI in state 5
Time 1550000: SPI in state 5
Time 1570000: SPI in state 5
Time 1590000: SPI in state 5
Time 1610000: SPI in state 5
Time 1630000: SPI in state 5
Time 1650000: SPI in state 5
Time 1670000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 1690000: SPI in state 5
Time 1710000: SPI in state 5
Time 1730000: SPI in state 5
Time 1750000: SPI in state 5
Time 1770000: SPI in state 5
Time 1790000: SPI in state 5
Time 1810000: SPI in state 5
Time 1830000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 1850000: SPI in state 5
Time 1870000: SPI in state 5
Time 1890000: SPI in state 5
Time 1910000: SPI in state 5
Time 1930000: SPI in state 5
Time 1950000: SPI in state 5
Time 1970000: SPI in state 5
Time 1990000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 2010000: SPI in state 5
Time 2030000: SPI in state 5
Time 2050000: SPI in state 5
Time 2070000: SPI in state 5
Time 2090000: SPI in state 5
Time 2110000: SPI in state 5
Time 2130000: SPI in state 5
Time 2150000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 2170000: SPI in state 5
Time 2190000: SPI in state 5
Time 2210000: SPI in state 5
Time 2230000: SPI in state 5
Time 2250000: SPI in state 5
Time 2270000: SPI in state 5
Time 2290000: SPI in state 5
Time 2310000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 2330000: SPI in state 5
Time 2350000: SPI in state 5
Time 2370000: SPI in state 5
Time 2390000: SPI in state 5
Time 2410000: SPI in state 5
Time 2430000: SPI in state 5
Time 2450000: SPI in state 5
Time 2470000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 2490000: SPI in state 5
Time 2510000: SPI in state 5
Time 2530000: SPI in state 5
Time 2550000: SPI in state 5
Time 2570000: SPI in state 5
Time 2590000: SPI in state 5
Time 2610000: SPI in state 5
Time 2630000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 2650000: SPI in state 5
Time 2670000: SPI in state 5
Time 2690000: SPI in state 5
Time 2710000: SPI in state 5
Time 2730000: SPI in state 5
Time 2750000: SPI in state 5
Time 2770000: SPI in state 5
Time 2790000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 2810000: SPI in state 5
Time 2830000: SPI in state 5
Time 2850000: SPI in state 5
Time 2870000: SPI in state 5
Time 2890000: SPI in state 5
Time 2910000: SPI in state 5
Time 2930000: SPI in state 5
Time 2950000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 2970000: SPI in state 5
Time 2990000: SPI in state 5
Time 3010000: SPI in state 5
Time 3030000: SPI in state 5
Time 3050000: SPI in state 5
Time 3070000: SPI in state 5
Time 3090000: SPI in state 5
Time 3110000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 3130000: SPI in state 5
Time 3150000: SPI in state 5
Time 3170000: SPI in state 5
Time 3190000: SPI in state 5
Time 3210000: SPI in state 5
Time 3230000: SPI in state 5
Time 3250000: SPI in state 5
Time 3270000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 3290000: SPI in state 5
Time 3310000: SPI in state 5
Time 3330000: SPI in state 5
Time 3350000: SPI in state 5
Time 3370000: SPI in state 5
Time 3390000: SPI in state 5
Time 3410000: SPI in state 5
Time 3430000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 3450000: SPI in state 5
Time 3470000: SPI in state 5
Time 3490000: SPI in state 5
Time 3510000: SPI in state 5
Time 3530000: SPI in state 5
Time 3550000: SPI in state 5
Time 3570000: SPI in state 5
Time 3590000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 3610000: SPI in state 5
Time 3630000: SPI in state 5
Time 3650000: SPI in state 5
Time 3670000: SPI in state 5
Time 3690000: SPI in state 5
Time 3710000: SPI in state 5
Time 3730000: SPI in state 5
Time 3750000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 3770000: SPI in state 5
Time 3790000: SPI in state 5
Time 3810000: SPI in state 5
Time 3830000: SPI in state 5
Time 3850000: SPI in state 5
Time 3870000: SPI in state 5
Time 3890000: SPI in state 5
Time 3910000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 3930000: SPI in state 5
Time 3950000: SPI in state 5
Time 3970000: SPI in state 5
Time 3990000: SPI in state 5
Time 4010000: SPI in state 5
Time 4030000: SPI in state 5
Time 4050000: SPI in state 5
Time 4070000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 4090000: SPI in state 5
Time 4110000: SPI in state 5
Time 4130000: SPI in state 5
Time 4150000: SPI in state 5
Time 4170000: SPI in state 5
Time 4190000: SPI in state 5
Time 4210000: SPI in state 5
Time 4230000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 4250000: SPI in state 5
Time 4270000: SPI in state 5
Time 4290000: SPI in state 5
Time 4310000: SPI in state 5
Time 4330000: SPI in state 5
Time 4350000: SPI in state 5
Time 4370000: SPI in state 5
Time 4390000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 4410000: SPI in state 5
Time 4430000: SPI in state 5
Time 4450000: SPI in state 5
Time 4470000: SPI in state 5
Time 4490000: SPI in state 5
Time 4510000: SPI in state 5
Time 4530000: SPI in state 5
Time 4550000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 4570000: SPI in state 5
Time 4590000: SPI in state 5
Time 4610000: SPI in state 5
Time 4630000: SPI in state 5
Time 4650000: SPI in state 5
Time 4670000: SPI in state 5
Time 4690000: SPI in state 5
Time 4710000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 4730000: SPI in state 5
Time 4750000: SPI in state 5
Time 4770000: SPI in state 5
Time 4790000: SPI in state 5
Time 4810000: SPI in state 5
Time 4830000: SPI in state 5
Time 4850000: SPI in state 5
Time 4870000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 4890000: SPI in state 5
Time 4910000: SPI in state 5
Time 4930000: SPI in state 5
Time 4950000: SPI in state 5
Time 4970000: SPI in state 5
Time 4990000: SPI in state 5
Time 5010000: SPI in state 5
Time 5030000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 5050000: SPI in state 5
Time 5070000: SPI in state 5
Time 5090000: SPI in state 5
Time 5110000: SPI in state 5
Time 5130000: SPI in state 5
Time 5150000: SPI in state 5
Time 5170000: SPI in state 5
Time 5190000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 5210000: SPI in state 5
Time 5230000: SPI in state 5
Time 5250000: SPI in state 5
Time 5270000: SPI in state 5
Time 5290000: SPI in state 5
Time 5310000: SPI in state 5
Time 5330000: SPI in state 5
Time 5350000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 5370000: SPI in state 5
Time 5390000: SPI in state 5
Time 5410000: SPI in state 5
Time 5430000: SPI in state 5
Time 5450000: SPI in state 5
Time 5470000: SPI in state 5
Time 5490000: SPI in state 5
Time 5510000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 5530000: SPI in state 5
Time 5550000: SPI in state 5
Time 5570000: SPI in state 5
Time 5590000: SPI in state 5
Time 5610000: SPI in state 5
Time 5630000: SPI in state 5
Time 5650000: SPI in state 5
Time 5670000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 5690000: SPI in state 5
Time 5710000: SPI in state 5
Time 5730000: SPI in state 5
Time 5750000: SPI in state 5
Time 5770000: SPI in state 5
Time 5790000: SPI in state 5
Time 5810000: SPI in state 5
Time 5830000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 5850000: SPI in state 5
Time 5870000: SPI in state 5
Time 5890000: SPI in state 5
Time 5910000: SPI in state 5
Time 5930000: SPI in state 5
Time 5950000: SPI in state 5
Time 5970000: SPI in state 5
Time 5990000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 6010000: SPI in state 5
Time 6030000: SPI in state 5
Time 6050000: SPI in state 5
Time 6070000: SPI in state 5
Time 6090000: SPI in state 5
Time 6110000: SPI in state 5
Time 6130000: SPI in state 5
Time 6150000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 6170000: SPI in state 5
Time 6190000: SPI in state 5
Time 6210000: SPI in state 5
Time 6230000: SPI in state 5
Time 6250000: SPI in state 5
Time 6270000: SPI in state 5
Time 6290000: SPI in state 5
Time 6310000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 6330000: SPI in state 5
Time 6350000: SPI in state 5
Time 6370000: SPI in state 5
Time 6390000: SPI in state 5
Time 6410000: SPI in state 5
Time 6430000: SPI in state 5
Time 6450000: SPI in state 5
Time 6470000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 6490000: SPI in state 5
Time 6510000: SPI in state 5
Time 6530000: SPI in state 5
Time 6550000: SPI in state 5
Time 6570000: SPI in state 5
Time 6590000: SPI in state 5
Time 6610000: SPI in state 5
Time 6630000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 6650000: SPI in state 5
Time 6670000: SPI in state 5
Time 6690000: SPI in state 5
Time 6710000: SPI in state 5
Time 6730000: SPI in state 5
Time 6750000: SPI in state 5
Time 6770000: SPI in state 5
Time 6790000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 6810000: SPI in state 5
Time 6830000: SPI in state 5
Time 6850000: SPI in state 5
Time 6870000: SPI in state 5
Time 6890000: SPI in state 5
Time 6910000: SPI in state 5
Time 6930000: SPI in state 5
Time 6950000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 6970000: SPI in state 5
Time 6990000: SPI in state 5
Time 7010000: SPI in state 5
Time 7030000: SPI in state 5
Time 7050000: SPI in state 5
Time 7070000: SPI in state 5
Time 7090000: SPI in state 5
Time 7110000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 7130000: SPI in state 5
Time 7150000: SPI in state 5
Time 7170000: SPI in state 5
Time 7190000: SPI in state 5
Time 7210000: SPI in state 5
Time 7230000: SPI in state 5
Time 7250000: SPI in state 5
Time 7270000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 7290000: SPI in state 5
Time 7310000: SPI in state 5
Time 7330000: SPI in state 5
Time 7350000: SPI in state 5
Time 7370000: SPI in state 5
Time 7390000: SPI in state 5
Time 7410000: SPI in state 5
Time 7430000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 7450000: SPI in state 5
Time 7470000: SPI in state 5
Time 7490000: SPI in state 5
Time 7510000: SPI in state 5
Time 7530000: SPI in state 5
Time 7550000: SPI in state 5
Time 7570000: SPI in state 5
Time 7590000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 7610000: SPI in state 5
Time 7630000: SPI in state 5
Time 7650000: SPI in state 5
Time 7670000: SPI in state 5
Time 7690000: SPI in state 5
Time 7710000: SPI in state 5
Time 7730000: SPI in state 5
Time 7750000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 7770000: SPI in state 5
Time 7790000: SPI in state 5
Time 7810000: SPI in state 5
Time 7830000: SPI in state 5
Time 7850000: SPI in state 5
Time 7870000: SPI in state 5
Time 7890000: SPI in state 5
Time 7910000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 7930000: SPI in state 5
Time 7950000: SPI in state 5
Time 7970000: SPI in state 5
Time 7990000: SPI in state 5
Time 8010000: SPI in state 5
Time 8030000: SPI in state 5
Time 8050000: SPI in state 5
Time 8070000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 8090000: SPI in state 5
Time 8110000: SPI in state 5
Time 8130000: SPI in state 5
Time 8150000: SPI in state 5
Time 8170000: SPI in state 5
Time 8190000: SPI in state 5
Time 8210000: SPI in state 5
Time 8230000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 8250000: SPI in state 5
Time 8270000: SPI in state 5
Time 8290000: SPI in state 5
Time 8310000: SPI in state 5
Time 8330000: SPI in state 5
Time 8350000: SPI in state 5
Time 8370000: SPI in state 5
Time 8390000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 8410000: SPI in state 5
Time 8430000: SPI in state 5
Time 8450000: SPI in state 5
Time 8470000: SPI in state 5
Time 8490000: SPI in state 5
Time 8510000: SPI in state 5
Time 8530000: SPI in state 5
Time 8550000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 8570000: SPI in state 5
Time 8590000: SPI in state 5
Time 8610000: SPI in state 5
Time 8630000: SPI in state 5
Time 8650000: SPI in state 5
Time 8670000: SPI in state 5
Time 8690000: SPI in state 5
Time 8710000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 8730000: SPI in state 5
Time 8750000: SPI in state 5
Time 8770000: SPI in state 5
Time 8790000: SPI in state 5
Time 8810000: SPI in state 5
Time 8830000: SPI in state 5
Time 8850000: SPI in state 5
Time 8870000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 8890000: SPI in state 5
Time 8910000: SPI in state 5
Time 8930000: SPI in state 5
Time 8950000: SPI in state 5
Time 8970000: SPI in state 5
Time 8990000: SPI in state 5
Time 9010000: SPI in state 5
Time 9030000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 9050000: SPI in state 5
Time 9070000: SPI in state 5
Time 9090000: SPI in state 5
Time 9110000: SPI in state 5
Time 9130000: SPI in state 5
Time 9150000: SPI in state 5
Time 9170000: SPI in state 5
Time 9190000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 9210000: SPI in state 5
Time 9230000: SPI in state 5
Time 9250000: SPI in state 5
Time 9270000: SPI in state 5
Time 9290000: SPI in state 5
Time 9310000: SPI in state 5
Time 9330000: SPI in state 5
Time 9350000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 9370000: SPI in state 5
Time 9390000: SPI in state 5
Time 9410000: SPI in state 5
Time 9430000: SPI in state 5
Time 9450000: SPI in state 5
Time 9470000: SPI in state 5
Time 9490000: SPI in state 5
Time 9510000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 9530000: SPI in state 5
Time 9550000: SPI in state 5
Time 9570000: SPI in state 5
Time 9590000: SPI in state 5
Time 9610000: SPI in state 5
Time 9630000: SPI in state 5
Time 9650000: SPI in state 5
Time 9670000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 9690000: SPI in state 5
Time 9710000: SPI in state 5
Time 9730000: SPI in state 5
Time 9750000: SPI in state 5
Time 9770000: SPI in state 5
Time 9790000: SPI in state 5
Time 9810000: SPI in state 5
Time 9830000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 9850000: SPI in state 5
Time 9870000: SPI in state 5
Time 9890000: SPI in state 5
Time 9910000: SPI in state 5
Time 9930000: SPI in state 5
Time 9950000: SPI in state 5
Time 9970000: SPI in state 5
Time 9990000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 10010000: SPI in state 5
Time 10030000: SPI in state 5
Time 10050000: SPI in state 5
Time 10070000: SPI in state 5
Time 10090000: SPI in state 5
Time 10110000: SPI in state 5
Time 10130000: SPI in state 5
Time 10150000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 10170000: SPI in state 5
Time 10190000: SPI in state 5
Time 10210000: SPI in state 5
Time 10230000: SPI in state 5
Time 10250000: SPI in state 5
Time 10270000: SPI in state 5
Time 10290000: SPI in state 5
Time 10310000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 10330000: SPI in state 5
Time 10350000: SPI in state 5
Time 10370000: SPI in state 5
Time 10390000: SPI in state 5
Time 10410000: SPI in state 5
Time 10430000: SPI in state 5
Time 10450000: SPI in state 5
Time 10470000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 10490000: SPI in state 5
Time 10510000: SPI in state 5
Time 10530000: SPI in state 5
Time 10550000: SPI in state 5
Time 10570000: SPI in state 5
Time 10590000: SPI in state 5
Time 10610000: SPI in state 5
Time 10630000: SPI in state 5
  Memory read: addr=0xxx, data=0xff
Time 10650000: SPI in state 5
Time 10670000: SPI in state 5
Time 10690000: SPI in state 5
Time 10710000: SPI in state 5
Time 10730000: SPI in state 5
Time 10750000: SPI in state 5
Time 10770000: SPI in state 5
Time 10790000: SPI in state 5
Time 10810000: SPI in state 5
Time 10830000: SPI in state 5
Time 10850000: SPI in state 5
Time 10870000: SPI in state 5
Time 10890000: SPI in state 5
Time 10910000: SPI in state 5
Time 10930000: SPI in state 5
Time 10950000: SPI in state 5
Time 10970000: SPI in state 5
Time 10990000: SPI in state 5
Time 11010000: SPI in state 5
Time 11030000: SPI in state 5
Time 11050000: SPI in state 5
Time 11070000: SPI in state 5
Time 11090000: SPI in state 5
Time 11090000: SPI end_send signal active
Time 11110000: SPI in state 6
Time 11130000: SPI in state 8
Time 11150000: SPI in state 1
Time 11170000: SPI in state 1
Time 11190000: SPI in state 1
Time 11210000: SPI in state 1
[cmata@redhat003 double_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-17 15:52:18

```bash
[cmata@redhat003 double_program_test]$ source run_spi_tb.sh 
======================================
  Compilando y ejecutando testbench
  TOP SPI
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Tue Jun 17 15:51:30 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_top_spi_original.sv'
Parsing included file 'IS25WP032D.v'.
Back to file 'tb_top_spi_original.sv'.
Parsing design file '../../../TEC_RISCV/SPI/top_spi_original.sv'
Parsing included file '../../../TEC_RISCV/SPI/../SPI/spi.sv'.
Back to file '../../../TEC_RISCV/SPI/top_spi_original.sv'.
Top Level Modules:
       tb_top_spi_original
       top_spi
TimeScale is 1 ns / 10 ps

Error-[URMI] Unresolved modules
tb_top_spi_original.sv, 50
top_spi_original
```

<!--CCP_SEPARATOR-->

## 2025-06-17 15:52:00

```bash
[cmata@redhat003 double_program_test]$ source run_spi_tb.sh 
======================================
  Compilando y ejecutando testbench
  TOP SPI
======================================

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Tue Jun 17 15:51:30 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_top_spi_original.sv'
Parsing included file 'IS25WP032D.v'.
Back to file 'tb_top_spi_original.sv'.
Parsing design file '../../../TEC_RISCV/SPI/top_spi_original.sv'
Parsing included file '../../../TEC_RISCV/SPI/../SPI/spi.sv'.
Back to file '../../../TEC_RISCV/SPI/top_spi_original.sv'.
Top Level Modules:
       tb_top_spi_original
       top_spi
TimeScale is 1 ns / 10 ps

Error-[URMI] Unresolved modules
tb_top_spi_original.sv, 50
top_spi_original
```

<!--CCP_SEPARATOR-->

## 2025-06-17 15:13:45

```bash
[cmata@redhat003 double_program_test]$ source run_spi_tb.sh 
=== Limpiando archivos anteriores ===
=== Verificando archivos necesarios ===
=== Compilando diseño SPI con VCS ===

Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all+dmptf -debug_region+cell+encrypt' instead.

                         Chronologic VCS (TM)
       Version R-2020.12-SP2_Full64 -- Tue Jun 17 15:13:12 2025

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
            or distribution of this software is strictly prohibited.


Warning-[DEBUG_DEP] Option will be deprecated
  The option '-debug_all' will be deprecated in a future release.  Please use 
  '-debug_acc+all -debug_region+cell+encrypt' instead.

Parsing design file 'tb_top_spi_original.sv'
Parsing design file '../../../TEC_RISCV/SPI/top_spi_original.sv'
Parsing included file '../../../TEC_RISCV/SPI/../SPI/spi.sv'.
Back to file '../../../TEC_RISCV/SPI/top_spi_original.sv'.
Parsing design file '../../../TEC_RISCV/SPI/spi.sv'

Error-[MPD] Module previously declared
  The module was previously declared at: 
  ../../../TEC_RISCV/SPI/../SPI/spi.sv, 14
  It is redeclared later at:
  ../../../TEC_RISCV/SPI/spi.sv, 14: token is 'spi'
  module spi#(parameter DATA_IN=64, DATA_OUT=32)(CLK, reset, MISO, 
  data_config, config_enable,data_send, send_data, data_read, MOSI,CS,SCK, 
  end_send);
            ^
  Please remove one of the declarations and compile again.

Parsing design file 'IS25WP032D.v'
1 warning
1 error
CPU time: .199 seconds to compile

=== ERROR EN LA COMPILACIÓN ===
Revisa los mensajes de error anteriores
[cmata@redhat003 double_program_test]$ 

```

<!--CCP_SEPARATOR-->

## 2025-06-17 14:28:16

```bash
at export.txt 

./simv -sml=verdi +UVM_VERDI_TRACE=UVM_AWARE +fsdb+gate=off -ucli2Proc -ucli
debImport -i -simflow -dbdir ./simv.daidir
*Verdi* Loading libsscore_vcs202012.so

*Verdi* : Enable RPC Server(207514)

srcTBInvokeSim
Chronologic VCS simulator copyright 1991-2020
Contains Synopsys proprietary information.
Compiler version R-2020.12-SP2_Full64; Runtime version R-2020.12-SP2_Full64;  Jun 17 14:17 2025
xterm-256color is Not a valid terminal...
Verdi>run
[LOAD] Palabra 0: 0x000000b3
[LOAD] Palabra 1: 0x00000133
[LOAD] Palabra 2: 0x000001b3
[LOAD] Palabra 3: 0x00000233
[LOAD] Palabra 4: 0x000002b3
[LOAD] Palabra 5: 0x00000333
[LOAD] Palabra 6: 0x000003b3
[LOAD] Palabra 7: 0x00000433
[LOAD] Palabra 8: 0x000004b3
[LOAD] Palabra 9: 0x00000533
[LOAD] Palabra 10: 0x000005b3
[LOAD] Palabra 11: 0x00000633
[LOAD] Palabra 12: 0x000006b3
[LOAD] Palabra 13: 0x00000733
[LOAD] Palabra 14: 0x000007b3
[LOAD] Palabra 15: 0x00000833
[LOAD] Palabra 16: 0x000008b3
[LOAD] Palabra 17: 0x00000933
[LOAD] Palabra 18: 0x000009b3
[LOAD] Palabra 19: 0x00000a33
[LOAD] Palabra 20: 0x00000ab3
[LOAD] Palabra 21: 0x00000b33
[LOAD] Palabra 22: 0x00000bb3
[LOAD] Palabra 23: 0x00000c33
[LOAD] Palabra 24: 0x00000cb3
[LOAD] Palabra 25: 0x00000d33
[LOAD] Palabra 26: 0x00000db3
[LOAD] Palabra 27: 0x00000e33
[LOAD] Palabra 28: 0x00000eb3
[LOAD] Palabra 29: 0x00000f33
[LOAD] Palabra 30: 0x00000fb3
[LOAD] Palabra 31: 0x3e800093
[LOAD] Palabra 32: 0xc1808113
[LOAD] Palabra 33: 0x3e808193
[LOAD] Palabra 34: 0x00800413
[LOAD] Palabra 35: 0xfff00493
[LOAD] Palabra 36: 0xffffffff
[INFO] Total de palabras cargadas: 37

==== INICIANDO SIMULACIÓN SPI ====

[TB] Enviando paquete START_BST...
[TB] Paquete START_BST consumido por el DUT
[FLASH] Comando recibido: 0x03
[FLASH] Dirección de lectura: 0x000000
[FLASH] Enviando palabra[0]: 0xxxxxxxxx
[RX @10970000] PUSH: dest=0 src=1 idx=4 addr=0x000000 data=0xxxxxxxxx
  [Verificación] Palabra 1 escrita en dirección 0x000000

[ERROR] Timeout - El bootloader no completó en el tiempo esperado
 called from file tb_top_spi_original.sv, line 217.
 at simulation time          10000000000
Simulation complete, time is 10000000000 ps.
tb_top_spi_original.sv, 217 :     ;
```

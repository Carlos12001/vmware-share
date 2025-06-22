
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

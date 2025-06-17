
<!--CCP_SEPARATOR-->

## 2025-06-17 14:23:50

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

<!--CCP_SEPARATOR-->

## 2025-04-17 13:30:03

```bash
[cmata@redhat003 cmata]$ ccp push "Me gusta mucho esta quedando el README"
[cmata@redhat003 cmata]$ ccp push "Voy a contar hasta 6"
[cmata@redhat003 cmata]$ ccp push "0"
[cmata@redhat003 cmata]$ ccp push "1"
[cmata@redhat003 cmata]$ ccp push "2"
[cmata@redhat003 cmata]$ ccp push "3"
[cmata@redhat003 cmata]$ ccp push "4"
[cmata@redhat003 cmata]$ ccp push "5"
[cmata@redhat003 cmata]$ ccp push "6"
[cmata@redhat003 cmata]$ ls
RISCV  summary_som_tanenbaum  Synopsys_Scripts  vector_multicore_siwa  vmware-share
[cmata@redhat003 cmata]$ ccp
Usage: /mnt/vol_NFS_rh003/estudiantes/cmata/vmware-share/ccp.sh {push <text>|pop|send <msg>|check [n]|size|clear|show}
[cmata@redhat003 cmata]$ ccp show

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:39

```bash
6
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:35

```bash
5
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:33

```bash
4
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:30

```bash
3
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:28

```bash
2
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:26

```bash
1
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:24

```bash
0
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:24:15

```bash
Voy a contar hasta 6
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:23:48

```bash
Me gusta mucho esta quedando el README
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:22:40

```bash
Holi me gusta SystemVerilog, GNU/Linux, C++/C y Rust
```
[cmata@redhat003 cmata]$ ccp send
[master 9a1f459] docs: update README log
 1 file changed, 72 insertions(+)
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 24 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 478 bytes | 239.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To github.com:Carlos12001/vmware-share.git
   6f7d88e..9a1f459  master -> master
[cmata@redhat003 cmata]$ cpp pop | echo

cpp: error: pop: No such file or directory
cpp: warning: ‘-x c’ after last input file has no effect
cpp: fatal error: no input files
compilation terminated.
[cmata@redhat003 cmata]$ cpp pop 
cpp: error: pop: No such file or directory
cpp: warning: ‘-x c’ after last input file has no effect
cpp: fatal error: no input files
compilation terminated.
[cmata@redhat003 cmata]$ ccp pop


## 2025-04-17 13:24:39

```bash
6
```


[cmata@redhat003 cmata]$ ccp pop | echo

[cmata@redhat003 cmata]$ ccp pop




## 2025-04-17 13:24:28

```bash
2
```


[cmata@redhat003 cmata]$ ccp show




## 2025-04-17 13:24:26

```bash
1
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:24:24

```bash
0
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:24:15

```bash
Voy a contar hasta 6
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:23:48

```bash
Me gusta mucho esta quedando el README
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:22:40

```bash
Holi me gusta SystemVerilog, GNU/Linux, C++/C y Rust
```
<!--CCP_SEPARATOR-->


<!--CCP_SEPARATOR-->

<!--CCP_SEPARATOR-->
[cmata@redhat003 cmata]$ ccp push "2"
[cmata@redhat003 cmata]$ ccp push "3"
[cmata@redhat003 cmata]$ ccp push "4"
[cmata@redhat003 cmata]$ ccp push "5"
[cmata@redhat003 cmata]$ ccp push "6"
[cmata@redhat003 cmata]$ ccp size
6
[cmata@redhat003 cmata]$ ccp check 1


## 2025-04-17 13:27:34

```bash
4
```


[cmata@redhat003 cmata]$ ccp check 0


## 2025-04-17 13:27:41

```bash
6
```


[cmata@redhat003 cmata]$ ccp check 2


## 2025-04-17 13:27:29

```bash
2
```




## 2025-04-17 13:24:26

```bash
1
```


[cmata@redhat003 cmata]$ ccp check 3





## 2025-04-17 13:24:15

```bash
Voy a contar hasta 6
```


[cmata@redhat003 cmata]$ ccp show

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:41

```bash
6
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:36

```bash
5
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:34

```bash
4
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:31

```bash
3
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:29

```bash
2
```




## 2025-04-17 13:24:26

```bash
1
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:24:24

```bash
0
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:24:15

```bash
Voy a contar hasta 6
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:23:48

```bash
Me gusta mucho esta quedando el README
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:22:40

```bash
Holi me gusta SystemVerilog, GNU/Linux, C++/C y Rust
```
<!--CCP_SEPARATOR-->


<!--CCP_SEPARATOR-->

<!--CCP_SEPARATOR-->
[cmata@redhat003 cmata]$ ccp check 1


## 2025-04-17 13:27:34

```bash
4
```


[cmata@redhat003 cmata]$ 

```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:41

```bash
6
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:36

```bash
5
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:34

```bash
4
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:31

```bash
3
```

<!--CCP_SEPARATOR-->

## 2025-04-17 13:27:29

```bash
2
```




## 2025-04-17 13:24:26

```bash
1
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:24:24

```bash
0
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:24:15

```bash
Voy a contar hasta 6
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:23:48

```bash
Me gusta mucho esta quedando el README
```

<!--CCP_SEPARATOR-->




## 2025-04-17 13:22:40

```bash
Holi me gusta SystemVerilog, GNU/Linux, C++/C y Rust
```
<!--CCP_SEPARATOR-->


<!--CCP_SEPARATOR-->

<!--CCP_SEPARATOR-->

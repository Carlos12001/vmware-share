
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

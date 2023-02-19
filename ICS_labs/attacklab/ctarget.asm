
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	pushq  0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmpq *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	pushq  $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmpq 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	pushq  $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmpq 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	pushq  $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmpq 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	pushq  $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmpq 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	pushq  $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmpq 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	pushq  $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmpq 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	pushq  $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmpq 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	pushq  $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmpq 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	pushq  $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmpq 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	pushq  $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmpq 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	pushq  $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmpq 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	pushq  $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmpq 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	pushq  $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmpq 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	pushq  $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmpq 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	pushq  $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmpq 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	pushq  $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmpq 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	pushq  $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmpq 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	pushq  $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmpq 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	pushq  $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmpq 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	pushq  $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmpq 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	pushq  $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmpq 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	pushq  $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmpq 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	pushq  $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmpq 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	pushq  $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmpq 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	pushq  $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmpq 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	pushq  $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmpq 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	pushq  $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmpq 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	pushq  $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmpq 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	pushq  $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmpq 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	pushq  $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmpq 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	pushq  $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmpq 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	pushq  $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmpq 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	pushq  $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmpq 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	pushq  $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmpq 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmpq *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmpq *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmpq *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmpq *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmpq *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmpq *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmpq *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmpq *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmpq *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmpq *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmpq *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmpq *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmpq *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmpq *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmpq *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmpq *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmpq *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmpq *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmpq *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmpq *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmpq *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmpq *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmpq *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmpq *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmpq *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmpq *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmpq *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmpq *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmpq *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmpq *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmpq *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmpq *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmpq *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmpq *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 70 38 40 00 	mov    $0x403870,%r8
  40148a:	48 c7 c1 00 38 40 00 	mov    $0x403800,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	callq  *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	retq   
  4014a5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmpq   *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	retq   
  4014d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmpq   *%rax
  401510:	c3                   	retq   
  401511:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	callq  4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	retq   
  40153f:	90                   	nop
  401540:	c3                   	retq   
  401541:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	callq  4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	callq  4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	callq  4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	callq  4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	callq  4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	callq  401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	callq  4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	callq  4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	callq  4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	callq  4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 9f 21 00 00       	callq  4037da <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 92 21 00 00       	callq  4037da <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	callq  401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	callq  401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	callq  401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 63 	movb   $0x63,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	retq   
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	callq  401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	callq  401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	callq  401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	callq  401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	callq  401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	callq  4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	callq  401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 de 1d 00 00       	callq  40351f <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	callq  4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	callq  401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	callq  4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	callq  401410 <exit@plt>
  401794:	e8 9e 10 00 00       	callq  402837 <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 26 27 40 00 	mov    $0x402726,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	callq  401330 <signal@plt>
  4017f1:	48 c7 c6 cc 26 40 00 	mov    $0x4026cc,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	callq  401330 <signal@plt>
  401802:	48 c7 c6 80 27 40 00 	mov    $0x402780,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	callq  401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmpq   4018cf <main+0x136>
  401842:	48 c7 c6 da 27 40 00 	mov    $0x4027da,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	callq  401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	callq  4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	callq  401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	callq  4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	callq  401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmpq   4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	callq  4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	callq  4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmpq *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	callq  401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	callq  401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	callq  4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	callq  401556 <usage>
  40195b:	be 00 00 00 00       	mov    $0x0,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	callq  4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	callq  401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	callq  4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 65 09 00 00       	callq  402315 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	callq  4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 c0 0f 00 00       	callq  40299d <stable_launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	retq   
  4019ff:	e8 33 0e 00 00       	callq  402837 <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 9a aa 00 00    	imul   $0xaa9a,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401a37:	69 c0 7c 9b 00 00    	imul   $0x9b7c,%eax,%eax
  401a3d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401a41:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a45:	69 c0 8c 18 00 00    	imul   $0x188c,%eax,%eax
  401a4b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a4f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a53:	69 c0 59 7b 00 00    	imul   $0x7b59,%eax,%eax
  401a59:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a5d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401a61:	69 c0 e2 2d 00 00    	imul   $0x2de2,%eax,%eax
  401a67:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401a6b:	8b 04 24             	mov    (%rsp),%eax
  401a6e:	69 c0 a9 3f 00 00    	imul   $0x3fa9,%eax,%eax
  401a74:	89 04 24             	mov    %eax,(%rsp)
  401a77:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a7b:	69 c0 03 ad 00 00    	imul   $0xad03,%eax,%eax
  401a81:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a85:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a89:	69 c0 70 5d 00 00    	imul   $0x5d70,%eax,%eax
  401a8f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a93:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a97:	69 c0 fa 50 00 00    	imul   $0x50fa,%eax,%eax
  401a9d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401aa1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401aa5:	69 c0 f4 12 00 00    	imul   $0x12f4,%eax,%eax
  401aab:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401aaf:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ab3:	69 c0 ff 69 00 00    	imul   $0x69ff,%eax,%eax
  401ab9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401abd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ac1:	69 c0 32 2e 00 00    	imul   $0x2e32,%eax,%eax
  401ac7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401acb:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401acf:	6b c0 69             	imul   $0x69,%eax,%eax
  401ad2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401ad6:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ada:	69 c0 42 4e 00 00    	imul   $0x4e42,%eax,%eax
  401ae0:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ae4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ae8:	69 c0 77 9b 00 00    	imul   $0x9b77,%eax,%eax
  401aee:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401af2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401af6:	69 c0 31 1b 00 00    	imul   $0x1b31,%eax,%eax
  401afc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b00:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b04:	69 c0 80 fe 00 00    	imul   $0xfe80,%eax,%eax
  401b0a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b0e:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401b12:	69 c0 c4 c4 00 00    	imul   $0xc4c4,%eax,%eax
  401b18:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401b1c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b20:	69 c0 5b 9b 00 00    	imul   $0x9b5b,%eax,%eax
  401b26:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b2a:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b2e:	69 c0 26 7d 00 00    	imul   $0x7d26,%eax,%eax
  401b34:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b38:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b3c:	69 c0 e5 d2 00 00    	imul   $0xd2e5,%eax,%eax
  401b42:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b46:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401b4a:	69 c0 e4 5f 00 00    	imul   $0x5fe4,%eax,%eax
  401b50:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401b54:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b58:	69 c0 35 73 00 00    	imul   $0x7335,%eax,%eax
  401b5e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b62:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b66:	69 c0 d0 98 00 00    	imul   $0x98d0,%eax,%eax
  401b6c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b70:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b74:	69 c0 d0 d5 00 00    	imul   $0xd5d0,%eax,%eax
  401b7a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b7e:	8b 04 24             	mov    (%rsp),%eax
  401b81:	69 c0 39 70 00 00    	imul   $0x7039,%eax,%eax
  401b87:	89 04 24             	mov    %eax,(%rsp)
  401b8a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b8e:	69 c0 88 9a 00 00    	imul   $0x9a88,%eax,%eax
  401b94:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b98:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b9c:	69 c0 91 1a 00 00    	imul   $0x1a91,%eax,%eax
  401ba2:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401ba6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401baa:	69 c0 63 89 00 00    	imul   $0x8963,%eax,%eax
  401bb0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bb4:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401bb8:	69 c0 07 1b 00 00    	imul   $0x1b07,%eax,%eax
  401bbe:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401bc2:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bc6:	69 c0 b8 bc 00 00    	imul   $0xbcb8,%eax,%eax
  401bcc:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bd0:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401bd4:	69 c0 77 28 00 00    	imul   $0x2877,%eax,%eax
  401bda:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401bde:	8b 04 24             	mov    (%rsp),%eax
  401be1:	69 c0 e5 ec 00 00    	imul   $0xece5,%eax,%eax
  401be7:	89 04 24             	mov    %eax,(%rsp)
  401bea:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bee:	69 c0 45 d2 00 00    	imul   $0xd245,%eax,%eax
  401bf4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bf8:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401bfc:	69 c0 5a 2d 00 00    	imul   $0x2d5a,%eax,%eax
  401c02:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401c06:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c0a:	69 c0 7e 51 00 00    	imul   $0x517e,%eax,%eax
  401c10:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c14:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c18:	69 c0 3b 0c 00 00    	imul   $0xc3b,%eax,%eax
  401c1e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c22:	8b 04 24             	mov    (%rsp),%eax
  401c25:	69 c0 27 80 00 00    	imul   $0x8027,%eax,%eax
  401c2b:	89 04 24             	mov    %eax,(%rsp)
  401c2e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c32:	69 c0 b6 6e 00 00    	imul   $0x6eb6,%eax,%eax
  401c38:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c3c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c40:	69 c0 a0 43 00 00    	imul   $0x43a0,%eax,%eax
  401c46:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c4a:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c4e:	69 c0 bd c4 00 00    	imul   $0xc4bd,%eax,%eax
  401c54:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c58:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c5c:	69 c0 56 84 00 00    	imul   $0x8456,%eax,%eax
  401c62:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c66:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401c6a:	69 c0 45 52 00 00    	imul   $0x5245,%eax,%eax
  401c70:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401c74:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c78:	69 c0 36 fa 00 00    	imul   $0xfa36,%eax,%eax
  401c7e:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c82:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401c86:	69 c0 ba 07 00 00    	imul   $0x7ba,%eax,%eax
  401c8c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401c90:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c94:	69 c0 83 00 00 00    	imul   $0x83,%eax,%eax
  401c9a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c9e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ca2:	69 c0 75 4b 00 00    	imul   $0x4b75,%eax,%eax
  401ca8:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401cac:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401cb0:	69 c0 ab 7f 00 00    	imul   $0x7fab,%eax,%eax
  401cb6:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401cba:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401cbe:	69 c0 37 16 00 00    	imul   $0x1637,%eax,%eax
  401cc4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401cc8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ccc:	69 c0 9b c0 00 00    	imul   $0xc09b,%eax,%eax
  401cd2:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401cd6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401cda:	69 c0 5c a1 00 00    	imul   $0xa15c,%eax,%eax
  401ce0:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ce4:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401ce8:	69 c0 d0 43 00 00    	imul   $0x43d0,%eax,%eax
  401cee:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401cf2:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401cf6:	69 c0 7b c3 00 00    	imul   $0xc37b,%eax,%eax
  401cfc:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d00:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d04:	69 c0 07 2d 00 00    	imul   $0x2d07,%eax,%eax
  401d0a:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d0e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d12:	69 c0 ef dc 00 00    	imul   $0xdcef,%eax,%eax
  401d18:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d1c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d20:	69 c0 b8 76 00 00    	imul   $0x76b8,%eax,%eax
  401d26:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d2a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d2e:	69 c0 81 24 00 00    	imul   $0x2481,%eax,%eax
  401d34:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d38:	8b 04 24             	mov    (%rsp),%eax
  401d3b:	69 c0 f1 00 00 00    	imul   $0xf1,%eax,%eax
  401d41:	89 04 24             	mov    %eax,(%rsp)
  401d44:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d48:	69 c0 f6 99 00 00    	imul   $0x99f6,%eax,%eax
  401d4e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d52:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d56:	69 c0 6f 52 00 00    	imul   $0x526f,%eax,%eax
  401d5c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d60:	8b 04 24             	mov    (%rsp),%eax
  401d63:	69 c0 65 10 00 00    	imul   $0x1065,%eax,%eax
  401d69:	89 04 24             	mov    %eax,(%rsp)
  401d6c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d70:	69 c0 23 66 00 00    	imul   $0x6623,%eax,%eax
  401d76:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d7a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d7e:	69 c0 ed 7b 00 00    	imul   $0x7bed,%eax,%eax
  401d84:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401d88:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401d8c:	69 c0 36 94 00 00    	imul   $0x9436,%eax,%eax
  401d92:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401d96:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401d9a:	69 c0 bf 37 00 00    	imul   $0x37bf,%eax,%eax
  401da0:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401da4:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401da8:	69 c0 b5 d5 00 00    	imul   $0xd5b5,%eax,%eax
  401dae:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401db2:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401db6:	69 c0 eb 66 00 00    	imul   $0x66eb,%eax,%eax
  401dbc:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401dc0:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401dc4:	69 c0 b2 86 00 00    	imul   $0x86b2,%eax,%eax
  401dca:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401dce:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401dd2:	69 c0 7d dd 00 00    	imul   $0xdd7d,%eax,%eax
  401dd8:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ddc:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401de0:	69 c0 98 5c 00 00    	imul   $0x5c98,%eax,%eax
  401de6:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401dea:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401dee:	69 c0 62 24 00 00    	imul   $0x2462,%eax,%eax
  401df4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401df8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401dfc:	69 c0 19 5c 00 00    	imul   $0x5c19,%eax,%eax
  401e02:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e06:	8b 04 24             	mov    (%rsp),%eax
  401e09:	69 c0 5e ce 00 00    	imul   $0xce5e,%eax,%eax
  401e0f:	89 04 24             	mov    %eax,(%rsp)
  401e12:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e16:	69 c0 aa bf 00 00    	imul   $0xbfaa,%eax,%eax
  401e1c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e20:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401e24:	69 c0 32 58 00 00    	imul   $0x5832,%eax,%eax
  401e2a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401e2e:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401e32:	69 c0 05 0a 00 00    	imul   $0xa05,%eax,%eax
  401e38:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401e3c:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401e40:	69 c0 0b 65 00 00    	imul   $0x650b,%eax,%eax
  401e46:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401e4a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401e4e:	69 c0 73 c4 00 00    	imul   $0xc473,%eax,%eax
  401e54:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401e58:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401e5c:	69 c0 f7 55 00 00    	imul   $0x55f7,%eax,%eax
  401e62:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401e66:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401e6a:	69 c0 1d 73 00 00    	imul   $0x731d,%eax,%eax
  401e70:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401e74:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401e78:	69 c0 7a ad 00 00    	imul   $0xad7a,%eax,%eax
  401e7e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401e82:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401e86:	69 c0 d2 66 00 00    	imul   $0x66d2,%eax,%eax
  401e8c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401e90:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401e94:	69 c0 58 62 00 00    	imul   $0x6258,%eax,%eax
  401e9a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401e9e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401ea2:	69 c0 cc 3e 00 00    	imul   $0x3ecc,%eax,%eax
  401ea8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401eac:	8b 04 24             	mov    (%rsp),%eax
  401eaf:	69 c0 3f a1 00 00    	imul   $0xa13f,%eax,%eax
  401eb5:	89 04 24             	mov    %eax,(%rsp)
  401eb8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401ebc:	69 c0 42 fa 00 00    	imul   $0xfa42,%eax,%eax
  401ec2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ec6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401eca:	69 c0 b4 6e 00 00    	imul   $0x6eb4,%eax,%eax
  401ed0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401ed4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ed8:	69 c0 84 0e 00 00    	imul   $0xe84,%eax,%eax
  401ede:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ee2:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ee6:	69 c0 65 b3 00 00    	imul   $0xb365,%eax,%eax
  401eec:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401ef0:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ef4:	69 c0 67 a5 00 00    	imul   $0xa567,%eax,%eax
  401efa:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401efe:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401f02:	69 c0 47 e0 00 00    	imul   $0xe047,%eax,%eax
  401f08:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401f0c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401f10:	69 c0 30 74 00 00    	imul   $0x7430,%eax,%eax
  401f16:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401f1a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401f1e:	69 c0 94 1f 00 00    	imul   $0x1f94,%eax,%eax
  401f24:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401f28:	8b 04 24             	mov    (%rsp),%eax
  401f2b:	69 c0 4c 26 00 00    	imul   $0x264c,%eax,%eax
  401f31:	89 04 24             	mov    %eax,(%rsp)
  401f34:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401f38:	69 c0 4c 91 00 00    	imul   $0x914c,%eax,%eax
  401f3e:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401f42:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401f46:	69 c0 43 03 00 00    	imul   $0x343,%eax,%eax
  401f4c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401f50:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401f54:	69 c0 3c e2 00 00    	imul   $0xe23c,%eax,%eax
  401f5a:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401f5e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401f62:	69 c0 2c 53 00 00    	imul   $0x532c,%eax,%eax
  401f68:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401f6c:	8b 04 24             	mov    (%rsp),%eax
  401f6f:	69 c0 9a 57 00 00    	imul   $0x579a,%eax,%eax
  401f75:	89 04 24             	mov    %eax,(%rsp)
  401f78:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7d:	ba 00 00 00 00       	mov    $0x0,%edx
  401f82:	83 f8 09             	cmp    $0x9,%eax
  401f85:	77 0c                	ja     401f93 <scramble+0x58f>
  401f87:	89 c1                	mov    %eax,%ecx
  401f89:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401f8c:	01 ca                	add    %ecx,%edx
  401f8e:	83 c0 01             	add    $0x1,%eax
  401f91:	eb ef                	jmp    401f82 <scramble+0x57e>
  401f93:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401f98:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f9f:	00 00 
  401fa1:	75 07                	jne    401faa <scramble+0x5a6>
  401fa3:	89 d0                	mov    %edx,%eax
  401fa5:	48 83 c4 38          	add    $0x38,%rsp
  401fa9:	c3                   	retq   
  401faa:	e8 88 08 00 00       	callq  402837 <__stack_chk_fail>

0000000000401faf <getbuf>:
  401faf:	f3 0f 1e fa          	endbr64 
  401fb3:	48 83 ec 38          	sub    $0x38,%rsp
  401fb7:	48 89 e7             	mov    %rsp,%rdi
  401fba:	e8 94 03 00 00       	callq  402353 <Gets>
  401fbf:	b8 01 00 00 00       	mov    $0x1,%eax
  401fc4:	48 83 c4 38          	add    $0x38,%rsp
  401fc8:	c3                   	retq   

0000000000401fc9 <getbuf_withcanary>:
  401fc9:	f3 0f 1e fa          	endbr64 
  401fcd:	55                   	push   %rbp
  401fce:	48 89 e5             	mov    %rsp,%rbp
  401fd1:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  401fd8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401fdf:	00 00 
  401fe1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401fe5:	31 c0                	xor    %eax,%eax
  401fe7:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  401fee:	00 00 00 
  401ff1:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401ff7:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  401ffd:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402004:	48 89 c7             	mov    %rax,%rdi
  402007:	e8 47 03 00 00       	callq  402353 <Gets>
  40200c:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  402012:	48 63 d0             	movslq %eax,%rdx
  402015:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40201c:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  402023:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40202a:	48 89 ce             	mov    %rcx,%rsi
  40202d:	48 89 c7             	mov    %rax,%rdi
  402030:	e8 3b f3 ff ff       	callq  401370 <memcpy@plt>
  402035:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  40203b:	48 63 d0             	movslq %eax,%rdx
  40203e:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402045:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  40204c:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  402053:	48 89 c6             	mov    %rax,%rsi
  402056:	48 89 cf             	mov    %rcx,%rdi
  402059:	e8 12 f3 ff ff       	callq  401370 <memcpy@plt>
  40205e:	b8 01 00 00 00       	mov    $0x1,%eax
  402063:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402067:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40206e:	00 00 
  402070:	74 05                	je     402077 <getbuf_withcanary+0xae>
  402072:	e8 c0 07 00 00       	callq  402837 <__stack_chk_fail>
  402077:	c9                   	leaveq 
  402078:	c3                   	retq   

0000000000402079 <touch1>:
  402079:	f3 0f 1e fa          	endbr64 
  40207d:	50                   	push   %rax
  40207e:	58                   	pop    %rax
  40207f:	48 83 ec 08          	sub    $0x8,%rsp
  402083:	c7 05 8f 54 00 00 01 	movl   $0x1,0x548f(%rip)        # 40751c <vlevel>
  40208a:	00 00 00 
  40208d:	48 8d 3d 82 22 00 00 	lea    0x2282(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  402094:	e8 17 f2 ff ff       	callq  4012b0 <puts@plt>
  402099:	bf 01 00 00 00       	mov    $0x1,%edi
  40209e:	e8 22 05 00 00       	callq  4025c5 <validate>
  4020a3:	bf 00 00 00 00       	mov    $0x0,%edi
  4020a8:	e8 63 f3 ff ff       	callq  401410 <exit@plt>

00000000004020ad <touch2>:
  4020ad:	f3 0f 1e fa          	endbr64 
  4020b1:	50                   	push   %rax
  4020b2:	58                   	pop    %rax
  4020b3:	48 83 ec 08          	sub    $0x8,%rsp
  4020b7:	89 fa                	mov    %edi,%edx
  4020b9:	c7 05 59 54 00 00 02 	movl   $0x2,0x5459(%rip)        # 40751c <vlevel>
  4020c0:	00 00 00 
  4020c3:	39 3d 5b 54 00 00    	cmp    %edi,0x545b(%rip)        # 407524 <cookie>
  4020c9:	74 2a                	je     4020f5 <touch2+0x48>
  4020cb:	48 8d 35 8e 22 00 00 	lea    0x228e(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  4020d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4020d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4020dc:	e8 df f2 ff ff       	callq  4013c0 <__printf_chk@plt>
  4020e1:	bf 02 00 00 00       	mov    $0x2,%edi
  4020e6:	e8 b5 05 00 00       	callq  4026a0 <fail>
  4020eb:	bf 00 00 00 00       	mov    $0x0,%edi
  4020f0:	e8 1b f3 ff ff       	callq  401410 <exit@plt>
  4020f5:	48 8d 35 3c 22 00 00 	lea    0x223c(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  4020fc:	bf 01 00 00 00       	mov    $0x1,%edi
  402101:	b8 00 00 00 00       	mov    $0x0,%eax
  402106:	e8 b5 f2 ff ff       	callq  4013c0 <__printf_chk@plt>
  40210b:	bf 02 00 00 00       	mov    $0x2,%edi
  402110:	e8 b0 04 00 00       	callq  4025c5 <validate>
  402115:	eb d4                	jmp    4020eb <touch2+0x3e>

0000000000402117 <hexmatch>:
  402117:	f3 0f 1e fa          	endbr64 
  40211b:	41 55                	push   %r13
  40211d:	41 54                	push   %r12
  40211f:	55                   	push   %rbp
  402120:	53                   	push   %rbx
  402121:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  402128:	89 fd                	mov    %edi,%ebp
  40212a:	48 89 f3             	mov    %rsi,%rbx
  40212d:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  402133:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  402138:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40213d:	31 c0                	xor    %eax,%eax
  40213f:	e8 4c f2 ff ff       	callq  401390 <random@plt>
  402144:	48 89 c1             	mov    %rax,%rcx
  402147:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40214e:	0a d7 a3 
  402151:	48 f7 ea             	imul   %rdx
  402154:	48 01 ca             	add    %rcx,%rdx
  402157:	48 c1 fa 06          	sar    $0x6,%rdx
  40215b:	48 89 c8             	mov    %rcx,%rax
  40215e:	48 c1 f8 3f          	sar    $0x3f,%rax
  402162:	48 29 c2             	sub    %rax,%rdx
  402165:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  402169:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40216d:	48 c1 e0 02          	shl    $0x2,%rax
  402171:	48 29 c1             	sub    %rax,%rcx
  402174:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  402178:	41 89 e8             	mov    %ebp,%r8d
  40217b:	48 8d 0d b1 21 00 00 	lea    0x21b1(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  402182:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402189:	be 01 00 00 00       	mov    $0x1,%esi
  40218e:	4c 89 ef             	mov    %r13,%rdi
  402191:	b8 00 00 00 00       	mov    $0x0,%eax
  402196:	e8 b5 f2 ff ff       	callq  401450 <__sprintf_chk@plt>
  40219b:	ba 09 00 00 00       	mov    $0x9,%edx
  4021a0:	4c 89 ee             	mov    %r13,%rsi
  4021a3:	48 89 df             	mov    %rbx,%rdi
  4021a6:	e8 e5 f0 ff ff       	callq  401290 <strncmp@plt>
  4021ab:	85 c0                	test   %eax,%eax
  4021ad:	0f 94 c0             	sete   %al
  4021b0:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  4021b5:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  4021ba:	75 11                	jne    4021cd <hexmatch+0xb6>
  4021bc:	0f b6 c0             	movzbl %al,%eax
  4021bf:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  4021c6:	5b                   	pop    %rbx
  4021c7:	5d                   	pop    %rbp
  4021c8:	41 5c                	pop    %r12
  4021ca:	41 5d                	pop    %r13
  4021cc:	c3                   	retq   
  4021cd:	e8 65 06 00 00       	callq  402837 <__stack_chk_fail>

00000000004021d2 <touch3>:
  4021d2:	f3 0f 1e fa          	endbr64 
  4021d6:	53                   	push   %rbx
  4021d7:	48 89 fb             	mov    %rdi,%rbx
  4021da:	c7 05 38 53 00 00 03 	movl   $0x3,0x5338(%rip)        # 40751c <vlevel>
  4021e1:	00 00 00 
  4021e4:	48 89 fe             	mov    %rdi,%rsi
  4021e7:	8b 3d 37 53 00 00    	mov    0x5337(%rip),%edi        # 407524 <cookie>
  4021ed:	e8 25 ff ff ff       	callq  402117 <hexmatch>
  4021f2:	85 c0                	test   %eax,%eax
  4021f4:	74 2d                	je     402223 <touch3+0x51>
  4021f6:	48 89 da             	mov    %rbx,%rdx
  4021f9:	48 8d 35 88 21 00 00 	lea    0x2188(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  402200:	bf 01 00 00 00       	mov    $0x1,%edi
  402205:	b8 00 00 00 00       	mov    $0x0,%eax
  40220a:	e8 b1 f1 ff ff       	callq  4013c0 <__printf_chk@plt>
  40220f:	bf 03 00 00 00       	mov    $0x3,%edi
  402214:	e8 ac 03 00 00       	callq  4025c5 <validate>
  402219:	bf 00 00 00 00       	mov    $0x0,%edi
  40221e:	e8 ed f1 ff ff       	callq  401410 <exit@plt>
  402223:	48 89 da             	mov    %rbx,%rdx
  402226:	48 8d 35 83 21 00 00 	lea    0x2183(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  40222d:	bf 01 00 00 00       	mov    $0x1,%edi
  402232:	b8 00 00 00 00       	mov    $0x0,%eax
  402237:	e8 84 f1 ff ff       	callq  4013c0 <__printf_chk@plt>
  40223c:	bf 03 00 00 00       	mov    $0x3,%edi
  402241:	e8 5a 04 00 00       	callq  4026a0 <fail>
  402246:	eb d1                	jmp    402219 <touch3+0x47>

0000000000402248 <test>:
  402248:	f3 0f 1e fa          	endbr64 
  40224c:	48 83 ec 08          	sub    $0x8,%rsp
  402250:	b8 00 00 00 00       	mov    $0x0,%eax
  402255:	e8 55 fd ff ff       	callq  401faf <getbuf>
  40225a:	89 c2                	mov    %eax,%edx
  40225c:	48 8d 35 75 21 00 00 	lea    0x2175(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  402263:	bf 01 00 00 00       	mov    $0x1,%edi
  402268:	b8 00 00 00 00       	mov    $0x0,%eax
  40226d:	e8 4e f1 ff ff       	callq  4013c0 <__printf_chk@plt>
  402272:	48 83 c4 08          	add    $0x8,%rsp
  402276:	c3                   	retq   

0000000000402277 <test2>:
  402277:	f3 0f 1e fa          	endbr64 
  40227b:	48 83 ec 08          	sub    $0x8,%rsp
  40227f:	b8 00 00 00 00       	mov    $0x0,%eax
  402284:	e8 40 fd ff ff       	callq  401fc9 <getbuf_withcanary>
  402289:	89 c2                	mov    %eax,%edx
  40228b:	48 8d 35 6e 21 00 00 	lea    0x216e(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  402292:	bf 01 00 00 00       	mov    $0x1,%edi
  402297:	b8 00 00 00 00       	mov    $0x0,%eax
  40229c:	e8 1f f1 ff ff       	callq  4013c0 <__printf_chk@plt>
  4022a1:	48 83 c4 08          	add    $0x8,%rsp
  4022a5:	c3                   	retq   

00000000004022a6 <save_char>:
  4022a6:	8b 05 98 5e 00 00    	mov    0x5e98(%rip),%eax        # 408144 <gets_cnt>
  4022ac:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4022b1:	7f 4a                	jg     4022fd <save_char+0x57>
  4022b3:	89 f9                	mov    %edi,%ecx
  4022b5:	c0 e9 04             	shr    $0x4,%cl
  4022b8:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4022bb:	4c 8d 05 ae 24 00 00 	lea    0x24ae(%rip),%r8        # 404770 <trans_char>
  4022c2:	83 e1 0f             	and    $0xf,%ecx
  4022c5:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4022ca:	48 8d 0d 6f 52 00 00 	lea    0x526f(%rip),%rcx        # 407540 <gets_buf>
  4022d1:	48 63 f2             	movslq %edx,%rsi
  4022d4:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4022d8:	8d 72 01             	lea    0x1(%rdx),%esi
  4022db:	83 e7 0f             	and    $0xf,%edi
  4022de:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4022e3:	48 63 f6             	movslq %esi,%rsi
  4022e6:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4022ea:	83 c2 02             	add    $0x2,%edx
  4022ed:	48 63 d2             	movslq %edx,%rdx
  4022f0:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4022f4:	83 c0 01             	add    $0x1,%eax
  4022f7:	89 05 47 5e 00 00    	mov    %eax,0x5e47(%rip)        # 408144 <gets_cnt>
  4022fd:	c3                   	retq   

00000000004022fe <save_term>:
  4022fe:	8b 05 40 5e 00 00    	mov    0x5e40(%rip),%eax        # 408144 <gets_cnt>
  402304:	8d 04 40             	lea    (%rax,%rax,2),%eax
  402307:	48 98                	cltq   
  402309:	48 8d 15 30 52 00 00 	lea    0x5230(%rip),%rdx        # 407540 <gets_buf>
  402310:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  402314:	c3                   	retq   

0000000000402315 <check_fail>:
  402315:	f3 0f 1e fa          	endbr64 
  402319:	50                   	push   %rax
  40231a:	58                   	pop    %rax
  40231b:	48 83 ec 08          	sub    $0x8,%rsp
  40231f:	0f be 15 22 5e 00 00 	movsbl 0x5e22(%rip),%edx        # 408148 <target_prefix>
  402326:	4c 8d 05 13 52 00 00 	lea    0x5213(%rip),%r8        # 407540 <gets_buf>
  40232d:	8b 0d e5 51 00 00    	mov    0x51e5(%rip),%ecx        # 407518 <check_level>
  402333:	48 8d 35 f4 20 00 00 	lea    0x20f4(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  40233a:	bf 01 00 00 00       	mov    $0x1,%edi
  40233f:	b8 00 00 00 00       	mov    $0x0,%eax
  402344:	e8 77 f0 ff ff       	callq  4013c0 <__printf_chk@plt>
  402349:	bf 01 00 00 00       	mov    $0x1,%edi
  40234e:	e8 bd f0 ff ff       	callq  401410 <exit@plt>

0000000000402353 <Gets>:
  402353:	f3 0f 1e fa          	endbr64 
  402357:	41 54                	push   %r12
  402359:	55                   	push   %rbp
  40235a:	53                   	push   %rbx
  40235b:	49 89 fc             	mov    %rdi,%r12
  40235e:	c7 05 dc 5d 00 00 00 	movl   $0x0,0x5ddc(%rip)        # 408144 <gets_cnt>
  402365:	00 00 00 
  402368:	48 89 fb             	mov    %rdi,%rbx
  40236b:	48 8b 3d 9e 51 00 00 	mov    0x519e(%rip),%rdi        # 407510 <infile>
  402372:	e8 c9 f0 ff ff       	callq  401440 <getc@plt>
  402377:	83 f8 ff             	cmp    $0xffffffff,%eax
  40237a:	74 18                	je     402394 <Gets+0x41>
  40237c:	83 f8 0a             	cmp    $0xa,%eax
  40237f:	74 13                	je     402394 <Gets+0x41>
  402381:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402385:	88 03                	mov    %al,(%rbx)
  402387:	0f b6 f8             	movzbl %al,%edi
  40238a:	e8 17 ff ff ff       	callq  4022a6 <save_char>
  40238f:	48 89 eb             	mov    %rbp,%rbx
  402392:	eb d7                	jmp    40236b <Gets+0x18>
  402394:	c6 03 00             	movb   $0x0,(%rbx)
  402397:	b8 00 00 00 00       	mov    $0x0,%eax
  40239c:	e8 5d ff ff ff       	callq  4022fe <save_term>
  4023a1:	4c 89 e0             	mov    %r12,%rax
  4023a4:	5b                   	pop    %rbx
  4023a5:	5d                   	pop    %rbp
  4023a6:	41 5c                	pop    %r12
  4023a8:	c3                   	retq   

00000000004023a9 <notify_server>:
  4023a9:	f3 0f 1e fa          	endbr64 
  4023ad:	55                   	push   %rbp
  4023ae:	53                   	push   %rbx
  4023af:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  4023b6:	ff 
  4023b7:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4023be:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4023c3:	4c 39 dc             	cmp    %r11,%rsp
  4023c6:	75 ef                	jne    4023b7 <notify_server+0xe>
  4023c8:	48 83 ec 18          	sub    $0x18,%rsp
  4023cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023d3:	00 00 
  4023d5:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4023dc:	00 
  4023dd:	31 c0                	xor    %eax,%eax
  4023df:	83 3d 42 51 00 00 00 	cmpl   $0x0,0x5142(%rip)        # 407528 <is_checker>
  4023e6:	0f 85 b7 01 00 00    	jne    4025a3 <notify_server+0x1fa>
  4023ec:	89 fb                	mov    %edi,%ebx
  4023ee:	81 3d 4c 5d 00 00 9c 	cmpl   $0x1f9c,0x5d4c(%rip)        # 408144 <gets_cnt>
  4023f5:	1f 00 00 
  4023f8:	7f 18                	jg     402412 <notify_server+0x69>
  4023fa:	0f be 05 47 5d 00 00 	movsbl 0x5d47(%rip),%eax        # 408148 <target_prefix>
  402401:	83 3d 98 50 00 00 00 	cmpl   $0x0,0x5098(%rip)        # 4074a0 <notify>
  402408:	74 23                	je     40242d <notify_server+0x84>
  40240a:	8b 15 10 51 00 00    	mov    0x5110(%rip),%edx        # 407520 <authkey>
  402410:	eb 20                	jmp    402432 <notify_server+0x89>
  402412:	48 8d 35 3f 21 00 00 	lea    0x213f(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  402419:	bf 01 00 00 00       	mov    $0x1,%edi
  40241e:	e8 9d ef ff ff       	callq  4013c0 <__printf_chk@plt>
  402423:	bf 01 00 00 00       	mov    $0x1,%edi
  402428:	e8 e3 ef ff ff       	callq  401410 <exit@plt>
  40242d:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402432:	85 db                	test   %ebx,%ebx
  402434:	0f 84 9b 00 00 00    	je     4024d5 <notify_server+0x12c>
  40243a:	48 8d 2d 08 20 00 00 	lea    0x2008(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  402441:	48 89 e7             	mov    %rsp,%rdi
  402444:	48 8d 0d f5 50 00 00 	lea    0x50f5(%rip),%rcx        # 407540 <gets_buf>
  40244b:	51                   	push   %rcx
  40244c:	56                   	push   %rsi
  40244d:	50                   	push   %rax
  40244e:	52                   	push   %rdx
  40244f:	49 89 e9             	mov    %rbp,%r9
  402452:	44 8b 05 f7 4c 00 00 	mov    0x4cf7(%rip),%r8d        # 407150 <target_id>
  402459:	48 8d 0d ee 1f 00 00 	lea    0x1fee(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402460:	ba 00 20 00 00       	mov    $0x2000,%edx
  402465:	be 01 00 00 00       	mov    $0x1,%esi
  40246a:	b8 00 00 00 00       	mov    $0x0,%eax
  40246f:	e8 dc ef ff ff       	callq  401450 <__sprintf_chk@plt>
  402474:	48 83 c4 20          	add    $0x20,%rsp
  402478:	83 3d 21 50 00 00 00 	cmpl   $0x0,0x5021(%rip)        # 4074a0 <notify>
  40247f:	0f 84 95 00 00 00    	je     40251a <notify_server+0x171>
  402485:	48 89 e1             	mov    %rsp,%rcx
  402488:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  40248f:	00 
  402490:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402496:	48 8b 15 cb 4c 00 00 	mov    0x4ccb(%rip),%rdx        # 407168 <lab>
  40249d:	48 8b 35 cc 4c 00 00 	mov    0x4ccc(%rip),%rsi        # 407170 <course>
  4024a4:	48 8b 3d b5 4c 00 00 	mov    0x4cb5(%rip),%rdi        # 407160 <user_id>
  4024ab:	e8 7f 12 00 00       	callq  40372f <driver_post>
  4024b0:	85 c0                	test   %eax,%eax
  4024b2:	78 2d                	js     4024e1 <notify_server+0x138>
  4024b4:	85 db                	test   %ebx,%ebx
  4024b6:	74 51                	je     402509 <notify_server+0x160>
  4024b8:	48 8d 3d c9 20 00 00 	lea    0x20c9(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  4024bf:	e8 ec ed ff ff       	callq  4012b0 <puts@plt>
  4024c4:	48 8d 3d ab 1f 00 00 	lea    0x1fab(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  4024cb:	e8 e0 ed ff ff       	callq  4012b0 <puts@plt>
  4024d0:	e9 ce 00 00 00       	jmpq   4025a3 <notify_server+0x1fa>
  4024d5:	48 8d 2d 68 1f 00 00 	lea    0x1f68(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  4024dc:	e9 60 ff ff ff       	jmpq   402441 <notify_server+0x98>
  4024e1:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4024e8:	00 
  4024e9:	48 8d 35 7a 1f 00 00 	lea    0x1f7a(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  4024f0:	bf 01 00 00 00       	mov    $0x1,%edi
  4024f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4024fa:	e8 c1 ee ff ff       	callq  4013c0 <__printf_chk@plt>
  4024ff:	bf 01 00 00 00       	mov    $0x1,%edi
  402504:	e8 07 ef ff ff       	callq  401410 <exit@plt>
  402509:	48 8d 3d 70 1f 00 00 	lea    0x1f70(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  402510:	e8 9b ed ff ff       	callq  4012b0 <puts@plt>
  402515:	e9 89 00 00 00       	jmpq   4025a3 <notify_server+0x1fa>
  40251a:	48 89 ea             	mov    %rbp,%rdx
  40251d:	48 8d 35 9c 20 00 00 	lea    0x209c(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  402524:	bf 01 00 00 00       	mov    $0x1,%edi
  402529:	b8 00 00 00 00       	mov    $0x0,%eax
  40252e:	e8 8d ee ff ff       	callq  4013c0 <__printf_chk@plt>
  402533:	48 8b 15 26 4c 00 00 	mov    0x4c26(%rip),%rdx        # 407160 <user_id>
  40253a:	48 8d 35 46 1f 00 00 	lea    0x1f46(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  402541:	bf 01 00 00 00       	mov    $0x1,%edi
  402546:	b8 00 00 00 00       	mov    $0x0,%eax
  40254b:	e8 70 ee ff ff       	callq  4013c0 <__printf_chk@plt>
  402550:	48 8b 15 19 4c 00 00 	mov    0x4c19(%rip),%rdx        # 407170 <course>
  402557:	48 8d 35 36 1f 00 00 	lea    0x1f36(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  40255e:	bf 01 00 00 00       	mov    $0x1,%edi
  402563:	b8 00 00 00 00       	mov    $0x0,%eax
  402568:	e8 53 ee ff ff       	callq  4013c0 <__printf_chk@plt>
  40256d:	48 8b 15 f4 4b 00 00 	mov    0x4bf4(%rip),%rdx        # 407168 <lab>
  402574:	48 8d 35 25 1f 00 00 	lea    0x1f25(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  40257b:	bf 01 00 00 00       	mov    $0x1,%edi
  402580:	b8 00 00 00 00       	mov    $0x0,%eax
  402585:	e8 36 ee ff ff       	callq  4013c0 <__printf_chk@plt>
  40258a:	48 89 e2             	mov    %rsp,%rdx
  40258d:	48 8d 35 15 1f 00 00 	lea    0x1f15(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  402594:	bf 01 00 00 00       	mov    $0x1,%edi
  402599:	b8 00 00 00 00       	mov    $0x0,%eax
  40259e:	e8 1d ee ff ff       	callq  4013c0 <__printf_chk@plt>
  4025a3:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4025aa:	00 
  4025ab:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4025b2:	00 00 
  4025b4:	75 0a                	jne    4025c0 <notify_server+0x217>
  4025b6:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4025bd:	5b                   	pop    %rbx
  4025be:	5d                   	pop    %rbp
  4025bf:	c3                   	retq   
  4025c0:	e8 72 02 00 00       	callq  402837 <__stack_chk_fail>

00000000004025c5 <validate>:
  4025c5:	f3 0f 1e fa          	endbr64 
  4025c9:	53                   	push   %rbx
  4025ca:	89 fb                	mov    %edi,%ebx
  4025cc:	83 3d 55 4f 00 00 00 	cmpl   $0x0,0x4f55(%rip)        # 407528 <is_checker>
  4025d3:	74 79                	je     40264e <validate+0x89>
  4025d5:	39 3d 41 4f 00 00    	cmp    %edi,0x4f41(%rip)        # 40751c <vlevel>
  4025db:	75 39                	jne    402616 <validate+0x51>
  4025dd:	8b 15 35 4f 00 00    	mov    0x4f35(%rip),%edx        # 407518 <check_level>
  4025e3:	39 fa                	cmp    %edi,%edx
  4025e5:	75 45                	jne    40262c <validate+0x67>
  4025e7:	0f be 0d 5a 5b 00 00 	movsbl 0x5b5a(%rip),%ecx        # 408148 <target_prefix>
  4025ee:	4c 8d 0d 4b 4f 00 00 	lea    0x4f4b(%rip),%r9        # 407540 <gets_buf>
  4025f5:	41 89 f8             	mov    %edi,%r8d
  4025f8:	8b 15 22 4f 00 00    	mov    0x4f22(%rip),%edx        # 407520 <authkey>
  4025fe:	48 8d 35 0b 20 00 00 	lea    0x200b(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  402605:	bf 01 00 00 00       	mov    $0x1,%edi
  40260a:	b8 00 00 00 00       	mov    $0x0,%eax
  40260f:	e8 ac ed ff ff       	callq  4013c0 <__printf_chk@plt>
  402614:	5b                   	pop    %rbx
  402615:	c3                   	retq   
  402616:	48 8d 3d 98 1e 00 00 	lea    0x1e98(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40261d:	e8 8e ec ff ff       	callq  4012b0 <puts@plt>
  402622:	b8 00 00 00 00       	mov    $0x0,%eax
  402627:	e8 e9 fc ff ff       	callq  402315 <check_fail>
  40262c:	89 f9                	mov    %edi,%ecx
  40262e:	48 8d 35 b3 1f 00 00 	lea    0x1fb3(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  402635:	bf 01 00 00 00       	mov    $0x1,%edi
  40263a:	b8 00 00 00 00       	mov    $0x0,%eax
  40263f:	e8 7c ed ff ff       	callq  4013c0 <__printf_chk@plt>
  402644:	b8 00 00 00 00       	mov    $0x0,%eax
  402649:	e8 c7 fc ff ff       	callq  402315 <check_fail>
  40264e:	39 3d c8 4e 00 00    	cmp    %edi,0x4ec8(%rip)        # 40751c <vlevel>
  402654:	74 1a                	je     402670 <validate+0xab>
  402656:	48 8d 3d 58 1e 00 00 	lea    0x1e58(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  40265d:	e8 4e ec ff ff       	callq  4012b0 <puts@plt>
  402662:	89 de                	mov    %ebx,%esi
  402664:	bf 00 00 00 00       	mov    $0x0,%edi
  402669:	e8 3b fd ff ff       	callq  4023a9 <notify_server>
  40266e:	eb a4                	jmp    402614 <validate+0x4f>
  402670:	0f be 0d d1 5a 00 00 	movsbl 0x5ad1(%rip),%ecx        # 408148 <target_prefix>
  402677:	89 fa                	mov    %edi,%edx
  402679:	48 8d 35 b8 1f 00 00 	lea    0x1fb8(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402680:	bf 01 00 00 00       	mov    $0x1,%edi
  402685:	b8 00 00 00 00       	mov    $0x0,%eax
  40268a:	e8 31 ed ff ff       	callq  4013c0 <__printf_chk@plt>
  40268f:	89 de                	mov    %ebx,%esi
  402691:	bf 01 00 00 00       	mov    $0x1,%edi
  402696:	e8 0e fd ff ff       	callq  4023a9 <notify_server>
  40269b:	e9 74 ff ff ff       	jmpq   402614 <validate+0x4f>

00000000004026a0 <fail>:
  4026a0:	f3 0f 1e fa          	endbr64 
  4026a4:	48 83 ec 08          	sub    $0x8,%rsp
  4026a8:	83 3d 79 4e 00 00 00 	cmpl   $0x0,0x4e79(%rip)        # 407528 <is_checker>
  4026af:	75 11                	jne    4026c2 <fail+0x22>
  4026b1:	89 fe                	mov    %edi,%esi
  4026b3:	bf 00 00 00 00       	mov    $0x0,%edi
  4026b8:	e8 ec fc ff ff       	callq  4023a9 <notify_server>
  4026bd:	48 83 c4 08          	add    $0x8,%rsp
  4026c1:	c3                   	retq   
  4026c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4026c7:	e8 49 fc ff ff       	callq  402315 <check_fail>

00000000004026cc <bushandler>:
  4026cc:	f3 0f 1e fa          	endbr64 
  4026d0:	50                   	push   %rax
  4026d1:	58                   	pop    %rax
  4026d2:	48 83 ec 08          	sub    $0x8,%rsp
  4026d6:	83 3d 4b 4e 00 00 00 	cmpl   $0x0,0x4e4b(%rip)        # 407528 <is_checker>
  4026dd:	74 16                	je     4026f5 <bushandler+0x29>
  4026df:	48 8d 3d ed 1d 00 00 	lea    0x1ded(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  4026e6:	e8 c5 eb ff ff       	callq  4012b0 <puts@plt>
  4026eb:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f0:	e8 20 fc ff ff       	callq  402315 <check_fail>
  4026f5:	48 8d 3d 74 1f 00 00 	lea    0x1f74(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  4026fc:	e8 af eb ff ff       	callq  4012b0 <puts@plt>
  402701:	48 8d 3d d5 1d 00 00 	lea    0x1dd5(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402708:	e8 a3 eb ff ff       	callq  4012b0 <puts@plt>
  40270d:	be 00 00 00 00       	mov    $0x0,%esi
  402712:	bf 00 00 00 00       	mov    $0x0,%edi
  402717:	e8 8d fc ff ff       	callq  4023a9 <notify_server>
  40271c:	bf 01 00 00 00       	mov    $0x1,%edi
  402721:	e8 ea ec ff ff       	callq  401410 <exit@plt>

0000000000402726 <seghandler>:
  402726:	f3 0f 1e fa          	endbr64 
  40272a:	50                   	push   %rax
  40272b:	58                   	pop    %rax
  40272c:	48 83 ec 08          	sub    $0x8,%rsp
  402730:	83 3d f1 4d 00 00 00 	cmpl   $0x0,0x4df1(%rip)        # 407528 <is_checker>
  402737:	74 16                	je     40274f <seghandler+0x29>
  402739:	48 8d 3d b3 1d 00 00 	lea    0x1db3(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  402740:	e8 6b eb ff ff       	callq  4012b0 <puts@plt>
  402745:	b8 00 00 00 00       	mov    $0x0,%eax
  40274a:	e8 c6 fb ff ff       	callq  402315 <check_fail>
  40274f:	48 8d 3d 3a 1f 00 00 	lea    0x1f3a(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  402756:	e8 55 eb ff ff       	callq  4012b0 <puts@plt>
  40275b:	48 8d 3d 7b 1d 00 00 	lea    0x1d7b(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402762:	e8 49 eb ff ff       	callq  4012b0 <puts@plt>
  402767:	be 00 00 00 00       	mov    $0x0,%esi
  40276c:	bf 00 00 00 00       	mov    $0x0,%edi
  402771:	e8 33 fc ff ff       	callq  4023a9 <notify_server>
  402776:	bf 01 00 00 00       	mov    $0x1,%edi
  40277b:	e8 90 ec ff ff       	callq  401410 <exit@plt>

0000000000402780 <illegalhandler>:
  402780:	f3 0f 1e fa          	endbr64 
  402784:	50                   	push   %rax
  402785:	58                   	pop    %rax
  402786:	48 83 ec 08          	sub    $0x8,%rsp
  40278a:	83 3d 97 4d 00 00 00 	cmpl   $0x0,0x4d97(%rip)        # 407528 <is_checker>
  402791:	74 16                	je     4027a9 <illegalhandler+0x29>
  402793:	48 8d 3d 6c 1d 00 00 	lea    0x1d6c(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  40279a:	e8 11 eb ff ff       	callq  4012b0 <puts@plt>
  40279f:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a4:	e8 6c fb ff ff       	callq  402315 <check_fail>
  4027a9:	48 8d 3d 08 1f 00 00 	lea    0x1f08(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  4027b0:	e8 fb ea ff ff       	callq  4012b0 <puts@plt>
  4027b5:	48 8d 3d 21 1d 00 00 	lea    0x1d21(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4027bc:	e8 ef ea ff ff       	callq  4012b0 <puts@plt>
  4027c1:	be 00 00 00 00       	mov    $0x0,%esi
  4027c6:	bf 00 00 00 00       	mov    $0x0,%edi
  4027cb:	e8 d9 fb ff ff       	callq  4023a9 <notify_server>
  4027d0:	bf 01 00 00 00       	mov    $0x1,%edi
  4027d5:	e8 36 ec ff ff       	callq  401410 <exit@plt>

00000000004027da <sigalrmhandler>:
  4027da:	f3 0f 1e fa          	endbr64 
  4027de:	50                   	push   %rax
  4027df:	58                   	pop    %rax
  4027e0:	48 83 ec 08          	sub    $0x8,%rsp
  4027e4:	83 3d 3d 4d 00 00 00 	cmpl   $0x0,0x4d3d(%rip)        # 407528 <is_checker>
  4027eb:	74 16                	je     402803 <sigalrmhandler+0x29>
  4027ed:	48 8d 3d 26 1d 00 00 	lea    0x1d26(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  4027f4:	e8 b7 ea ff ff       	callq  4012b0 <puts@plt>
  4027f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4027fe:	e8 12 fb ff ff       	callq  402315 <check_fail>
  402803:	ba 02 00 00 00       	mov    $0x2,%edx
  402808:	48 8d 35 d9 1e 00 00 	lea    0x1ed9(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  40280f:	bf 01 00 00 00       	mov    $0x1,%edi
  402814:	b8 00 00 00 00       	mov    $0x0,%eax
  402819:	e8 a2 eb ff ff       	callq  4013c0 <__printf_chk@plt>
  40281e:	be 00 00 00 00       	mov    $0x0,%esi
  402823:	bf 00 00 00 00       	mov    $0x0,%edi
  402828:	e8 7c fb ff ff       	callq  4023a9 <notify_server>
  40282d:	bf 01 00 00 00       	mov    $0x1,%edi
  402832:	e8 d9 eb ff ff       	callq  401410 <exit@plt>

0000000000402837 <__stack_chk_fail>:
  402837:	f3 0f 1e fa          	endbr64 
  40283b:	50                   	push   %rax
  40283c:	58                   	pop    %rax
  40283d:	48 83 ec 08          	sub    $0x8,%rsp
  402841:	83 3d e0 4c 00 00 00 	cmpl   $0x0,0x4ce0(%rip)        # 407528 <is_checker>
  402848:	74 16                	je     402860 <__stack_chk_fail+0x29>
  40284a:	48 8d 3d d1 1c 00 00 	lea    0x1cd1(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402851:	e8 5a ea ff ff       	callq  4012b0 <puts@plt>
  402856:	b8 00 00 00 00       	mov    $0x0,%eax
  40285b:	e8 b5 fa ff ff       	callq  402315 <check_fail>
  402860:	48 8d 3d b9 1e 00 00 	lea    0x1eb9(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  402867:	e8 44 ea ff ff       	callq  4012b0 <puts@plt>
  40286c:	48 8d 3d 6a 1c 00 00 	lea    0x1c6a(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402873:	e8 38 ea ff ff       	callq  4012b0 <puts@plt>
  402878:	be 00 00 00 00       	mov    $0x0,%esi
  40287d:	bf 00 00 00 00       	mov    $0x0,%edi
  402882:	e8 22 fb ff ff       	callq  4023a9 <notify_server>
  402887:	bf 01 00 00 00       	mov    $0x1,%edi
  40288c:	e8 7f eb ff ff       	callq  401410 <exit@plt>

0000000000402891 <launch>:
  402891:	f3 0f 1e fa          	endbr64 
  402895:	55                   	push   %rbp
  402896:	48 89 e5             	mov    %rsp,%rbp
  402899:	53                   	push   %rbx
  40289a:	48 83 ec 18          	sub    $0x18,%rsp
  40289e:	48 89 fa             	mov    %rdi,%rdx
  4028a1:	89 f3                	mov    %esi,%ebx
  4028a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4028aa:	00 00 
  4028ac:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4028b0:	31 c0                	xor    %eax,%eax
  4028b2:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4028b6:	48 89 c1             	mov    %rax,%rcx
  4028b9:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4028bd:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4028c3:	48 89 e6             	mov    %rsp,%rsi
  4028c6:	48 29 c6             	sub    %rax,%rsi
  4028c9:	48 89 f0             	mov    %rsi,%rax
  4028cc:	48 39 c4             	cmp    %rax,%rsp
  4028cf:	74 12                	je     4028e3 <launch+0x52>
  4028d1:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4028d8:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4028df:	00 00 
  4028e1:	eb e9                	jmp    4028cc <launch+0x3b>
  4028e3:	48 89 c8             	mov    %rcx,%rax
  4028e6:	25 ff 0f 00 00       	and    $0xfff,%eax
  4028eb:	48 29 c4             	sub    %rax,%rsp
  4028ee:	48 85 c0             	test   %rax,%rax
  4028f1:	74 06                	je     4028f9 <launch+0x68>
  4028f3:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4028f9:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4028fe:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402902:	be f4 00 00 00       	mov    $0xf4,%esi
  402907:	e8 d4 e9 ff ff       	callq  4012e0 <memset@plt>
  40290c:	48 8b 05 ad 4b 00 00 	mov    0x4bad(%rip),%rax        # 4074c0 <stdin@@GLIBC_2.2.5>
  402913:	48 39 05 f6 4b 00 00 	cmp    %rax,0x4bf6(%rip)        # 407510 <infile>
  40291a:	74 42                	je     40295e <launch+0xcd>
  40291c:	c7 05 f6 4b 00 00 00 	movl   $0x0,0x4bf6(%rip)        # 40751c <vlevel>
  402923:	00 00 00 
  402926:	85 db                	test   %ebx,%ebx
  402928:	75 4c                	jne    402976 <launch+0xe5>
  40292a:	b8 00 00 00 00       	mov    $0x0,%eax
  40292f:	e8 14 f9 ff ff       	callq  402248 <test>
  402934:	83 3d ed 4b 00 00 00 	cmpl   $0x0,0x4bed(%rip)        # 407528 <is_checker>
  40293b:	75 45                	jne    402982 <launch+0xf1>
  40293d:	48 8d 3d 05 1c 00 00 	lea    0x1c05(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402944:	e8 67 e9 ff ff       	callq  4012b0 <puts@plt>
  402949:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40294d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402954:	00 00 
  402956:	75 40                	jne    402998 <launch+0x107>
  402958:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40295c:	c9                   	leaveq 
  40295d:	c3                   	retq   
  40295e:	48 8d 35 cc 1b 00 00 	lea    0x1bcc(%rip),%rsi        # 404531 <_IO_stdin_used+0x531>
  402965:	bf 01 00 00 00       	mov    $0x1,%edi
  40296a:	b8 00 00 00 00       	mov    $0x0,%eax
  40296f:	e8 4c ea ff ff       	callq  4013c0 <__printf_chk@plt>
  402974:	eb a6                	jmp    40291c <launch+0x8b>
  402976:	b8 00 00 00 00       	mov    $0x0,%eax
  40297b:	e8 f7 f8 ff ff       	callq  402277 <test2>
  402980:	eb b2                	jmp    402934 <launch+0xa3>
  402982:	48 8d 3d b5 1b 00 00 	lea    0x1bb5(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402989:	e8 22 e9 ff ff       	callq  4012b0 <puts@plt>
  40298e:	b8 00 00 00 00       	mov    $0x0,%eax
  402993:	e8 7d f9 ff ff       	callq  402315 <check_fail>
  402998:	e8 9a fe ff ff       	callq  402837 <__stack_chk_fail>

000000000040299d <stable_launch>:
  40299d:	f3 0f 1e fa          	endbr64 
  4029a1:	55                   	push   %rbp
  4029a2:	53                   	push   %rbx
  4029a3:	48 83 ec 08          	sub    $0x8,%rsp
  4029a7:	89 f5                	mov    %esi,%ebp
  4029a9:	48 89 3d 58 4b 00 00 	mov    %rdi,0x4b58(%rip)        # 407508 <global_offset>
  4029b0:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4029b6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4029bc:	b9 32 01 00 00       	mov    $0x132,%ecx
  4029c1:	ba 07 00 00 00       	mov    $0x7,%edx
  4029c6:	be 00 00 10 00       	mov    $0x100000,%esi
  4029cb:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4029d0:	e8 fb e8 ff ff       	callq  4012d0 <mmap@plt>
  4029d5:	48 89 c3             	mov    %rax,%rbx
  4029d8:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4029de:	75 4a                	jne    402a2a <stable_launch+0x8d>
  4029e0:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4029e7:	48 89 15 62 57 00 00 	mov    %rdx,0x5762(%rip)        # 408150 <stack_top>
  4029ee:	48 89 e0             	mov    %rsp,%rax
  4029f1:	48 89 d4             	mov    %rdx,%rsp
  4029f4:	48 89 c2             	mov    %rax,%rdx
  4029f7:	48 89 15 02 4b 00 00 	mov    %rdx,0x4b02(%rip)        # 407500 <global_save_stack>
  4029fe:	89 ee                	mov    %ebp,%esi
  402a00:	48 8b 3d 01 4b 00 00 	mov    0x4b01(%rip),%rdi        # 407508 <global_offset>
  402a07:	e8 85 fe ff ff       	callq  402891 <launch>
  402a0c:	48 8b 05 ed 4a 00 00 	mov    0x4aed(%rip),%rax        # 407500 <global_save_stack>
  402a13:	48 89 c4             	mov    %rax,%rsp
  402a16:	be 00 00 10 00       	mov    $0x100000,%esi
  402a1b:	48 89 df             	mov    %rbx,%rdi
  402a1e:	e8 8d e9 ff ff       	callq  4013b0 <munmap@plt>
  402a23:	48 83 c4 08          	add    $0x8,%rsp
  402a27:	5b                   	pop    %rbx
  402a28:	5d                   	pop    %rbp
  402a29:	c3                   	retq   
  402a2a:	be 00 00 10 00       	mov    $0x100000,%esi
  402a2f:	48 89 c7             	mov    %rax,%rdi
  402a32:	e8 79 e9 ff ff       	callq  4013b0 <munmap@plt>
  402a37:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402a3c:	48 8d 15 05 1d 00 00 	lea    0x1d05(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402a43:	be 01 00 00 00       	mov    $0x1,%esi
  402a48:	48 8b 3d 91 4a 00 00 	mov    0x4a91(%rip),%rdi        # 4074e0 <stderr@@GLIBC_2.2.5>
  402a4f:	b8 00 00 00 00       	mov    $0x0,%eax
  402a54:	e8 d7 e9 ff ff       	callq  401430 <__fprintf_chk@plt>
  402a59:	bf 01 00 00 00       	mov    $0x1,%edi
  402a5e:	e8 ad e9 ff ff       	callq  401410 <exit@plt>

0000000000402a63 <rio_readinitb>:
  402a63:	89 37                	mov    %esi,(%rdi)
  402a65:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402a6c:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402a70:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402a74:	c3                   	retq   

0000000000402a75 <sigalrm_handler>:
  402a75:	f3 0f 1e fa          	endbr64 
  402a79:	50                   	push   %rax
  402a7a:	58                   	pop    %rax
  402a7b:	48 83 ec 08          	sub    $0x8,%rsp
  402a7f:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a84:	48 8d 15 f5 1c 00 00 	lea    0x1cf5(%rip),%rdx        # 404780 <trans_char+0x10>
  402a8b:	be 01 00 00 00       	mov    $0x1,%esi
  402a90:	48 8b 3d 49 4a 00 00 	mov    0x4a49(%rip),%rdi        # 4074e0 <stderr@@GLIBC_2.2.5>
  402a97:	b8 00 00 00 00       	mov    $0x0,%eax
  402a9c:	e8 8f e9 ff ff       	callq  401430 <__fprintf_chk@plt>
  402aa1:	bf 01 00 00 00       	mov    $0x1,%edi
  402aa6:	e8 65 e9 ff ff       	callq  401410 <exit@plt>

0000000000402aab <rio_writen>:
  402aab:	41 55                	push   %r13
  402aad:	41 54                	push   %r12
  402aaf:	55                   	push   %rbp
  402ab0:	53                   	push   %rbx
  402ab1:	48 83 ec 08          	sub    $0x8,%rsp
  402ab5:	41 89 fc             	mov    %edi,%r12d
  402ab8:	48 89 f5             	mov    %rsi,%rbp
  402abb:	49 89 d5             	mov    %rdx,%r13
  402abe:	48 89 d3             	mov    %rdx,%rbx
  402ac1:	eb 06                	jmp    402ac9 <rio_writen+0x1e>
  402ac3:	48 29 c3             	sub    %rax,%rbx
  402ac6:	48 01 c5             	add    %rax,%rbp
  402ac9:	48 85 db             	test   %rbx,%rbx
  402acc:	74 24                	je     402af2 <rio_writen+0x47>
  402ace:	48 89 da             	mov    %rbx,%rdx
  402ad1:	48 89 ee             	mov    %rbp,%rsi
  402ad4:	44 89 e7             	mov    %r12d,%edi
  402ad7:	e8 e4 e7 ff ff       	callq  4012c0 <write@plt>
  402adc:	48 85 c0             	test   %rax,%rax
  402adf:	7f e2                	jg     402ac3 <rio_writen+0x18>
  402ae1:	e8 7a e7 ff ff       	callq  401260 <__errno_location@plt>
  402ae6:	83 38 04             	cmpl   $0x4,(%rax)
  402ae9:	75 15                	jne    402b00 <rio_writen+0x55>
  402aeb:	b8 00 00 00 00       	mov    $0x0,%eax
  402af0:	eb d1                	jmp    402ac3 <rio_writen+0x18>
  402af2:	4c 89 e8             	mov    %r13,%rax
  402af5:	48 83 c4 08          	add    $0x8,%rsp
  402af9:	5b                   	pop    %rbx
  402afa:	5d                   	pop    %rbp
  402afb:	41 5c                	pop    %r12
  402afd:	41 5d                	pop    %r13
  402aff:	c3                   	retq   
  402b00:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b07:	eb ec                	jmp    402af5 <rio_writen+0x4a>

0000000000402b09 <rio_read>:
  402b09:	41 55                	push   %r13
  402b0b:	41 54                	push   %r12
  402b0d:	55                   	push   %rbp
  402b0e:	53                   	push   %rbx
  402b0f:	48 83 ec 08          	sub    $0x8,%rsp
  402b13:	48 89 fb             	mov    %rdi,%rbx
  402b16:	49 89 f5             	mov    %rsi,%r13
  402b19:	49 89 d4             	mov    %rdx,%r12
  402b1c:	eb 17                	jmp    402b35 <rio_read+0x2c>
  402b1e:	e8 3d e7 ff ff       	callq  401260 <__errno_location@plt>
  402b23:	83 38 04             	cmpl   $0x4,(%rax)
  402b26:	74 0d                	je     402b35 <rio_read+0x2c>
  402b28:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b2f:	eb 54                	jmp    402b85 <rio_read+0x7c>
  402b31:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402b35:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402b38:	85 ed                	test   %ebp,%ebp
  402b3a:	7f 23                	jg     402b5f <rio_read+0x56>
  402b3c:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402b40:	8b 3b                	mov    (%rbx),%edi
  402b42:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b47:	48 89 ee             	mov    %rbp,%rsi
  402b4a:	e8 c1 e7 ff ff       	callq  401310 <read@plt>
  402b4f:	89 43 04             	mov    %eax,0x4(%rbx)
  402b52:	85 c0                	test   %eax,%eax
  402b54:	78 c8                	js     402b1e <rio_read+0x15>
  402b56:	75 d9                	jne    402b31 <rio_read+0x28>
  402b58:	b8 00 00 00 00       	mov    $0x0,%eax
  402b5d:	eb 26                	jmp    402b85 <rio_read+0x7c>
  402b5f:	89 e8                	mov    %ebp,%eax
  402b61:	4c 39 e0             	cmp    %r12,%rax
  402b64:	72 03                	jb     402b69 <rio_read+0x60>
  402b66:	44 89 e5             	mov    %r12d,%ebp
  402b69:	4c 63 e5             	movslq %ebp,%r12
  402b6c:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402b70:	4c 89 e2             	mov    %r12,%rdx
  402b73:	4c 89 ef             	mov    %r13,%rdi
  402b76:	e8 f5 e7 ff ff       	callq  401370 <memcpy@plt>
  402b7b:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402b7f:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402b82:	4c 89 e0             	mov    %r12,%rax
  402b85:	48 83 c4 08          	add    $0x8,%rsp
  402b89:	5b                   	pop    %rbx
  402b8a:	5d                   	pop    %rbp
  402b8b:	41 5c                	pop    %r12
  402b8d:	41 5d                	pop    %r13
  402b8f:	c3                   	retq   

0000000000402b90 <rio_readlineb>:
  402b90:	41 55                	push   %r13
  402b92:	41 54                	push   %r12
  402b94:	55                   	push   %rbp
  402b95:	53                   	push   %rbx
  402b96:	48 83 ec 18          	sub    $0x18,%rsp
  402b9a:	49 89 fd             	mov    %rdi,%r13
  402b9d:	48 89 f5             	mov    %rsi,%rbp
  402ba0:	49 89 d4             	mov    %rdx,%r12
  402ba3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402baa:	00 00 
  402bac:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402bb1:	31 c0                	xor    %eax,%eax
  402bb3:	bb 01 00 00 00       	mov    $0x1,%ebx
  402bb8:	eb 18                	jmp    402bd2 <rio_readlineb+0x42>
  402bba:	85 c0                	test   %eax,%eax
  402bbc:	75 65                	jne    402c23 <rio_readlineb+0x93>
  402bbe:	48 83 fb 01          	cmp    $0x1,%rbx
  402bc2:	75 3d                	jne    402c01 <rio_readlineb+0x71>
  402bc4:	b8 00 00 00 00       	mov    $0x0,%eax
  402bc9:	eb 3d                	jmp    402c08 <rio_readlineb+0x78>
  402bcb:	48 83 c3 01          	add    $0x1,%rbx
  402bcf:	48 89 d5             	mov    %rdx,%rbp
  402bd2:	4c 39 e3             	cmp    %r12,%rbx
  402bd5:	73 2a                	jae    402c01 <rio_readlineb+0x71>
  402bd7:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402bdc:	ba 01 00 00 00       	mov    $0x1,%edx
  402be1:	4c 89 ef             	mov    %r13,%rdi
  402be4:	e8 20 ff ff ff       	callq  402b09 <rio_read>
  402be9:	83 f8 01             	cmp    $0x1,%eax
  402bec:	75 cc                	jne    402bba <rio_readlineb+0x2a>
  402bee:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402bf2:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402bf7:	88 45 00             	mov    %al,0x0(%rbp)
  402bfa:	3c 0a                	cmp    $0xa,%al
  402bfc:	75 cd                	jne    402bcb <rio_readlineb+0x3b>
  402bfe:	48 89 d5             	mov    %rdx,%rbp
  402c01:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402c05:	48 89 d8             	mov    %rbx,%rax
  402c08:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402c0d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402c14:	00 00 
  402c16:	75 14                	jne    402c2c <rio_readlineb+0x9c>
  402c18:	48 83 c4 18          	add    $0x18,%rsp
  402c1c:	5b                   	pop    %rbx
  402c1d:	5d                   	pop    %rbp
  402c1e:	41 5c                	pop    %r12
  402c20:	41 5d                	pop    %r13
  402c22:	c3                   	retq   
  402c23:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402c2a:	eb dc                	jmp    402c08 <rio_readlineb+0x78>
  402c2c:	e8 06 fc ff ff       	callq  402837 <__stack_chk_fail>

0000000000402c31 <urlencode>:
  402c31:	41 54                	push   %r12
  402c33:	55                   	push   %rbp
  402c34:	53                   	push   %rbx
  402c35:	48 83 ec 10          	sub    $0x10,%rsp
  402c39:	48 89 fb             	mov    %rdi,%rbx
  402c3c:	48 89 f5             	mov    %rsi,%rbp
  402c3f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c46:	00 00 
  402c48:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402c4d:	31 c0                	xor    %eax,%eax
  402c4f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402c56:	f2 ae                	repnz scas %es:(%rdi),%al
  402c58:	48 f7 d1             	not    %rcx
  402c5b:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402c5e:	eb 0f                	jmp    402c6f <urlencode+0x3e>
  402c60:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402c64:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402c68:	48 83 c3 01          	add    $0x1,%rbx
  402c6c:	44 89 e0             	mov    %r12d,%eax
  402c6f:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402c73:	85 c0                	test   %eax,%eax
  402c75:	0f 84 a8 00 00 00    	je     402d23 <urlencode+0xf2>
  402c7b:	44 0f b6 03          	movzbl (%rbx),%r8d
  402c7f:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402c83:	0f 94 c2             	sete   %dl
  402c86:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402c8a:	0f 94 c0             	sete   %al
  402c8d:	08 c2                	or     %al,%dl
  402c8f:	75 cf                	jne    402c60 <urlencode+0x2f>
  402c91:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402c95:	74 c9                	je     402c60 <urlencode+0x2f>
  402c97:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402c9b:	74 c3                	je     402c60 <urlencode+0x2f>
  402c9d:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402ca1:	3c 09                	cmp    $0x9,%al
  402ca3:	76 bb                	jbe    402c60 <urlencode+0x2f>
  402ca5:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402ca9:	3c 19                	cmp    $0x19,%al
  402cab:	76 b3                	jbe    402c60 <urlencode+0x2f>
  402cad:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402cb1:	3c 19                	cmp    $0x19,%al
  402cb3:	76 ab                	jbe    402c60 <urlencode+0x2f>
  402cb5:	41 80 f8 20          	cmp    $0x20,%r8b
  402cb9:	74 56                	je     402d11 <urlencode+0xe0>
  402cbb:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402cbf:	3c 5f                	cmp    $0x5f,%al
  402cc1:	0f 96 c2             	setbe  %dl
  402cc4:	41 80 f8 09          	cmp    $0x9,%r8b
  402cc8:	0f 94 c0             	sete   %al
  402ccb:	08 c2                	or     %al,%dl
  402ccd:	74 4f                	je     402d1e <urlencode+0xed>
  402ccf:	48 89 e7             	mov    %rsp,%rdi
  402cd2:	45 0f b6 c0          	movzbl %r8b,%r8d
  402cd6:	48 8d 0d 58 1b 00 00 	lea    0x1b58(%rip),%rcx        # 404835 <trans_char+0xc5>
  402cdd:	ba 08 00 00 00       	mov    $0x8,%edx
  402ce2:	be 01 00 00 00       	mov    $0x1,%esi
  402ce7:	b8 00 00 00 00       	mov    $0x0,%eax
  402cec:	e8 5f e7 ff ff       	callq  401450 <__sprintf_chk@plt>
  402cf1:	0f b6 04 24          	movzbl (%rsp),%eax
  402cf5:	88 45 00             	mov    %al,0x0(%rbp)
  402cf8:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402cfd:	88 45 01             	mov    %al,0x1(%rbp)
  402d00:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402d05:	88 45 02             	mov    %al,0x2(%rbp)
  402d08:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402d0c:	e9 57 ff ff ff       	jmpq   402c68 <urlencode+0x37>
  402d11:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402d15:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402d19:	e9 4a ff ff ff       	jmpq   402c68 <urlencode+0x37>
  402d1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d23:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402d28:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402d2f:	00 00 
  402d31:	75 09                	jne    402d3c <urlencode+0x10b>
  402d33:	48 83 c4 10          	add    $0x10,%rsp
  402d37:	5b                   	pop    %rbx
  402d38:	5d                   	pop    %rbp
  402d39:	41 5c                	pop    %r12
  402d3b:	c3                   	retq   
  402d3c:	e8 f6 fa ff ff       	callq  402837 <__stack_chk_fail>

0000000000402d41 <submitr>:
  402d41:	f3 0f 1e fa          	endbr64 
  402d45:	41 57                	push   %r15
  402d47:	41 56                	push   %r14
  402d49:	41 55                	push   %r13
  402d4b:	41 54                	push   %r12
  402d4d:	55                   	push   %rbp
  402d4e:	53                   	push   %rbx
  402d4f:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402d56:	ff 
  402d57:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402d5e:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402d63:	4c 39 dc             	cmp    %r11,%rsp
  402d66:	75 ef                	jne    402d57 <submitr+0x16>
  402d68:	48 83 ec 68          	sub    $0x68,%rsp
  402d6c:	49 89 fc             	mov    %rdi,%r12
  402d6f:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402d73:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402d78:	49 89 cd             	mov    %rcx,%r13
  402d7b:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402d80:	4d 89 ce             	mov    %r9,%r14
  402d83:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402d8a:	00 
  402d8b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d92:	00 00 
  402d94:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402d9b:	00 
  402d9c:	31 c0                	xor    %eax,%eax
  402d9e:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402da5:	00 
  402da6:	ba 00 00 00 00       	mov    $0x0,%edx
  402dab:	be 01 00 00 00       	mov    $0x1,%esi
  402db0:	bf 02 00 00 00       	mov    $0x2,%edi
  402db5:	e8 a6 e6 ff ff       	callq  401460 <socket@plt>
  402dba:	85 c0                	test   %eax,%eax
  402dbc:	0f 88 a5 02 00 00    	js     403067 <submitr+0x326>
  402dc2:	89 c3                	mov    %eax,%ebx
  402dc4:	4c 89 e7             	mov    %r12,%rdi
  402dc7:	e8 74 e5 ff ff       	callq  401340 <gethostbyname@plt>
  402dcc:	48 85 c0             	test   %rax,%rax
  402dcf:	0f 84 de 02 00 00    	je     4030b3 <submitr+0x372>
  402dd5:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402dda:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402de1:	00 00 
  402de3:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402dea:	00 00 
  402dec:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402df3:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402df7:	48 8b 40 18          	mov    0x18(%rax),%rax
  402dfb:	48 8b 30             	mov    (%rax),%rsi
  402dfe:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402e03:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402e08:	e8 43 e5 ff ff       	callq  401350 <__memmove_chk@plt>
  402e0d:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402e12:	66 c1 c6 08          	rol    $0x8,%si
  402e16:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402e1b:	ba 10 00 00 00       	mov    $0x10,%edx
  402e20:	4c 89 fe             	mov    %r15,%rsi
  402e23:	89 df                	mov    %ebx,%edi
  402e25:	e8 f6 e5 ff ff       	callq  401420 <connect@plt>
  402e2a:	85 c0                	test   %eax,%eax
  402e2c:	0f 88 f7 02 00 00    	js     403129 <submitr+0x3e8>
  402e32:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402e39:	b8 00 00 00 00       	mov    $0x0,%eax
  402e3e:	48 89 f1             	mov    %rsi,%rcx
  402e41:	4c 89 f7             	mov    %r14,%rdi
  402e44:	f2 ae                	repnz scas %es:(%rdi),%al
  402e46:	48 89 ca             	mov    %rcx,%rdx
  402e49:	48 f7 d2             	not    %rdx
  402e4c:	48 89 f1             	mov    %rsi,%rcx
  402e4f:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402e54:	f2 ae                	repnz scas %es:(%rdi),%al
  402e56:	48 f7 d1             	not    %rcx
  402e59:	49 89 c8             	mov    %rcx,%r8
  402e5c:	48 89 f1             	mov    %rsi,%rcx
  402e5f:	4c 89 ef             	mov    %r13,%rdi
  402e62:	f2 ae                	repnz scas %es:(%rdi),%al
  402e64:	48 f7 d1             	not    %rcx
  402e67:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402e6c:	48 89 f1             	mov    %rsi,%rcx
  402e6f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402e74:	f2 ae                	repnz scas %es:(%rdi),%al
  402e76:	48 89 c8             	mov    %rcx,%rax
  402e79:	48 f7 d0             	not    %rax
  402e7c:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402e81:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402e86:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402e8d:	00 
  402e8e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402e94:	0f 87 f7 02 00 00    	ja     403191 <submitr+0x450>
  402e9a:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402ea1:	00 
  402ea2:	b9 00 04 00 00       	mov    $0x400,%ecx
  402ea7:	b8 00 00 00 00       	mov    $0x0,%eax
  402eac:	48 89 f7             	mov    %rsi,%rdi
  402eaf:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402eb2:	4c 89 f7             	mov    %r14,%rdi
  402eb5:	e8 77 fd ff ff       	callq  402c31 <urlencode>
  402eba:	85 c0                	test   %eax,%eax
  402ebc:	0f 88 42 03 00 00    	js     403204 <submitr+0x4c3>
  402ec2:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402ec9:	00 
  402eca:	48 83 ec 08          	sub    $0x8,%rsp
  402ece:	41 54                	push   %r12
  402ed0:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402ed7:	00 
  402ed8:	50                   	push   %rax
  402ed9:	41 55                	push   %r13
  402edb:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402ee0:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402ee5:	48 8d 0d bc 18 00 00 	lea    0x18bc(%rip),%rcx        # 4047a8 <trans_char+0x38>
  402eec:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ef1:	be 01 00 00 00       	mov    $0x1,%esi
  402ef6:	4c 89 ff             	mov    %r15,%rdi
  402ef9:	b8 00 00 00 00       	mov    $0x0,%eax
  402efe:	e8 4d e5 ff ff       	callq  401450 <__sprintf_chk@plt>
  402f03:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402f0a:	b8 00 00 00 00       	mov    $0x0,%eax
  402f0f:	4c 89 ff             	mov    %r15,%rdi
  402f12:	f2 ae                	repnz scas %es:(%rdi),%al
  402f14:	48 f7 d1             	not    %rcx
  402f17:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402f1b:	48 83 c4 20          	add    $0x20,%rsp
  402f1f:	4c 89 fe             	mov    %r15,%rsi
  402f22:	89 df                	mov    %ebx,%edi
  402f24:	e8 82 fb ff ff       	callq  402aab <rio_writen>
  402f29:	48 85 c0             	test   %rax,%rax
  402f2c:	0f 88 5d 03 00 00    	js     40328f <submitr+0x54e>
  402f32:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402f37:	89 de                	mov    %ebx,%esi
  402f39:	4c 89 e7             	mov    %r12,%rdi
  402f3c:	e8 22 fb ff ff       	callq  402a63 <rio_readinitb>
  402f41:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402f48:	00 
  402f49:	ba 00 20 00 00       	mov    $0x2000,%edx
  402f4e:	4c 89 e7             	mov    %r12,%rdi
  402f51:	e8 3a fc ff ff       	callq  402b90 <rio_readlineb>
  402f56:	48 85 c0             	test   %rax,%rax
  402f59:	0f 8e 9c 03 00 00    	jle    4032fb <submitr+0x5ba>
  402f5f:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402f64:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402f6b:	00 
  402f6c:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402f73:	00 
  402f74:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402f7b:	00 
  402f7c:	48 8d 35 b9 18 00 00 	lea    0x18b9(%rip),%rsi        # 40483c <trans_char+0xcc>
  402f83:	b8 00 00 00 00       	mov    $0x0,%eax
  402f88:	e8 13 e4 ff ff       	callq  4013a0 <__isoc99_sscanf@plt>
  402f8d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402f94:	00 
  402f95:	b9 03 00 00 00       	mov    $0x3,%ecx
  402f9a:	48 8d 3d b2 18 00 00 	lea    0x18b2(%rip),%rdi        # 404853 <trans_char+0xe3>
  402fa1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402fa3:	0f 97 c0             	seta   %al
  402fa6:	1c 00                	sbb    $0x0,%al
  402fa8:	84 c0                	test   %al,%al
  402faa:	0f 84 cb 03 00 00    	je     40337b <submitr+0x63a>
  402fb0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402fb7:	00 
  402fb8:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402fbd:	ba 00 20 00 00       	mov    $0x2000,%edx
  402fc2:	e8 c9 fb ff ff       	callq  402b90 <rio_readlineb>
  402fc7:	48 85 c0             	test   %rax,%rax
  402fca:	7f c1                	jg     402f8d <submitr+0x24c>
  402fcc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402fd3:	3a 20 43 
  402fd6:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402fdd:	20 75 6e 
  402fe0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402fe4:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402fe8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fef:	74 6f 20 
  402ff2:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402ff9:	68 65 61 
  402ffc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403000:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403004:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40300b:	66 72 6f 
  40300e:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  403015:	6f 6c 61 
  403018:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40301c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403020:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  403027:	76 65 72 
  40302a:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40302e:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  403032:	89 df                	mov    %ebx,%edi
  403034:	e8 c7 e2 ff ff       	callq  401300 <close@plt>
  403039:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40303e:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  403045:	00 
  403046:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40304d:	00 00 
  40304f:	0f 85 96 04 00 00    	jne    4034eb <submitr+0x7aa>
  403055:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  40305c:	5b                   	pop    %rbx
  40305d:	5d                   	pop    %rbp
  40305e:	41 5c                	pop    %r12
  403060:	41 5d                	pop    %r13
  403062:	41 5e                	pop    %r14
  403064:	41 5f                	pop    %r15
  403066:	c3                   	retq   
  403067:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40306e:	3a 20 43 
  403071:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403078:	20 75 6e 
  40307b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40307f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403083:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40308a:	74 6f 20 
  40308d:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403094:	65 20 73 
  403097:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40309b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40309f:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4030a6:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4030ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030b1:	eb 8b                	jmp    40303e <submitr+0x2fd>
  4030b3:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4030ba:	3a 20 44 
  4030bd:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4030c4:	20 75 6e 
  4030c7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4030cb:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4030cf:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4030d6:	74 6f 20 
  4030d9:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4030e0:	76 65 20 
  4030e3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4030e7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4030eb:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4030f2:	61 62 20 
  4030f5:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  4030fc:	72 20 61 
  4030ff:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403103:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403107:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  40310e:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  403114:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  403118:	89 df                	mov    %ebx,%edi
  40311a:	e8 e1 e1 ff ff       	callq  401300 <close@plt>
  40311f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403124:	e9 15 ff ff ff       	jmpq   40303e <submitr+0x2fd>
  403129:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403130:	3a 20 55 
  403133:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40313a:	20 74 6f 
  40313d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403141:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403145:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40314c:	65 63 74 
  40314f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403156:	68 65 20 
  403159:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40315d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403161:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403168:	61 62 20 
  40316b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40316f:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403176:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  40317c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403180:	89 df                	mov    %ebx,%edi
  403182:	e8 79 e1 ff ff       	callq  401300 <close@plt>
  403187:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40318c:	e9 ad fe ff ff       	jmpq   40303e <submitr+0x2fd>
  403191:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403198:	3a 20 52 
  40319b:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4031a2:	20 73 74 
  4031a5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031a9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031ad:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4031b4:	74 6f 6f 
  4031b7:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4031be:	65 2e 20 
  4031c1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031c5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031c9:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4031d0:	61 73 65 
  4031d3:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4031da:	49 54 52 
  4031dd:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031e1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031e5:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4031ec:	55 46 00 
  4031ef:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4031f3:	89 df                	mov    %ebx,%edi
  4031f5:	e8 06 e1 ff ff       	callq  401300 <close@plt>
  4031fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031ff:	e9 3a fe ff ff       	jmpq   40303e <submitr+0x2fd>
  403204:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40320b:	3a 20 52 
  40320e:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  403215:	20 73 74 
  403218:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40321c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403220:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403227:	63 6f 6e 
  40322a:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403231:	20 61 6e 
  403234:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403238:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40323c:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403243:	67 61 6c 
  403246:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40324d:	6e 70 72 
  403250:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403254:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403258:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40325f:	6c 65 20 
  403262:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403269:	63 74 65 
  40326c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403270:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  403274:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40327a:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  40327e:	89 df                	mov    %ebx,%edi
  403280:	e8 7b e0 ff ff       	callq  401300 <close@plt>
  403285:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40328a:	e9 af fd ff ff       	jmpq   40303e <submitr+0x2fd>
  40328f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403296:	3a 20 43 
  403299:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4032a0:	20 75 6e 
  4032a3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032a7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032ab:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032b2:	74 6f 20 
  4032b5:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4032bc:	20 74 6f 
  4032bf:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032c3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032c7:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4032ce:	41 75 74 
  4032d1:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4032d8:	73 65 72 
  4032db:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4032df:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4032e3:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  4032ea:	89 df                	mov    %ebx,%edi
  4032ec:	e8 0f e0 ff ff       	callq  401300 <close@plt>
  4032f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032f6:	e9 43 fd ff ff       	jmpq   40303e <submitr+0x2fd>
  4032fb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403302:	3a 20 43 
  403305:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40330c:	20 75 6e 
  40330f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403313:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403317:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40331e:	74 6f 20 
  403321:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403328:	66 69 72 
  40332b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40332f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403333:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40333a:	61 64 65 
  40333d:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403344:	6d 20 41 
  403347:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40334b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40334f:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403356:	62 20 73 
  403359:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40335d:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  403364:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  40336a:	89 df                	mov    %ebx,%edi
  40336c:	e8 8f df ff ff       	callq  401300 <close@plt>
  403371:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403376:	e9 c3 fc ff ff       	jmpq   40303e <submitr+0x2fd>
  40337b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403382:	00 
  403383:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403388:	ba 00 20 00 00       	mov    $0x2000,%edx
  40338d:	e8 fe f7 ff ff       	callq  402b90 <rio_readlineb>
  403392:	48 85 c0             	test   %rax,%rax
  403395:	0f 8e 96 00 00 00    	jle    403431 <submitr+0x6f0>
  40339b:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  4033a0:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4033a7:	0f 85 05 01 00 00    	jne    4034b2 <submitr+0x771>
  4033ad:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4033b4:	00 
  4033b5:	48 89 ef             	mov    %rbp,%rdi
  4033b8:	e8 e3 de ff ff       	callq  4012a0 <strcpy@plt>
  4033bd:	89 df                	mov    %ebx,%edi
  4033bf:	e8 3c df ff ff       	callq  401300 <close@plt>
  4033c4:	b9 04 00 00 00       	mov    $0x4,%ecx
  4033c9:	48 8d 3d 7d 14 00 00 	lea    0x147d(%rip),%rdi        # 40484d <trans_char+0xdd>
  4033d0:	48 89 ee             	mov    %rbp,%rsi
  4033d3:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4033d5:	0f 97 c0             	seta   %al
  4033d8:	1c 00                	sbb    $0x0,%al
  4033da:	0f be c0             	movsbl %al,%eax
  4033dd:	85 c0                	test   %eax,%eax
  4033df:	0f 84 59 fc ff ff    	je     40303e <submitr+0x2fd>
  4033e5:	b9 05 00 00 00       	mov    $0x5,%ecx
  4033ea:	48 8d 3d 60 14 00 00 	lea    0x1460(%rip),%rdi        # 404851 <trans_char+0xe1>
  4033f1:	48 89 ee             	mov    %rbp,%rsi
  4033f4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4033f6:	0f 97 c0             	seta   %al
  4033f9:	1c 00                	sbb    $0x0,%al
  4033fb:	0f be c0             	movsbl %al,%eax
  4033fe:	85 c0                	test   %eax,%eax
  403400:	0f 84 38 fc ff ff    	je     40303e <submitr+0x2fd>
  403406:	b9 03 00 00 00       	mov    $0x3,%ecx
  40340b:	48 8d 3d 44 14 00 00 	lea    0x1444(%rip),%rdi        # 404856 <trans_char+0xe6>
  403412:	48 89 ee             	mov    %rbp,%rsi
  403415:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403417:	0f 97 c0             	seta   %al
  40341a:	1c 00                	sbb    $0x0,%al
  40341c:	0f be c0             	movsbl %al,%eax
  40341f:	85 c0                	test   %eax,%eax
  403421:	0f 84 17 fc ff ff    	je     40303e <submitr+0x2fd>
  403427:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40342c:	e9 0d fc ff ff       	jmpq   40303e <submitr+0x2fd>
  403431:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403438:	3a 20 43 
  40343b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403442:	20 75 6e 
  403445:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403449:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40344d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403454:	74 6f 20 
  403457:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40345e:	73 74 61 
  403461:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403465:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403469:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403470:	65 73 73 
  403473:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40347a:	72 6f 6d 
  40347d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403481:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403485:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  40348c:	6c 61 62 
  40348f:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403496:	65 72 00 
  403499:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40349d:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  4034a1:	89 df                	mov    %ebx,%edi
  4034a3:	e8 58 de ff ff       	callq  401300 <close@plt>
  4034a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034ad:	e9 8c fb ff ff       	jmpq   40303e <submitr+0x2fd>
  4034b2:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  4034b9:	00 
  4034ba:	48 8d 0d 47 13 00 00 	lea    0x1347(%rip),%rcx        # 404808 <trans_char+0x98>
  4034c1:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4034c8:	be 01 00 00 00       	mov    $0x1,%esi
  4034cd:	48 89 ef             	mov    %rbp,%rdi
  4034d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4034d5:	e8 76 df ff ff       	callq  401450 <__sprintf_chk@plt>
  4034da:	89 df                	mov    %ebx,%edi
  4034dc:	e8 1f de ff ff       	callq  401300 <close@plt>
  4034e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034e6:	e9 53 fb ff ff       	jmpq   40303e <submitr+0x2fd>
  4034eb:	e8 47 f3 ff ff       	callq  402837 <__stack_chk_fail>

00000000004034f0 <init_timeout>:
  4034f0:	f3 0f 1e fa          	endbr64 
  4034f4:	85 ff                	test   %edi,%edi
  4034f6:	74 26                	je     40351e <init_timeout+0x2e>
  4034f8:	53                   	push   %rbx
  4034f9:	89 fb                	mov    %edi,%ebx
  4034fb:	78 1a                	js     403517 <init_timeout+0x27>
  4034fd:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402a75 <sigalrm_handler>
  403504:	bf 0e 00 00 00       	mov    $0xe,%edi
  403509:	e8 22 de ff ff       	callq  401330 <signal@plt>
  40350e:	89 df                	mov    %ebx,%edi
  403510:	e8 db dd ff ff       	callq  4012f0 <alarm@plt>
  403515:	5b                   	pop    %rbx
  403516:	c3                   	retq   
  403517:	bb 00 00 00 00       	mov    $0x0,%ebx
  40351c:	eb df                	jmp    4034fd <init_timeout+0xd>
  40351e:	c3                   	retq   

000000000040351f <init_driver>:
  40351f:	f3 0f 1e fa          	endbr64 
  403523:	41 54                	push   %r12
  403525:	55                   	push   %rbp
  403526:	53                   	push   %rbx
  403527:	48 83 ec 20          	sub    $0x20,%rsp
  40352b:	48 89 fd             	mov    %rdi,%rbp
  40352e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403535:	00 00 
  403537:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40353c:	31 c0                	xor    %eax,%eax
  40353e:	be 01 00 00 00       	mov    $0x1,%esi
  403543:	bf 0d 00 00 00       	mov    $0xd,%edi
  403548:	e8 e3 dd ff ff       	callq  401330 <signal@plt>
  40354d:	be 01 00 00 00       	mov    $0x1,%esi
  403552:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403557:	e8 d4 dd ff ff       	callq  401330 <signal@plt>
  40355c:	be 01 00 00 00       	mov    $0x1,%esi
  403561:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403566:	e8 c5 dd ff ff       	callq  401330 <signal@plt>
  40356b:	ba 00 00 00 00       	mov    $0x0,%edx
  403570:	be 01 00 00 00       	mov    $0x1,%esi
  403575:	bf 02 00 00 00       	mov    $0x2,%edi
  40357a:	e8 e1 de ff ff       	callq  401460 <socket@plt>
  40357f:	85 c0                	test   %eax,%eax
  403581:	0f 88 9c 00 00 00    	js     403623 <init_driver+0x104>
  403587:	89 c3                	mov    %eax,%ebx
  403589:	48 8d 3d c9 12 00 00 	lea    0x12c9(%rip),%rdi        # 404859 <trans_char+0xe9>
  403590:	e8 ab dd ff ff       	callq  401340 <gethostbyname@plt>
  403595:	48 85 c0             	test   %rax,%rax
  403598:	0f 84 d1 00 00 00    	je     40366f <init_driver+0x150>
  40359e:	49 89 e4             	mov    %rsp,%r12
  4035a1:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4035a8:	00 
  4035a9:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4035b0:	00 00 
  4035b2:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4035b8:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4035bc:	48 8b 40 18          	mov    0x18(%rax),%rax
  4035c0:	48 8b 30             	mov    (%rax),%rsi
  4035c3:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4035c8:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4035cd:	e8 7e dd ff ff       	callq  401350 <__memmove_chk@plt>
  4035d2:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  4035d9:	ba 10 00 00 00       	mov    $0x10,%edx
  4035de:	4c 89 e6             	mov    %r12,%rsi
  4035e1:	89 df                	mov    %ebx,%edi
  4035e3:	e8 38 de ff ff       	callq  401420 <connect@plt>
  4035e8:	85 c0                	test   %eax,%eax
  4035ea:	0f 88 e7 00 00 00    	js     4036d7 <init_driver+0x1b8>
  4035f0:	89 df                	mov    %ebx,%edi
  4035f2:	e8 09 dd ff ff       	callq  401300 <close@plt>
  4035f7:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4035fd:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  403601:	b8 00 00 00 00       	mov    $0x0,%eax
  403606:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40360b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  403612:	00 00 
  403614:	0f 85 10 01 00 00    	jne    40372a <init_driver+0x20b>
  40361a:	48 83 c4 20          	add    $0x20,%rsp
  40361e:	5b                   	pop    %rbx
  40361f:	5d                   	pop    %rbp
  403620:	41 5c                	pop    %r12
  403622:	c3                   	retq   
  403623:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40362a:	3a 20 43 
  40362d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403634:	20 75 6e 
  403637:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40363b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40363f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403646:	74 6f 20 
  403649:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403650:	65 20 73 
  403653:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403657:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40365b:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403662:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403668:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40366d:	eb 97                	jmp    403606 <init_driver+0xe7>
  40366f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403676:	3a 20 44 
  403679:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403680:	20 75 6e 
  403683:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403687:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40368b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403692:	74 6f 20 
  403695:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40369c:	76 65 20 
  40369f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4036a3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4036a7:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4036ae:	72 20 61 
  4036b1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4036b5:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4036bc:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4036c2:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4036c6:	89 df                	mov    %ebx,%edi
  4036c8:	e8 33 dc ff ff       	callq  401300 <close@plt>
  4036cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4036d2:	e9 2f ff ff ff       	jmpq   403606 <init_driver+0xe7>
  4036d7:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4036de:	3a 20 55 
  4036e1:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4036e8:	20 74 6f 
  4036eb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4036ef:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4036f3:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4036fa:	65 63 74 
  4036fd:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  403704:	65 72 76 
  403707:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40370b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40370f:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  403715:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  403719:	89 df                	mov    %ebx,%edi
  40371b:	e8 e0 db ff ff       	callq  401300 <close@plt>
  403720:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403725:	e9 dc fe ff ff       	jmpq   403606 <init_driver+0xe7>
  40372a:	e8 08 f1 ff ff       	callq  402837 <__stack_chk_fail>

000000000040372f <driver_post>:
  40372f:	f3 0f 1e fa          	endbr64 
  403733:	53                   	push   %rbx
  403734:	4c 89 cb             	mov    %r9,%rbx
  403737:	45 85 c0             	test   %r8d,%r8d
  40373a:	75 18                	jne    403754 <driver_post+0x25>
  40373c:	48 85 ff             	test   %rdi,%rdi
  40373f:	74 05                	je     403746 <driver_post+0x17>
  403741:	80 3f 00             	cmpb   $0x0,(%rdi)
  403744:	75 37                	jne    40377d <driver_post+0x4e>
  403746:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40374b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40374f:	44 89 c0             	mov    %r8d,%eax
  403752:	5b                   	pop    %rbx
  403753:	c3                   	retq   
  403754:	48 89 ca             	mov    %rcx,%rdx
  403757:	48 8d 35 0b 11 00 00 	lea    0x110b(%rip),%rsi        # 404869 <trans_char+0xf9>
  40375e:	bf 01 00 00 00       	mov    $0x1,%edi
  403763:	b8 00 00 00 00       	mov    $0x0,%eax
  403768:	e8 53 dc ff ff       	callq  4013c0 <__printf_chk@plt>
  40376d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403772:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403776:	b8 00 00 00 00       	mov    $0x0,%eax
  40377b:	eb d5                	jmp    403752 <driver_post+0x23>
  40377d:	48 83 ec 08          	sub    $0x8,%rsp
  403781:	41 51                	push   %r9
  403783:	49 89 c9             	mov    %rcx,%r9
  403786:	49 89 d0             	mov    %rdx,%r8
  403789:	48 89 f9             	mov    %rdi,%rcx
  40378c:	48 89 f2             	mov    %rsi,%rdx
  40378f:	be 39 30 00 00       	mov    $0x3039,%esi
  403794:	48 8d 3d be 10 00 00 	lea    0x10be(%rip),%rdi        # 404859 <trans_char+0xe9>
  40379b:	e8 a1 f5 ff ff       	callq  402d41 <submitr>
  4037a0:	48 83 c4 10          	add    $0x10,%rsp
  4037a4:	eb ac                	jmp    403752 <driver_post+0x23>

00000000004037a6 <check>:
  4037a6:	f3 0f 1e fa          	endbr64 
  4037aa:	89 f8                	mov    %edi,%eax
  4037ac:	c1 e8 1c             	shr    $0x1c,%eax
  4037af:	74 1d                	je     4037ce <check+0x28>
  4037b1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4037b6:	83 f9 1f             	cmp    $0x1f,%ecx
  4037b9:	7f 0d                	jg     4037c8 <check+0x22>
  4037bb:	89 f8                	mov    %edi,%eax
  4037bd:	d3 e8                	shr    %cl,%eax
  4037bf:	3c 0a                	cmp    $0xa,%al
  4037c1:	74 11                	je     4037d4 <check+0x2e>
  4037c3:	83 c1 08             	add    $0x8,%ecx
  4037c6:	eb ee                	jmp    4037b6 <check+0x10>
  4037c8:	b8 01 00 00 00       	mov    $0x1,%eax
  4037cd:	c3                   	retq   
  4037ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4037d3:	c3                   	retq   
  4037d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4037d9:	c3                   	retq   

00000000004037da <gencookie>:
  4037da:	f3 0f 1e fa          	endbr64 
  4037de:	53                   	push   %rbx
  4037df:	83 c7 01             	add    $0x1,%edi
  4037e2:	e8 89 da ff ff       	callq  401270 <srandom@plt>
  4037e7:	e8 a4 db ff ff       	callq  401390 <random@plt>
  4037ec:	48 89 c7             	mov    %rax,%rdi
  4037ef:	89 c3                	mov    %eax,%ebx
  4037f1:	e8 b0 ff ff ff       	callq  4037a6 <check>
  4037f6:	85 c0                	test   %eax,%eax
  4037f8:	74 ed                	je     4037e7 <gencookie+0xd>
  4037fa:	89 d8                	mov    %ebx,%eax
  4037fc:	5b                   	pop    %rbx
  4037fd:	c3                   	retq   
  4037fe:	66 90                	xchg   %ax,%ax

0000000000403800 <__libc_csu_init>:
  403800:	f3 0f 1e fa          	endbr64 
  403804:	41 57                	push   %r15
  403806:	4c 8d 3d 03 36 00 00 	lea    0x3603(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  40380d:	41 56                	push   %r14
  40380f:	49 89 d6             	mov    %rdx,%r14
  403812:	41 55                	push   %r13
  403814:	49 89 f5             	mov    %rsi,%r13
  403817:	41 54                	push   %r12
  403819:	41 89 fc             	mov    %edi,%r12d
  40381c:	55                   	push   %rbp
  40381d:	48 8d 2d f4 35 00 00 	lea    0x35f4(%rip),%rbp        # 406e18 <__init_array_end>
  403824:	53                   	push   %rbx
  403825:	4c 29 fd             	sub    %r15,%rbp
  403828:	48 83 ec 08          	sub    $0x8,%rsp
  40382c:	e8 cf d7 ff ff       	callq  401000 <_init>
  403831:	48 c1 fd 03          	sar    $0x3,%rbp
  403835:	74 1f                	je     403856 <__libc_csu_init+0x56>
  403837:	31 db                	xor    %ebx,%ebx
  403839:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403840:	4c 89 f2             	mov    %r14,%rdx
  403843:	4c 89 ee             	mov    %r13,%rsi
  403846:	44 89 e7             	mov    %r12d,%edi
  403849:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40384d:	48 83 c3 01          	add    $0x1,%rbx
  403851:	48 39 dd             	cmp    %rbx,%rbp
  403854:	75 ea                	jne    403840 <__libc_csu_init+0x40>
  403856:	48 83 c4 08          	add    $0x8,%rsp
  40385a:	5b                   	pop    %rbx
  40385b:	5d                   	pop    %rbp
  40385c:	41 5c                	pop    %r12
  40385e:	41 5d                	pop    %r13
  403860:	41 5e                	pop    %r14
  403862:	41 5f                	pop    %r15
  403864:	c3                   	retq   
  403865:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40386c:	00 00 00 00 

0000000000403870 <__libc_csu_fini>:
  403870:	f3 0f 1e fa          	endbr64 
  403874:	c3                   	retq   

Disassembly of section .fini:

0000000000403878 <_fini>:
  403878:	f3 0f 1e fa          	endbr64 
  40387c:	48 83 ec 08          	sub    $0x8,%rsp
  403880:	48 83 c4 08          	add    $0x8,%rsp
  403884:	c3                   	retq   

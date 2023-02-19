
rtarget:     file format elf64-x86-64


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
  401483:	49 c7 c0 50 3a 40 00 	mov    $0x403a50,%r8
  40148a:	48 c7 c1 e0 39 40 00 	mov    $0x4039e0,%rcx
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
  401636:	e8 72 23 00 00       	callq  4039ad <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 65 23 00 00       	callq  4039ad <gencookie>
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
  401689:	c6 05 b8 6a 00 00 72 	movb   $0x72,0x6ab8(%rip)        # 408148 <target_prefix>
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
  40173c:	e8 b1 1f 00 00       	callq  4036f2 <init_driver>
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
  401794:	e8 71 12 00 00       	callq  402a0a <__stack_chk_fail>

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
  4017e0:	48 c7 c6 f9 28 40 00 	mov    $0x4028f9,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	callq  401330 <signal@plt>
  4017f1:	48 c7 c6 9f 28 40 00 	mov    $0x40289f,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	callq  401330 <signal@plt>
  401802:	48 c7 c6 53 29 40 00 	mov    $0x402953,%rsi
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
  401842:	48 c7 c6 ad 29 40 00 	mov    $0x4029ad,%rsi
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
  40195b:	be 01 00 00 00       	mov    $0x1,%esi
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
  4019ab:	e8 38 0b 00 00       	callq  4024e8 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	callq  4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 87 10 00 00       	callq  402a64 <launch>
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
  4019ff:	e8 06 10 00 00       	callq  402a0a <__stack_chk_fail>

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
  401faa:	e8 5b 0a 00 00       	callq  402a0a <__stack_chk_fail>

0000000000401faf <getbuf>:
  401faf:	f3 0f 1e fa          	endbr64 
  401fb3:	48 83 ec 38          	sub    $0x38,%rsp
  401fb7:	48 89 e7             	mov    %rsp,%rdi
  401fba:	e8 67 05 00 00       	callq  402526 <Gets>
  401fbf:	b8 01 00 00 00       	mov    $0x1,%eax
  401fc4:	48 83 c4 38          	add    $0x38,%rsp
  401fc8:	c3                   	retq   

0000000000401fc9 <touch1>:
  401fc9:	f3 0f 1e fa          	endbr64 
  401fcd:	50                   	push   %rax
  401fce:	58                   	pop    %rax
  401fcf:	48 83 ec 08          	sub    $0x8,%rsp
  401fd3:	c7 05 3f 55 00 00 01 	movl   $0x1,0x553f(%rip)        # 40751c <vlevel>
  401fda:	00 00 00 
  401fdd:	48 8d 3d 32 23 00 00 	lea    0x2332(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401fe4:	e8 c7 f2 ff ff       	callq  4012b0 <puts@plt>
  401fe9:	bf 01 00 00 00       	mov    $0x1,%edi
  401fee:	e8 a5 07 00 00       	callq  402798 <validate>
  401ff3:	bf 00 00 00 00       	mov    $0x0,%edi
  401ff8:	e8 13 f4 ff ff       	callq  401410 <exit@plt>

0000000000401ffd <touch2>:
  401ffd:	f3 0f 1e fa          	endbr64 
  402001:	50                   	push   %rax
  402002:	58                   	pop    %rax
  402003:	48 83 ec 08          	sub    $0x8,%rsp
  402007:	89 fa                	mov    %edi,%edx
  402009:	c7 05 09 55 00 00 02 	movl   $0x2,0x5509(%rip)        # 40751c <vlevel>
  402010:	00 00 00 
  402013:	39 3d 0b 55 00 00    	cmp    %edi,0x550b(%rip)        # 407524 <cookie>
  402019:	74 2a                	je     402045 <touch2+0x48>
  40201b:	48 8d 35 3e 23 00 00 	lea    0x233e(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  402022:	bf 01 00 00 00       	mov    $0x1,%edi
  402027:	b8 00 00 00 00       	mov    $0x0,%eax
  40202c:	e8 8f f3 ff ff       	callq  4013c0 <__printf_chk@plt>
  402031:	bf 02 00 00 00       	mov    $0x2,%edi
  402036:	e8 38 08 00 00       	callq  402873 <fail>
  40203b:	bf 00 00 00 00       	mov    $0x0,%edi
  402040:	e8 cb f3 ff ff       	callq  401410 <exit@plt>
  402045:	48 8d 35 ec 22 00 00 	lea    0x22ec(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  40204c:	bf 01 00 00 00       	mov    $0x1,%edi
  402051:	b8 00 00 00 00       	mov    $0x0,%eax
  402056:	e8 65 f3 ff ff       	callq  4013c0 <__printf_chk@plt>
  40205b:	bf 02 00 00 00       	mov    $0x2,%edi
  402060:	e8 33 07 00 00       	callq  402798 <validate>
  402065:	eb d4                	jmp    40203b <touch2+0x3e>

0000000000402067 <hexmatch>:
  402067:	f3 0f 1e fa          	endbr64 
  40206b:	41 55                	push   %r13
  40206d:	41 54                	push   %r12
  40206f:	55                   	push   %rbp
  402070:	53                   	push   %rbx
  402071:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  402078:	89 fd                	mov    %edi,%ebp
  40207a:	48 89 f3             	mov    %rsi,%rbx
  40207d:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  402083:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  402088:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  40208d:	31 c0                	xor    %eax,%eax
  40208f:	e8 fc f2 ff ff       	callq  401390 <random@plt>
  402094:	48 89 c1             	mov    %rax,%rcx
  402097:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  40209e:	0a d7 a3 
  4020a1:	48 f7 ea             	imul   %rdx
  4020a4:	48 01 ca             	add    %rcx,%rdx
  4020a7:	48 c1 fa 06          	sar    $0x6,%rdx
  4020ab:	48 89 c8             	mov    %rcx,%rax
  4020ae:	48 c1 f8 3f          	sar    $0x3f,%rax
  4020b2:	48 29 c2             	sub    %rax,%rdx
  4020b5:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4020b9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4020bd:	48 c1 e0 02          	shl    $0x2,%rax
  4020c1:	48 29 c1             	sub    %rax,%rcx
  4020c4:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  4020c8:	41 89 e8             	mov    %ebp,%r8d
  4020cb:	48 8d 0d 61 22 00 00 	lea    0x2261(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  4020d2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4020d9:	be 01 00 00 00       	mov    $0x1,%esi
  4020de:	4c 89 ef             	mov    %r13,%rdi
  4020e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e6:	e8 65 f3 ff ff       	callq  401450 <__sprintf_chk@plt>
  4020eb:	ba 09 00 00 00       	mov    $0x9,%edx
  4020f0:	4c 89 ee             	mov    %r13,%rsi
  4020f3:	48 89 df             	mov    %rbx,%rdi
  4020f6:	e8 95 f1 ff ff       	callq  401290 <strncmp@plt>
  4020fb:	85 c0                	test   %eax,%eax
  4020fd:	0f 94 c0             	sete   %al
  402100:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  402105:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  40210a:	75 11                	jne    40211d <hexmatch+0xb6>
  40210c:	0f b6 c0             	movzbl %al,%eax
  40210f:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  402116:	5b                   	pop    %rbx
  402117:	5d                   	pop    %rbp
  402118:	41 5c                	pop    %r12
  40211a:	41 5d                	pop    %r13
  40211c:	c3                   	retq   
  40211d:	e8 e8 08 00 00       	callq  402a0a <__stack_chk_fail>

0000000000402122 <touch3>:
  402122:	f3 0f 1e fa          	endbr64 
  402126:	53                   	push   %rbx
  402127:	48 89 fb             	mov    %rdi,%rbx
  40212a:	c7 05 e8 53 00 00 03 	movl   $0x3,0x53e8(%rip)        # 40751c <vlevel>
  402131:	00 00 00 
  402134:	48 89 fe             	mov    %rdi,%rsi
  402137:	8b 3d e7 53 00 00    	mov    0x53e7(%rip),%edi        # 407524 <cookie>
  40213d:	e8 25 ff ff ff       	callq  402067 <hexmatch>
  402142:	85 c0                	test   %eax,%eax
  402144:	74 2d                	je     402173 <touch3+0x51>
  402146:	48 89 da             	mov    %rbx,%rdx
  402149:	48 8d 35 38 22 00 00 	lea    0x2238(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  402150:	bf 01 00 00 00       	mov    $0x1,%edi
  402155:	b8 00 00 00 00       	mov    $0x0,%eax
  40215a:	e8 61 f2 ff ff       	callq  4013c0 <__printf_chk@plt>
  40215f:	bf 03 00 00 00       	mov    $0x3,%edi
  402164:	e8 2f 06 00 00       	callq  402798 <validate>
  402169:	bf 00 00 00 00       	mov    $0x0,%edi
  40216e:	e8 9d f2 ff ff       	callq  401410 <exit@plt>
  402173:	48 89 da             	mov    %rbx,%rdx
  402176:	48 8d 35 33 22 00 00 	lea    0x2233(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  40217d:	bf 01 00 00 00       	mov    $0x1,%edi
  402182:	b8 00 00 00 00       	mov    $0x0,%eax
  402187:	e8 34 f2 ff ff       	callq  4013c0 <__printf_chk@plt>
  40218c:	bf 03 00 00 00       	mov    $0x3,%edi
  402191:	e8 dd 06 00 00       	callq  402873 <fail>
  402196:	eb d1                	jmp    402169 <touch3+0x47>

0000000000402198 <test>:
  402198:	f3 0f 1e fa          	endbr64 
  40219c:	48 83 ec 08          	sub    $0x8,%rsp
  4021a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4021a5:	e8 05 fe ff ff       	callq  401faf <getbuf>
  4021aa:	89 c2                	mov    %eax,%edx
  4021ac:	48 8d 35 25 22 00 00 	lea    0x2225(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  4021b3:	bf 01 00 00 00       	mov    $0x1,%edi
  4021b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021bd:	e8 fe f1 ff ff       	callq  4013c0 <__printf_chk@plt>
  4021c2:	48 83 c4 08          	add    $0x8,%rsp
  4021c6:	c3                   	retq   

00000000004021c7 <test2>:
  4021c7:	f3 0f 1e fa          	endbr64 
  4021cb:	48 83 ec 08          	sub    $0x8,%rsp
  4021cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d4:	e8 1d 00 00 00       	callq  4021f6 <getbuf_withcanary>
  4021d9:	89 c2                	mov    %eax,%edx
  4021db:	48 8d 35 1e 22 00 00 	lea    0x221e(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  4021e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4021e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ec:	e8 cf f1 ff ff       	callq  4013c0 <__printf_chk@plt>
  4021f1:	48 83 c4 08          	add    $0x8,%rsp
  4021f5:	c3                   	retq   

00000000004021f6 <getbuf_withcanary>:
  4021f6:	f3 0f 1e fa          	endbr64 
  4021fa:	55                   	push   %rbp
  4021fb:	48 89 e5             	mov    %rsp,%rbp
  4021fe:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  402205:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40220c:	00 00 
  40220e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402212:	31 c0                	xor    %eax,%eax
  402214:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  40221b:	00 00 00 
  40221e:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  402224:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  40222a:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402231:	48 89 c7             	mov    %rax,%rdi
  402234:	e8 ed 02 00 00       	callq  402526 <Gets>
  402239:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  40223f:	48 63 d0             	movslq %eax,%rdx
  402242:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402249:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  402250:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402257:	48 89 ce             	mov    %rcx,%rsi
  40225a:	48 89 c7             	mov    %rax,%rdi
  40225d:	e8 0e f1 ff ff       	callq  401370 <memcpy@plt>
  402262:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  402268:	48 63 d0             	movslq %eax,%rdx
  40226b:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402272:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  402279:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  402280:	48 89 c6             	mov    %rax,%rsi
  402283:	48 89 cf             	mov    %rcx,%rdi
  402286:	e8 e5 f0 ff ff       	callq  401370 <memcpy@plt>
  40228b:	b8 01 00 00 00       	mov    $0x1,%eax
  402290:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402294:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40229b:	00 00 
  40229d:	74 05                	je     4022a4 <getbuf_withcanary+0xae>
  40229f:	e8 66 07 00 00       	callq  402a0a <__stack_chk_fail>
  4022a4:	c9                   	leaveq 
  4022a5:	c3                   	retq   

00000000004022a6 <start_farm>:
  4022a6:	f3 0f 1e fa          	endbr64 
  4022aa:	b8 01 00 00 00       	mov    $0x1,%eax
  4022af:	c3                   	retq   

00000000004022b0 <getval_431>:
  4022b0:	f3 0f 1e fa          	endbr64 
  4022b4:	b8 c8 89 c7 c3       	mov    $0xc3c789c8,%eax
  4022b9:	c3                   	retq   

00000000004022ba <getval_265>:
  4022ba:	f3 0f 1e fa          	endbr64 
  4022be:	b8 58 c3 c3 26       	mov    $0x26c3c358,%eax
  4022c3:	c3                   	retq   

00000000004022c4 <getval_230>:
  4022c4:	f3 0f 1e fa          	endbr64 
  4022c8:	b8 51 48 89 c7       	mov    $0xc7894851,%eax
  4022cd:	c3                   	retq   

00000000004022ce <setval_118>:
  4022ce:	f3 0f 1e fa          	endbr64 
  4022d2:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  4022d8:	c3                   	retq   

00000000004022d9 <addval_306>:
  4022d9:	f3 0f 1e fa          	endbr64 
  4022dd:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  4022e3:	c3                   	retq   

00000000004022e4 <getval_369>:
  4022e4:	f3 0f 1e fa          	endbr64 
  4022e8:	b8 ee 58 91 90       	mov    $0x909158ee,%eax
  4022ed:	c3                   	retq   

00000000004022ee <getval_305>:
  4022ee:	f3 0f 1e fa          	endbr64 
  4022f2:	b8 48 89 c7 94       	mov    $0x94c78948,%eax
  4022f7:	c3                   	retq   

00000000004022f8 <setval_403>:
  4022f8:	f3 0f 1e fa          	endbr64 
  4022fc:	c7 07 58 94 90 90    	movl   $0x90909458,(%rdi)
  402302:	c3                   	retq   

0000000000402303 <mid_farm>:
  402303:	f3 0f 1e fa          	endbr64 
  402307:	b8 01 00 00 00       	mov    $0x1,%eax
  40230c:	c3                   	retq   

000000000040230d <add_xy>:
  40230d:	f3 0f 1e fa          	endbr64 
  402311:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  402315:	c3                   	retq   

0000000000402316 <addval_243>:
  402316:	f3 0f 1e fa          	endbr64 
  40231a:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  402320:	c3                   	retq   

0000000000402321 <setval_192>:
  402321:	f3 0f 1e fa          	endbr64 
  402325:	c7 07 89 ce 20 db    	movl   $0xdb20ce89,(%rdi)
  40232b:	c3                   	retq   

000000000040232c <getval_193>:
  40232c:	f3 0f 1e fa          	endbr64 
  402330:	b8 89 ce 94 db       	mov    $0xdb94ce89,%eax
  402335:	c3                   	retq   

0000000000402336 <addval_372>:
  402336:	f3 0f 1e fa          	endbr64 
  40233a:	8d 87 89 c2 28 db    	lea    -0x24d73d77(%rdi),%eax
  402340:	c3                   	retq   

0000000000402341 <setval_496>:
  402341:	f3 0f 1e fa          	endbr64 
  402345:	c7 07 81 c2 84 c9    	movl   $0xc984c281,(%rdi)
  40234b:	c3                   	retq   

000000000040234c <setval_303>:
  40234c:	f3 0f 1e fa          	endbr64 
  402350:	c7 07 88 d1 38 db    	movl   $0xdb38d188,(%rdi)
  402356:	c3                   	retq   

0000000000402357 <setval_299>:
  402357:	f3 0f 1e fa          	endbr64 
  40235b:	c7 07 89 ce 94 db    	movl   $0xdb94ce89,(%rdi)
  402361:	c3                   	retq   

0000000000402362 <setval_442>:
  402362:	f3 0f 1e fa          	endbr64 
  402366:	c7 07 65 89 d1 c3    	movl   $0xc3d18965,(%rdi)
  40236c:	c3                   	retq   

000000000040236d <getval_311>:
  40236d:	f3 0f 1e fa          	endbr64 
  402371:	b8 a0 4a 89 e0       	mov    $0xe0894aa0,%eax
  402376:	c3                   	retq   

0000000000402377 <addval_462>:
  402377:	f3 0f 1e fa          	endbr64 
  40237b:	8d 87 89 ce 18 d2    	lea    -0x2de73177(%rdi),%eax
  402381:	c3                   	retq   

0000000000402382 <addval_285>:
  402382:	f3 0f 1e fa          	endbr64 
  402386:	8d 87 89 d1 c1 17    	lea    0x17c1d189(%rdi),%eax
  40238c:	c3                   	retq   

000000000040238d <addval_388>:
  40238d:	f3 0f 1e fa          	endbr64 
  402391:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
  402397:	c3                   	retq   

0000000000402398 <addval_323>:
  402398:	f3 0f 1e fa          	endbr64 
  40239c:	8d 87 89 ce 38 c0    	lea    -0x3fc73177(%rdi),%eax
  4023a2:	c3                   	retq   

00000000004023a3 <setval_415>:
  4023a3:	f3 0f 1e fa          	endbr64 
  4023a7:	c7 07 81 ce 20 c0    	movl   $0xc020ce81,(%rdi)
  4023ad:	c3                   	retq   

00000000004023ae <getval_449>:
  4023ae:	f3 0f 1e fa          	endbr64 
  4023b2:	b8 89 ce a4 c0       	mov    $0xc0a4ce89,%eax
  4023b7:	c3                   	retq   

00000000004023b8 <getval_297>:
  4023b8:	f3 0f 1e fa          	endbr64 
  4023bc:	b8 89 d1 00 db       	mov    $0xdb00d189,%eax
  4023c1:	c3                   	retq   

00000000004023c2 <addval_409>:
  4023c2:	f3 0f 1e fa          	endbr64 
  4023c6:	8d 87 89 ce 60 d2    	lea    -0x2d9f3177(%rdi),%eax
  4023cc:	c3                   	retq   

00000000004023cd <setval_456>:
  4023cd:	f3 0f 1e fa          	endbr64 
  4023d1:	c7 07 89 d1 90 c1    	movl   $0xc190d189,(%rdi)
  4023d7:	c3                   	retq   

00000000004023d8 <getval_459>:
  4023d8:	f3 0f 1e fa          	endbr64 
  4023dc:	b8 06 48 a9 e0       	mov    $0xe0a94806,%eax
  4023e1:	c3                   	retq   

00000000004023e2 <addval_208>:
  4023e2:	f3 0f 1e fa          	endbr64 
  4023e6:	8d 87 89 d1 08 c0    	lea    -0x3ff72e77(%rdi),%eax
  4023ec:	c3                   	retq   

00000000004023ed <addval_346>:
  4023ed:	f3 0f 1e fa          	endbr64 
  4023f1:	8d 87 2e 48 c9 e0    	lea    -0x1f36b7d2(%rdi),%eax
  4023f7:	c3                   	retq   

00000000004023f8 <setval_387>:
  4023f8:	f3 0f 1e fa          	endbr64 
  4023fc:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
  402402:	c3                   	retq   

0000000000402403 <addval_238>:
  402403:	f3 0f 1e fa          	endbr64 
  402407:	8d 87 89 c2 c3 41    	lea    0x41c3c289(%rdi),%eax
  40240d:	c3                   	retq   

000000000040240e <setval_274>:
  40240e:	f3 0f 1e fa          	endbr64 
  402412:	c7 07 89 c2 30 c9    	movl   $0xc930c289,(%rdi)
  402418:	c3                   	retq   

0000000000402419 <setval_211>:
  402419:	f3 0f 1e fa          	endbr64 
  40241d:	c7 07 89 d1 78 c0    	movl   $0xc078d189,(%rdi)
  402423:	c3                   	retq   

0000000000402424 <addval_206>:
  402424:	f3 0f 1e fa          	endbr64 
  402428:	8d 87 40 89 e0 90    	lea    -0x6f1f76c0(%rdi),%eax
  40242e:	c3                   	retq   

000000000040242f <addval_267>:
  40242f:	f3 0f 1e fa          	endbr64 
  402433:	8d 87 48 89 e0 90    	lea    -0x6f1f76b8(%rdi),%eax
  402439:	c3                   	retq   

000000000040243a <setval_216>:
  40243a:	f3 0f 1e fa          	endbr64 
  40243e:	c7 07 4e 89 c2 94    	movl   $0x94c2894e,(%rdi)
  402444:	c3                   	retq   

0000000000402445 <addval_380>:
  402445:	f3 0f 1e fa          	endbr64 
  402449:	8d 87 1d 89 c2 90    	lea    -0x6f3d76e3(%rdi),%eax
  40244f:	c3                   	retq   

0000000000402450 <setval_250>:
  402450:	f3 0f 1e fa          	endbr64 
  402454:	c7 07 81 c2 08 d2    	movl   $0xd208c281,(%rdi)
  40245a:	c3                   	retq   

000000000040245b <getval_411>:
  40245b:	f3 0f 1e fa          	endbr64 
  40245f:	b8 8b c2 c3 2a       	mov    $0x2ac3c28b,%eax
  402464:	c3                   	retq   

0000000000402465 <getval_374>:
  402465:	f3 0f 1e fa          	endbr64 
  402469:	b8 88 d1 20 db       	mov    $0xdb20d188,%eax
  40246e:	c3                   	retq   

000000000040246f <end_farm>:
  40246f:	f3 0f 1e fa          	endbr64 
  402473:	b8 01 00 00 00       	mov    $0x1,%eax
  402478:	c3                   	retq   

0000000000402479 <save_char>:
  402479:	8b 05 c5 5c 00 00    	mov    0x5cc5(%rip),%eax        # 408144 <gets_cnt>
  40247f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402484:	7f 4a                	jg     4024d0 <save_char+0x57>
  402486:	89 f9                	mov    %edi,%ecx
  402488:	c0 e9 04             	shr    $0x4,%cl
  40248b:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40248e:	4c 8d 05 db 22 00 00 	lea    0x22db(%rip),%r8        # 404770 <trans_char>
  402495:	83 e1 0f             	and    $0xf,%ecx
  402498:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  40249d:	48 8d 0d 9c 50 00 00 	lea    0x509c(%rip),%rcx        # 407540 <gets_buf>
  4024a4:	48 63 f2             	movslq %edx,%rsi
  4024a7:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4024ab:	8d 72 01             	lea    0x1(%rdx),%esi
  4024ae:	83 e7 0f             	and    $0xf,%edi
  4024b1:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4024b6:	48 63 f6             	movslq %esi,%rsi
  4024b9:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4024bd:	83 c2 02             	add    $0x2,%edx
  4024c0:	48 63 d2             	movslq %edx,%rdx
  4024c3:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4024c7:	83 c0 01             	add    $0x1,%eax
  4024ca:	89 05 74 5c 00 00    	mov    %eax,0x5c74(%rip)        # 408144 <gets_cnt>
  4024d0:	c3                   	retq   

00000000004024d1 <save_term>:
  4024d1:	8b 05 6d 5c 00 00    	mov    0x5c6d(%rip),%eax        # 408144 <gets_cnt>
  4024d7:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4024da:	48 98                	cltq   
  4024dc:	48 8d 15 5d 50 00 00 	lea    0x505d(%rip),%rdx        # 407540 <gets_buf>
  4024e3:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4024e7:	c3                   	retq   

00000000004024e8 <check_fail>:
  4024e8:	f3 0f 1e fa          	endbr64 
  4024ec:	50                   	push   %rax
  4024ed:	58                   	pop    %rax
  4024ee:	48 83 ec 08          	sub    $0x8,%rsp
  4024f2:	0f be 15 4f 5c 00 00 	movsbl 0x5c4f(%rip),%edx        # 408148 <target_prefix>
  4024f9:	4c 8d 05 40 50 00 00 	lea    0x5040(%rip),%r8        # 407540 <gets_buf>
  402500:	8b 0d 12 50 00 00    	mov    0x5012(%rip),%ecx        # 407518 <check_level>
  402506:	48 8d 35 21 1f 00 00 	lea    0x1f21(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  40250d:	bf 01 00 00 00       	mov    $0x1,%edi
  402512:	b8 00 00 00 00       	mov    $0x0,%eax
  402517:	e8 a4 ee ff ff       	callq  4013c0 <__printf_chk@plt>
  40251c:	bf 01 00 00 00       	mov    $0x1,%edi
  402521:	e8 ea ee ff ff       	callq  401410 <exit@plt>

0000000000402526 <Gets>:
  402526:	f3 0f 1e fa          	endbr64 
  40252a:	41 54                	push   %r12
  40252c:	55                   	push   %rbp
  40252d:	53                   	push   %rbx
  40252e:	49 89 fc             	mov    %rdi,%r12
  402531:	c7 05 09 5c 00 00 00 	movl   $0x0,0x5c09(%rip)        # 408144 <gets_cnt>
  402538:	00 00 00 
  40253b:	48 89 fb             	mov    %rdi,%rbx
  40253e:	48 8b 3d cb 4f 00 00 	mov    0x4fcb(%rip),%rdi        # 407510 <infile>
  402545:	e8 f6 ee ff ff       	callq  401440 <getc@plt>
  40254a:	83 f8 ff             	cmp    $0xffffffff,%eax
  40254d:	74 18                	je     402567 <Gets+0x41>
  40254f:	83 f8 0a             	cmp    $0xa,%eax
  402552:	74 13                	je     402567 <Gets+0x41>
  402554:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402558:	88 03                	mov    %al,(%rbx)
  40255a:	0f b6 f8             	movzbl %al,%edi
  40255d:	e8 17 ff ff ff       	callq  402479 <save_char>
  402562:	48 89 eb             	mov    %rbp,%rbx
  402565:	eb d7                	jmp    40253e <Gets+0x18>
  402567:	c6 03 00             	movb   $0x0,(%rbx)
  40256a:	b8 00 00 00 00       	mov    $0x0,%eax
  40256f:	e8 5d ff ff ff       	callq  4024d1 <save_term>
  402574:	4c 89 e0             	mov    %r12,%rax
  402577:	5b                   	pop    %rbx
  402578:	5d                   	pop    %rbp
  402579:	41 5c                	pop    %r12
  40257b:	c3                   	retq   

000000000040257c <notify_server>:
  40257c:	f3 0f 1e fa          	endbr64 
  402580:	55                   	push   %rbp
  402581:	53                   	push   %rbx
  402582:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  402589:	ff 
  40258a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402591:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402596:	4c 39 dc             	cmp    %r11,%rsp
  402599:	75 ef                	jne    40258a <notify_server+0xe>
  40259b:	48 83 ec 18          	sub    $0x18,%rsp
  40259f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4025a6:	00 00 
  4025a8:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4025af:	00 
  4025b0:	31 c0                	xor    %eax,%eax
  4025b2:	83 3d 6f 4f 00 00 00 	cmpl   $0x0,0x4f6f(%rip)        # 407528 <is_checker>
  4025b9:	0f 85 b7 01 00 00    	jne    402776 <notify_server+0x1fa>
  4025bf:	89 fb                	mov    %edi,%ebx
  4025c1:	81 3d 79 5b 00 00 9c 	cmpl   $0x1f9c,0x5b79(%rip)        # 408144 <gets_cnt>
  4025c8:	1f 00 00 
  4025cb:	7f 18                	jg     4025e5 <notify_server+0x69>
  4025cd:	0f be 05 74 5b 00 00 	movsbl 0x5b74(%rip),%eax        # 408148 <target_prefix>
  4025d4:	83 3d c5 4e 00 00 00 	cmpl   $0x0,0x4ec5(%rip)        # 4074a0 <notify>
  4025db:	74 23                	je     402600 <notify_server+0x84>
  4025dd:	8b 15 3d 4f 00 00    	mov    0x4f3d(%rip),%edx        # 407520 <authkey>
  4025e3:	eb 20                	jmp    402605 <notify_server+0x89>
  4025e5:	48 8d 35 6c 1f 00 00 	lea    0x1f6c(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  4025ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4025f1:	e8 ca ed ff ff       	callq  4013c0 <__printf_chk@plt>
  4025f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4025fb:	e8 10 ee ff ff       	callq  401410 <exit@plt>
  402600:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402605:	85 db                	test   %ebx,%ebx
  402607:	0f 84 9b 00 00 00    	je     4026a8 <notify_server+0x12c>
  40260d:	48 8d 2d 35 1e 00 00 	lea    0x1e35(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  402614:	48 89 e7             	mov    %rsp,%rdi
  402617:	48 8d 0d 22 4f 00 00 	lea    0x4f22(%rip),%rcx        # 407540 <gets_buf>
  40261e:	51                   	push   %rcx
  40261f:	56                   	push   %rsi
  402620:	50                   	push   %rax
  402621:	52                   	push   %rdx
  402622:	49 89 e9             	mov    %rbp,%r9
  402625:	44 8b 05 24 4b 00 00 	mov    0x4b24(%rip),%r8d        # 407150 <target_id>
  40262c:	48 8d 0d 1b 1e 00 00 	lea    0x1e1b(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402633:	ba 00 20 00 00       	mov    $0x2000,%edx
  402638:	be 01 00 00 00       	mov    $0x1,%esi
  40263d:	b8 00 00 00 00       	mov    $0x0,%eax
  402642:	e8 09 ee ff ff       	callq  401450 <__sprintf_chk@plt>
  402647:	48 83 c4 20          	add    $0x20,%rsp
  40264b:	83 3d 4e 4e 00 00 00 	cmpl   $0x0,0x4e4e(%rip)        # 4074a0 <notify>
  402652:	0f 84 95 00 00 00    	je     4026ed <notify_server+0x171>
  402658:	48 89 e1             	mov    %rsp,%rcx
  40265b:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402662:	00 
  402663:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402669:	48 8b 15 f8 4a 00 00 	mov    0x4af8(%rip),%rdx        # 407168 <lab>
  402670:	48 8b 35 f9 4a 00 00 	mov    0x4af9(%rip),%rsi        # 407170 <course>
  402677:	48 8b 3d e2 4a 00 00 	mov    0x4ae2(%rip),%rdi        # 407160 <user_id>
  40267e:	e8 7f 12 00 00       	callq  403902 <driver_post>
  402683:	85 c0                	test   %eax,%eax
  402685:	78 2d                	js     4026b4 <notify_server+0x138>
  402687:	85 db                	test   %ebx,%ebx
  402689:	74 51                	je     4026dc <notify_server+0x160>
  40268b:	48 8d 3d f6 1e 00 00 	lea    0x1ef6(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  402692:	e8 19 ec ff ff       	callq  4012b0 <puts@plt>
  402697:	48 8d 3d d8 1d 00 00 	lea    0x1dd8(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  40269e:	e8 0d ec ff ff       	callq  4012b0 <puts@plt>
  4026a3:	e9 ce 00 00 00       	jmpq   402776 <notify_server+0x1fa>
  4026a8:	48 8d 2d 95 1d 00 00 	lea    0x1d95(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  4026af:	e9 60 ff ff ff       	jmpq   402614 <notify_server+0x98>
  4026b4:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4026bb:	00 
  4026bc:	48 8d 35 a7 1d 00 00 	lea    0x1da7(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  4026c3:	bf 01 00 00 00       	mov    $0x1,%edi
  4026c8:	b8 00 00 00 00       	mov    $0x0,%eax
  4026cd:	e8 ee ec ff ff       	callq  4013c0 <__printf_chk@plt>
  4026d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4026d7:	e8 34 ed ff ff       	callq  401410 <exit@plt>
  4026dc:	48 8d 3d 9d 1d 00 00 	lea    0x1d9d(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  4026e3:	e8 c8 eb ff ff       	callq  4012b0 <puts@plt>
  4026e8:	e9 89 00 00 00       	jmpq   402776 <notify_server+0x1fa>
  4026ed:	48 89 ea             	mov    %rbp,%rdx
  4026f0:	48 8d 35 c9 1e 00 00 	lea    0x1ec9(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  4026f7:	bf 01 00 00 00       	mov    $0x1,%edi
  4026fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402701:	e8 ba ec ff ff       	callq  4013c0 <__printf_chk@plt>
  402706:	48 8b 15 53 4a 00 00 	mov    0x4a53(%rip),%rdx        # 407160 <user_id>
  40270d:	48 8d 35 73 1d 00 00 	lea    0x1d73(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  402714:	bf 01 00 00 00       	mov    $0x1,%edi
  402719:	b8 00 00 00 00       	mov    $0x0,%eax
  40271e:	e8 9d ec ff ff       	callq  4013c0 <__printf_chk@plt>
  402723:	48 8b 15 46 4a 00 00 	mov    0x4a46(%rip),%rdx        # 407170 <course>
  40272a:	48 8d 35 63 1d 00 00 	lea    0x1d63(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  402731:	bf 01 00 00 00       	mov    $0x1,%edi
  402736:	b8 00 00 00 00       	mov    $0x0,%eax
  40273b:	e8 80 ec ff ff       	callq  4013c0 <__printf_chk@plt>
  402740:	48 8b 15 21 4a 00 00 	mov    0x4a21(%rip),%rdx        # 407168 <lab>
  402747:	48 8d 35 52 1d 00 00 	lea    0x1d52(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  40274e:	bf 01 00 00 00       	mov    $0x1,%edi
  402753:	b8 00 00 00 00       	mov    $0x0,%eax
  402758:	e8 63 ec ff ff       	callq  4013c0 <__printf_chk@plt>
  40275d:	48 89 e2             	mov    %rsp,%rdx
  402760:	48 8d 35 42 1d 00 00 	lea    0x1d42(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  402767:	bf 01 00 00 00       	mov    $0x1,%edi
  40276c:	b8 00 00 00 00       	mov    $0x0,%eax
  402771:	e8 4a ec ff ff       	callq  4013c0 <__printf_chk@plt>
  402776:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40277d:	00 
  40277e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402785:	00 00 
  402787:	75 0a                	jne    402793 <notify_server+0x217>
  402789:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402790:	5b                   	pop    %rbx
  402791:	5d                   	pop    %rbp
  402792:	c3                   	retq   
  402793:	e8 72 02 00 00       	callq  402a0a <__stack_chk_fail>

0000000000402798 <validate>:
  402798:	f3 0f 1e fa          	endbr64 
  40279c:	53                   	push   %rbx
  40279d:	89 fb                	mov    %edi,%ebx
  40279f:	83 3d 82 4d 00 00 00 	cmpl   $0x0,0x4d82(%rip)        # 407528 <is_checker>
  4027a6:	74 79                	je     402821 <validate+0x89>
  4027a8:	39 3d 6e 4d 00 00    	cmp    %edi,0x4d6e(%rip)        # 40751c <vlevel>
  4027ae:	75 39                	jne    4027e9 <validate+0x51>
  4027b0:	8b 15 62 4d 00 00    	mov    0x4d62(%rip),%edx        # 407518 <check_level>
  4027b6:	39 fa                	cmp    %edi,%edx
  4027b8:	75 45                	jne    4027ff <validate+0x67>
  4027ba:	0f be 0d 87 59 00 00 	movsbl 0x5987(%rip),%ecx        # 408148 <target_prefix>
  4027c1:	4c 8d 0d 78 4d 00 00 	lea    0x4d78(%rip),%r9        # 407540 <gets_buf>
  4027c8:	41 89 f8             	mov    %edi,%r8d
  4027cb:	8b 15 4f 4d 00 00    	mov    0x4d4f(%rip),%edx        # 407520 <authkey>
  4027d1:	48 8d 35 38 1e 00 00 	lea    0x1e38(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  4027d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4027dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4027e2:	e8 d9 eb ff ff       	callq  4013c0 <__printf_chk@plt>
  4027e7:	5b                   	pop    %rbx
  4027e8:	c3                   	retq   
  4027e9:	48 8d 3d c5 1c 00 00 	lea    0x1cc5(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  4027f0:	e8 bb ea ff ff       	callq  4012b0 <puts@plt>
  4027f5:	b8 00 00 00 00       	mov    $0x0,%eax
  4027fa:	e8 e9 fc ff ff       	callq  4024e8 <check_fail>
  4027ff:	89 f9                	mov    %edi,%ecx
  402801:	48 8d 35 e0 1d 00 00 	lea    0x1de0(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  402808:	bf 01 00 00 00       	mov    $0x1,%edi
  40280d:	b8 00 00 00 00       	mov    $0x0,%eax
  402812:	e8 a9 eb ff ff       	callq  4013c0 <__printf_chk@plt>
  402817:	b8 00 00 00 00       	mov    $0x0,%eax
  40281c:	e8 c7 fc ff ff       	callq  4024e8 <check_fail>
  402821:	39 3d f5 4c 00 00    	cmp    %edi,0x4cf5(%rip)        # 40751c <vlevel>
  402827:	74 1a                	je     402843 <validate+0xab>
  402829:	48 8d 3d 85 1c 00 00 	lea    0x1c85(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402830:	e8 7b ea ff ff       	callq  4012b0 <puts@plt>
  402835:	89 de                	mov    %ebx,%esi
  402837:	bf 00 00 00 00       	mov    $0x0,%edi
  40283c:	e8 3b fd ff ff       	callq  40257c <notify_server>
  402841:	eb a4                	jmp    4027e7 <validate+0x4f>
  402843:	0f be 0d fe 58 00 00 	movsbl 0x58fe(%rip),%ecx        # 408148 <target_prefix>
  40284a:	89 fa                	mov    %edi,%edx
  40284c:	48 8d 35 e5 1d 00 00 	lea    0x1de5(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402853:	bf 01 00 00 00       	mov    $0x1,%edi
  402858:	b8 00 00 00 00       	mov    $0x0,%eax
  40285d:	e8 5e eb ff ff       	callq  4013c0 <__printf_chk@plt>
  402862:	89 de                	mov    %ebx,%esi
  402864:	bf 01 00 00 00       	mov    $0x1,%edi
  402869:	e8 0e fd ff ff       	callq  40257c <notify_server>
  40286e:	e9 74 ff ff ff       	jmpq   4027e7 <validate+0x4f>

0000000000402873 <fail>:
  402873:	f3 0f 1e fa          	endbr64 
  402877:	48 83 ec 08          	sub    $0x8,%rsp
  40287b:	83 3d a6 4c 00 00 00 	cmpl   $0x0,0x4ca6(%rip)        # 407528 <is_checker>
  402882:	75 11                	jne    402895 <fail+0x22>
  402884:	89 fe                	mov    %edi,%esi
  402886:	bf 00 00 00 00       	mov    $0x0,%edi
  40288b:	e8 ec fc ff ff       	callq  40257c <notify_server>
  402890:	48 83 c4 08          	add    $0x8,%rsp
  402894:	c3                   	retq   
  402895:	b8 00 00 00 00       	mov    $0x0,%eax
  40289a:	e8 49 fc ff ff       	callq  4024e8 <check_fail>

000000000040289f <bushandler>:
  40289f:	f3 0f 1e fa          	endbr64 
  4028a3:	50                   	push   %rax
  4028a4:	58                   	pop    %rax
  4028a5:	48 83 ec 08          	sub    $0x8,%rsp
  4028a9:	83 3d 78 4c 00 00 00 	cmpl   $0x0,0x4c78(%rip)        # 407528 <is_checker>
  4028b0:	74 16                	je     4028c8 <bushandler+0x29>
  4028b2:	48 8d 3d 1a 1c 00 00 	lea    0x1c1a(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  4028b9:	e8 f2 e9 ff ff       	callq  4012b0 <puts@plt>
  4028be:	b8 00 00 00 00       	mov    $0x0,%eax
  4028c3:	e8 20 fc ff ff       	callq  4024e8 <check_fail>
  4028c8:	48 8d 3d a1 1d 00 00 	lea    0x1da1(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  4028cf:	e8 dc e9 ff ff       	callq  4012b0 <puts@plt>
  4028d4:	48 8d 3d 02 1c 00 00 	lea    0x1c02(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4028db:	e8 d0 e9 ff ff       	callq  4012b0 <puts@plt>
  4028e0:	be 00 00 00 00       	mov    $0x0,%esi
  4028e5:	bf 00 00 00 00       	mov    $0x0,%edi
  4028ea:	e8 8d fc ff ff       	callq  40257c <notify_server>
  4028ef:	bf 01 00 00 00       	mov    $0x1,%edi
  4028f4:	e8 17 eb ff ff       	callq  401410 <exit@plt>

00000000004028f9 <seghandler>:
  4028f9:	f3 0f 1e fa          	endbr64 
  4028fd:	50                   	push   %rax
  4028fe:	58                   	pop    %rax
  4028ff:	48 83 ec 08          	sub    $0x8,%rsp
  402903:	83 3d 1e 4c 00 00 00 	cmpl   $0x0,0x4c1e(%rip)        # 407528 <is_checker>
  40290a:	74 16                	je     402922 <seghandler+0x29>
  40290c:	48 8d 3d e0 1b 00 00 	lea    0x1be0(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  402913:	e8 98 e9 ff ff       	callq  4012b0 <puts@plt>
  402918:	b8 00 00 00 00       	mov    $0x0,%eax
  40291d:	e8 c6 fb ff ff       	callq  4024e8 <check_fail>
  402922:	48 8d 3d 67 1d 00 00 	lea    0x1d67(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  402929:	e8 82 e9 ff ff       	callq  4012b0 <puts@plt>
  40292e:	48 8d 3d a8 1b 00 00 	lea    0x1ba8(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402935:	e8 76 e9 ff ff       	callq  4012b0 <puts@plt>
  40293a:	be 00 00 00 00       	mov    $0x0,%esi
  40293f:	bf 00 00 00 00       	mov    $0x0,%edi
  402944:	e8 33 fc ff ff       	callq  40257c <notify_server>
  402949:	bf 01 00 00 00       	mov    $0x1,%edi
  40294e:	e8 bd ea ff ff       	callq  401410 <exit@plt>

0000000000402953 <illegalhandler>:
  402953:	f3 0f 1e fa          	endbr64 
  402957:	50                   	push   %rax
  402958:	58                   	pop    %rax
  402959:	48 83 ec 08          	sub    $0x8,%rsp
  40295d:	83 3d c4 4b 00 00 00 	cmpl   $0x0,0x4bc4(%rip)        # 407528 <is_checker>
  402964:	74 16                	je     40297c <illegalhandler+0x29>
  402966:	48 8d 3d 99 1b 00 00 	lea    0x1b99(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  40296d:	e8 3e e9 ff ff       	callq  4012b0 <puts@plt>
  402972:	b8 00 00 00 00       	mov    $0x0,%eax
  402977:	e8 6c fb ff ff       	callq  4024e8 <check_fail>
  40297c:	48 8d 3d 35 1d 00 00 	lea    0x1d35(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  402983:	e8 28 e9 ff ff       	callq  4012b0 <puts@plt>
  402988:	48 8d 3d 4e 1b 00 00 	lea    0x1b4e(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  40298f:	e8 1c e9 ff ff       	callq  4012b0 <puts@plt>
  402994:	be 00 00 00 00       	mov    $0x0,%esi
  402999:	bf 00 00 00 00       	mov    $0x0,%edi
  40299e:	e8 d9 fb ff ff       	callq  40257c <notify_server>
  4029a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4029a8:	e8 63 ea ff ff       	callq  401410 <exit@plt>

00000000004029ad <sigalrmhandler>:
  4029ad:	f3 0f 1e fa          	endbr64 
  4029b1:	50                   	push   %rax
  4029b2:	58                   	pop    %rax
  4029b3:	48 83 ec 08          	sub    $0x8,%rsp
  4029b7:	83 3d 6a 4b 00 00 00 	cmpl   $0x0,0x4b6a(%rip)        # 407528 <is_checker>
  4029be:	74 16                	je     4029d6 <sigalrmhandler+0x29>
  4029c0:	48 8d 3d 53 1b 00 00 	lea    0x1b53(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  4029c7:	e8 e4 e8 ff ff       	callq  4012b0 <puts@plt>
  4029cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4029d1:	e8 12 fb ff ff       	callq  4024e8 <check_fail>
  4029d6:	ba 02 00 00 00       	mov    $0x2,%edx
  4029db:	48 8d 35 06 1d 00 00 	lea    0x1d06(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  4029e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4029e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ec:	e8 cf e9 ff ff       	callq  4013c0 <__printf_chk@plt>
  4029f1:	be 00 00 00 00       	mov    $0x0,%esi
  4029f6:	bf 00 00 00 00       	mov    $0x0,%edi
  4029fb:	e8 7c fb ff ff       	callq  40257c <notify_server>
  402a00:	bf 01 00 00 00       	mov    $0x1,%edi
  402a05:	e8 06 ea ff ff       	callq  401410 <exit@plt>

0000000000402a0a <__stack_chk_fail>:
  402a0a:	f3 0f 1e fa          	endbr64 
  402a0e:	50                   	push   %rax
  402a0f:	58                   	pop    %rax
  402a10:	48 83 ec 08          	sub    $0x8,%rsp
  402a14:	83 3d 0d 4b 00 00 00 	cmpl   $0x0,0x4b0d(%rip)        # 407528 <is_checker>
  402a1b:	74 16                	je     402a33 <__stack_chk_fail+0x29>
  402a1d:	48 8d 3d fe 1a 00 00 	lea    0x1afe(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402a24:	e8 87 e8 ff ff       	callq  4012b0 <puts@plt>
  402a29:	b8 00 00 00 00       	mov    $0x0,%eax
  402a2e:	e8 b5 fa ff ff       	callq  4024e8 <check_fail>
  402a33:	48 8d 3d e6 1c 00 00 	lea    0x1ce6(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  402a3a:	e8 71 e8 ff ff       	callq  4012b0 <puts@plt>
  402a3f:	48 8d 3d 97 1a 00 00 	lea    0x1a97(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402a46:	e8 65 e8 ff ff       	callq  4012b0 <puts@plt>
  402a4b:	be 00 00 00 00       	mov    $0x0,%esi
  402a50:	bf 00 00 00 00       	mov    $0x0,%edi
  402a55:	e8 22 fb ff ff       	callq  40257c <notify_server>
  402a5a:	bf 01 00 00 00       	mov    $0x1,%edi
  402a5f:	e8 ac e9 ff ff       	callq  401410 <exit@plt>

0000000000402a64 <launch>:
  402a64:	f3 0f 1e fa          	endbr64 
  402a68:	55                   	push   %rbp
  402a69:	48 89 e5             	mov    %rsp,%rbp
  402a6c:	53                   	push   %rbx
  402a6d:	48 83 ec 18          	sub    $0x18,%rsp
  402a71:	48 89 fa             	mov    %rdi,%rdx
  402a74:	89 f3                	mov    %esi,%ebx
  402a76:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a7d:	00 00 
  402a7f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402a83:	31 c0                	xor    %eax,%eax
  402a85:	48 8d 47 17          	lea    0x17(%rdi),%rax
  402a89:	48 89 c1             	mov    %rax,%rcx
  402a8c:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  402a90:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  402a96:	48 89 e6             	mov    %rsp,%rsi
  402a99:	48 29 c6             	sub    %rax,%rsi
  402a9c:	48 89 f0             	mov    %rsi,%rax
  402a9f:	48 39 c4             	cmp    %rax,%rsp
  402aa2:	74 12                	je     402ab6 <launch+0x52>
  402aa4:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402aab:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402ab2:	00 00 
  402ab4:	eb e9                	jmp    402a9f <launch+0x3b>
  402ab6:	48 89 c8             	mov    %rcx,%rax
  402ab9:	25 ff 0f 00 00       	and    $0xfff,%eax
  402abe:	48 29 c4             	sub    %rax,%rsp
  402ac1:	48 85 c0             	test   %rax,%rax
  402ac4:	74 06                	je     402acc <launch+0x68>
  402ac6:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  402acc:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402ad1:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402ad5:	be f4 00 00 00       	mov    $0xf4,%esi
  402ada:	e8 01 e8 ff ff       	callq  4012e0 <memset@plt>
  402adf:	48 8b 05 da 49 00 00 	mov    0x49da(%rip),%rax        # 4074c0 <stdin@@GLIBC_2.2.5>
  402ae6:	48 39 05 23 4a 00 00 	cmp    %rax,0x4a23(%rip)        # 407510 <infile>
  402aed:	74 42                	je     402b31 <launch+0xcd>
  402aef:	c7 05 23 4a 00 00 00 	movl   $0x0,0x4a23(%rip)        # 40751c <vlevel>
  402af6:	00 00 00 
  402af9:	85 db                	test   %ebx,%ebx
  402afb:	75 4c                	jne    402b49 <launch+0xe5>
  402afd:	b8 00 00 00 00       	mov    $0x0,%eax
  402b02:	e8 91 f6 ff ff       	callq  402198 <test>
  402b07:	83 3d 1a 4a 00 00 00 	cmpl   $0x0,0x4a1a(%rip)        # 407528 <is_checker>
  402b0e:	75 45                	jne    402b55 <launch+0xf1>
  402b10:	48 8d 3d 32 1a 00 00 	lea    0x1a32(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402b17:	e8 94 e7 ff ff       	callq  4012b0 <puts@plt>
  402b1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402b20:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402b27:	00 00 
  402b29:	75 40                	jne    402b6b <launch+0x107>
  402b2b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402b2f:	c9                   	leaveq 
  402b30:	c3                   	retq   
  402b31:	48 8d 35 f9 19 00 00 	lea    0x19f9(%rip),%rsi        # 404531 <_IO_stdin_used+0x531>
  402b38:	bf 01 00 00 00       	mov    $0x1,%edi
  402b3d:	b8 00 00 00 00       	mov    $0x0,%eax
  402b42:	e8 79 e8 ff ff       	callq  4013c0 <__printf_chk@plt>
  402b47:	eb a6                	jmp    402aef <launch+0x8b>
  402b49:	b8 00 00 00 00       	mov    $0x0,%eax
  402b4e:	e8 74 f6 ff ff       	callq  4021c7 <test2>
  402b53:	eb b2                	jmp    402b07 <launch+0xa3>
  402b55:	48 8d 3d e2 19 00 00 	lea    0x19e2(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402b5c:	e8 4f e7 ff ff       	callq  4012b0 <puts@plt>
  402b61:	b8 00 00 00 00       	mov    $0x0,%eax
  402b66:	e8 7d f9 ff ff       	callq  4024e8 <check_fail>
  402b6b:	e8 9a fe ff ff       	callq  402a0a <__stack_chk_fail>

0000000000402b70 <stable_launch>:
  402b70:	f3 0f 1e fa          	endbr64 
  402b74:	55                   	push   %rbp
  402b75:	53                   	push   %rbx
  402b76:	48 83 ec 08          	sub    $0x8,%rsp
  402b7a:	89 f5                	mov    %esi,%ebp
  402b7c:	48 89 3d 85 49 00 00 	mov    %rdi,0x4985(%rip)        # 407508 <global_offset>
  402b83:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402b89:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402b8f:	b9 32 01 00 00       	mov    $0x132,%ecx
  402b94:	ba 07 00 00 00       	mov    $0x7,%edx
  402b99:	be 00 00 10 00       	mov    $0x100000,%esi
  402b9e:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402ba3:	e8 28 e7 ff ff       	callq  4012d0 <mmap@plt>
  402ba8:	48 89 c3             	mov    %rax,%rbx
  402bab:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402bb1:	75 4a                	jne    402bfd <stable_launch+0x8d>
  402bb3:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402bba:	48 89 15 8f 55 00 00 	mov    %rdx,0x558f(%rip)        # 408150 <stack_top>
  402bc1:	48 89 e0             	mov    %rsp,%rax
  402bc4:	48 89 d4             	mov    %rdx,%rsp
  402bc7:	48 89 c2             	mov    %rax,%rdx
  402bca:	48 89 15 2f 49 00 00 	mov    %rdx,0x492f(%rip)        # 407500 <global_save_stack>
  402bd1:	89 ee                	mov    %ebp,%esi
  402bd3:	48 8b 3d 2e 49 00 00 	mov    0x492e(%rip),%rdi        # 407508 <global_offset>
  402bda:	e8 85 fe ff ff       	callq  402a64 <launch>
  402bdf:	48 8b 05 1a 49 00 00 	mov    0x491a(%rip),%rax        # 407500 <global_save_stack>
  402be6:	48 89 c4             	mov    %rax,%rsp
  402be9:	be 00 00 10 00       	mov    $0x100000,%esi
  402bee:	48 89 df             	mov    %rbx,%rdi
  402bf1:	e8 ba e7 ff ff       	callq  4013b0 <munmap@plt>
  402bf6:	48 83 c4 08          	add    $0x8,%rsp
  402bfa:	5b                   	pop    %rbx
  402bfb:	5d                   	pop    %rbp
  402bfc:	c3                   	retq   
  402bfd:	be 00 00 10 00       	mov    $0x100000,%esi
  402c02:	48 89 c7             	mov    %rax,%rdi
  402c05:	e8 a6 e7 ff ff       	callq  4013b0 <munmap@plt>
  402c0a:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402c0f:	48 8d 15 32 1b 00 00 	lea    0x1b32(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402c16:	be 01 00 00 00       	mov    $0x1,%esi
  402c1b:	48 8b 3d be 48 00 00 	mov    0x48be(%rip),%rdi        # 4074e0 <stderr@@GLIBC_2.2.5>
  402c22:	b8 00 00 00 00       	mov    $0x0,%eax
  402c27:	e8 04 e8 ff ff       	callq  401430 <__fprintf_chk@plt>
  402c2c:	bf 01 00 00 00       	mov    $0x1,%edi
  402c31:	e8 da e7 ff ff       	callq  401410 <exit@plt>

0000000000402c36 <rio_readinitb>:
  402c36:	89 37                	mov    %esi,(%rdi)
  402c38:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402c3f:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402c43:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402c47:	c3                   	retq   

0000000000402c48 <sigalrm_handler>:
  402c48:	f3 0f 1e fa          	endbr64 
  402c4c:	50                   	push   %rax
  402c4d:	58                   	pop    %rax
  402c4e:	48 83 ec 08          	sub    $0x8,%rsp
  402c52:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c57:	48 8d 15 22 1b 00 00 	lea    0x1b22(%rip),%rdx        # 404780 <trans_char+0x10>
  402c5e:	be 01 00 00 00       	mov    $0x1,%esi
  402c63:	48 8b 3d 76 48 00 00 	mov    0x4876(%rip),%rdi        # 4074e0 <stderr@@GLIBC_2.2.5>
  402c6a:	b8 00 00 00 00       	mov    $0x0,%eax
  402c6f:	e8 bc e7 ff ff       	callq  401430 <__fprintf_chk@plt>
  402c74:	bf 01 00 00 00       	mov    $0x1,%edi
  402c79:	e8 92 e7 ff ff       	callq  401410 <exit@plt>

0000000000402c7e <rio_writen>:
  402c7e:	41 55                	push   %r13
  402c80:	41 54                	push   %r12
  402c82:	55                   	push   %rbp
  402c83:	53                   	push   %rbx
  402c84:	48 83 ec 08          	sub    $0x8,%rsp
  402c88:	41 89 fc             	mov    %edi,%r12d
  402c8b:	48 89 f5             	mov    %rsi,%rbp
  402c8e:	49 89 d5             	mov    %rdx,%r13
  402c91:	48 89 d3             	mov    %rdx,%rbx
  402c94:	eb 06                	jmp    402c9c <rio_writen+0x1e>
  402c96:	48 29 c3             	sub    %rax,%rbx
  402c99:	48 01 c5             	add    %rax,%rbp
  402c9c:	48 85 db             	test   %rbx,%rbx
  402c9f:	74 24                	je     402cc5 <rio_writen+0x47>
  402ca1:	48 89 da             	mov    %rbx,%rdx
  402ca4:	48 89 ee             	mov    %rbp,%rsi
  402ca7:	44 89 e7             	mov    %r12d,%edi
  402caa:	e8 11 e6 ff ff       	callq  4012c0 <write@plt>
  402caf:	48 85 c0             	test   %rax,%rax
  402cb2:	7f e2                	jg     402c96 <rio_writen+0x18>
  402cb4:	e8 a7 e5 ff ff       	callq  401260 <__errno_location@plt>
  402cb9:	83 38 04             	cmpl   $0x4,(%rax)
  402cbc:	75 15                	jne    402cd3 <rio_writen+0x55>
  402cbe:	b8 00 00 00 00       	mov    $0x0,%eax
  402cc3:	eb d1                	jmp    402c96 <rio_writen+0x18>
  402cc5:	4c 89 e8             	mov    %r13,%rax
  402cc8:	48 83 c4 08          	add    $0x8,%rsp
  402ccc:	5b                   	pop    %rbx
  402ccd:	5d                   	pop    %rbp
  402cce:	41 5c                	pop    %r12
  402cd0:	41 5d                	pop    %r13
  402cd2:	c3                   	retq   
  402cd3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402cda:	eb ec                	jmp    402cc8 <rio_writen+0x4a>

0000000000402cdc <rio_read>:
  402cdc:	41 55                	push   %r13
  402cde:	41 54                	push   %r12
  402ce0:	55                   	push   %rbp
  402ce1:	53                   	push   %rbx
  402ce2:	48 83 ec 08          	sub    $0x8,%rsp
  402ce6:	48 89 fb             	mov    %rdi,%rbx
  402ce9:	49 89 f5             	mov    %rsi,%r13
  402cec:	49 89 d4             	mov    %rdx,%r12
  402cef:	eb 17                	jmp    402d08 <rio_read+0x2c>
  402cf1:	e8 6a e5 ff ff       	callq  401260 <__errno_location@plt>
  402cf6:	83 38 04             	cmpl   $0x4,(%rax)
  402cf9:	74 0d                	je     402d08 <rio_read+0x2c>
  402cfb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402d02:	eb 54                	jmp    402d58 <rio_read+0x7c>
  402d04:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402d08:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402d0b:	85 ed                	test   %ebp,%ebp
  402d0d:	7f 23                	jg     402d32 <rio_read+0x56>
  402d0f:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402d13:	8b 3b                	mov    (%rbx),%edi
  402d15:	ba 00 20 00 00       	mov    $0x2000,%edx
  402d1a:	48 89 ee             	mov    %rbp,%rsi
  402d1d:	e8 ee e5 ff ff       	callq  401310 <read@plt>
  402d22:	89 43 04             	mov    %eax,0x4(%rbx)
  402d25:	85 c0                	test   %eax,%eax
  402d27:	78 c8                	js     402cf1 <rio_read+0x15>
  402d29:	75 d9                	jne    402d04 <rio_read+0x28>
  402d2b:	b8 00 00 00 00       	mov    $0x0,%eax
  402d30:	eb 26                	jmp    402d58 <rio_read+0x7c>
  402d32:	89 e8                	mov    %ebp,%eax
  402d34:	4c 39 e0             	cmp    %r12,%rax
  402d37:	72 03                	jb     402d3c <rio_read+0x60>
  402d39:	44 89 e5             	mov    %r12d,%ebp
  402d3c:	4c 63 e5             	movslq %ebp,%r12
  402d3f:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402d43:	4c 89 e2             	mov    %r12,%rdx
  402d46:	4c 89 ef             	mov    %r13,%rdi
  402d49:	e8 22 e6 ff ff       	callq  401370 <memcpy@plt>
  402d4e:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402d52:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402d55:	4c 89 e0             	mov    %r12,%rax
  402d58:	48 83 c4 08          	add    $0x8,%rsp
  402d5c:	5b                   	pop    %rbx
  402d5d:	5d                   	pop    %rbp
  402d5e:	41 5c                	pop    %r12
  402d60:	41 5d                	pop    %r13
  402d62:	c3                   	retq   

0000000000402d63 <rio_readlineb>:
  402d63:	41 55                	push   %r13
  402d65:	41 54                	push   %r12
  402d67:	55                   	push   %rbp
  402d68:	53                   	push   %rbx
  402d69:	48 83 ec 18          	sub    $0x18,%rsp
  402d6d:	49 89 fd             	mov    %rdi,%r13
  402d70:	48 89 f5             	mov    %rsi,%rbp
  402d73:	49 89 d4             	mov    %rdx,%r12
  402d76:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d7d:	00 00 
  402d7f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402d84:	31 c0                	xor    %eax,%eax
  402d86:	bb 01 00 00 00       	mov    $0x1,%ebx
  402d8b:	eb 18                	jmp    402da5 <rio_readlineb+0x42>
  402d8d:	85 c0                	test   %eax,%eax
  402d8f:	75 65                	jne    402df6 <rio_readlineb+0x93>
  402d91:	48 83 fb 01          	cmp    $0x1,%rbx
  402d95:	75 3d                	jne    402dd4 <rio_readlineb+0x71>
  402d97:	b8 00 00 00 00       	mov    $0x0,%eax
  402d9c:	eb 3d                	jmp    402ddb <rio_readlineb+0x78>
  402d9e:	48 83 c3 01          	add    $0x1,%rbx
  402da2:	48 89 d5             	mov    %rdx,%rbp
  402da5:	4c 39 e3             	cmp    %r12,%rbx
  402da8:	73 2a                	jae    402dd4 <rio_readlineb+0x71>
  402daa:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402daf:	ba 01 00 00 00       	mov    $0x1,%edx
  402db4:	4c 89 ef             	mov    %r13,%rdi
  402db7:	e8 20 ff ff ff       	callq  402cdc <rio_read>
  402dbc:	83 f8 01             	cmp    $0x1,%eax
  402dbf:	75 cc                	jne    402d8d <rio_readlineb+0x2a>
  402dc1:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402dc5:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402dca:	88 45 00             	mov    %al,0x0(%rbp)
  402dcd:	3c 0a                	cmp    $0xa,%al
  402dcf:	75 cd                	jne    402d9e <rio_readlineb+0x3b>
  402dd1:	48 89 d5             	mov    %rdx,%rbp
  402dd4:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402dd8:	48 89 d8             	mov    %rbx,%rax
  402ddb:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402de0:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402de7:	00 00 
  402de9:	75 14                	jne    402dff <rio_readlineb+0x9c>
  402deb:	48 83 c4 18          	add    $0x18,%rsp
  402def:	5b                   	pop    %rbx
  402df0:	5d                   	pop    %rbp
  402df1:	41 5c                	pop    %r12
  402df3:	41 5d                	pop    %r13
  402df5:	c3                   	retq   
  402df6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402dfd:	eb dc                	jmp    402ddb <rio_readlineb+0x78>
  402dff:	e8 06 fc ff ff       	callq  402a0a <__stack_chk_fail>

0000000000402e04 <urlencode>:
  402e04:	41 54                	push   %r12
  402e06:	55                   	push   %rbp
  402e07:	53                   	push   %rbx
  402e08:	48 83 ec 10          	sub    $0x10,%rsp
  402e0c:	48 89 fb             	mov    %rdi,%rbx
  402e0f:	48 89 f5             	mov    %rsi,%rbp
  402e12:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e19:	00 00 
  402e1b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402e20:	31 c0                	xor    %eax,%eax
  402e22:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402e29:	f2 ae                	repnz scas %es:(%rdi),%al
  402e2b:	48 f7 d1             	not    %rcx
  402e2e:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402e31:	eb 0f                	jmp    402e42 <urlencode+0x3e>
  402e33:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402e37:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402e3b:	48 83 c3 01          	add    $0x1,%rbx
  402e3f:	44 89 e0             	mov    %r12d,%eax
  402e42:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402e46:	85 c0                	test   %eax,%eax
  402e48:	0f 84 a8 00 00 00    	je     402ef6 <urlencode+0xf2>
  402e4e:	44 0f b6 03          	movzbl (%rbx),%r8d
  402e52:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402e56:	0f 94 c2             	sete   %dl
  402e59:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402e5d:	0f 94 c0             	sete   %al
  402e60:	08 c2                	or     %al,%dl
  402e62:	75 cf                	jne    402e33 <urlencode+0x2f>
  402e64:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402e68:	74 c9                	je     402e33 <urlencode+0x2f>
  402e6a:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402e6e:	74 c3                	je     402e33 <urlencode+0x2f>
  402e70:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402e74:	3c 09                	cmp    $0x9,%al
  402e76:	76 bb                	jbe    402e33 <urlencode+0x2f>
  402e78:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402e7c:	3c 19                	cmp    $0x19,%al
  402e7e:	76 b3                	jbe    402e33 <urlencode+0x2f>
  402e80:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402e84:	3c 19                	cmp    $0x19,%al
  402e86:	76 ab                	jbe    402e33 <urlencode+0x2f>
  402e88:	41 80 f8 20          	cmp    $0x20,%r8b
  402e8c:	74 56                	je     402ee4 <urlencode+0xe0>
  402e8e:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402e92:	3c 5f                	cmp    $0x5f,%al
  402e94:	0f 96 c2             	setbe  %dl
  402e97:	41 80 f8 09          	cmp    $0x9,%r8b
  402e9b:	0f 94 c0             	sete   %al
  402e9e:	08 c2                	or     %al,%dl
  402ea0:	74 4f                	je     402ef1 <urlencode+0xed>
  402ea2:	48 89 e7             	mov    %rsp,%rdi
  402ea5:	45 0f b6 c0          	movzbl %r8b,%r8d
  402ea9:	48 8d 0d 85 19 00 00 	lea    0x1985(%rip),%rcx        # 404835 <trans_char+0xc5>
  402eb0:	ba 08 00 00 00       	mov    $0x8,%edx
  402eb5:	be 01 00 00 00       	mov    $0x1,%esi
  402eba:	b8 00 00 00 00       	mov    $0x0,%eax
  402ebf:	e8 8c e5 ff ff       	callq  401450 <__sprintf_chk@plt>
  402ec4:	0f b6 04 24          	movzbl (%rsp),%eax
  402ec8:	88 45 00             	mov    %al,0x0(%rbp)
  402ecb:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402ed0:	88 45 01             	mov    %al,0x1(%rbp)
  402ed3:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402ed8:	88 45 02             	mov    %al,0x2(%rbp)
  402edb:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402edf:	e9 57 ff ff ff       	jmpq   402e3b <urlencode+0x37>
  402ee4:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402ee8:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402eec:	e9 4a ff ff ff       	jmpq   402e3b <urlencode+0x37>
  402ef1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ef6:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402efb:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402f02:	00 00 
  402f04:	75 09                	jne    402f0f <urlencode+0x10b>
  402f06:	48 83 c4 10          	add    $0x10,%rsp
  402f0a:	5b                   	pop    %rbx
  402f0b:	5d                   	pop    %rbp
  402f0c:	41 5c                	pop    %r12
  402f0e:	c3                   	retq   
  402f0f:	e8 f6 fa ff ff       	callq  402a0a <__stack_chk_fail>

0000000000402f14 <submitr>:
  402f14:	f3 0f 1e fa          	endbr64 
  402f18:	41 57                	push   %r15
  402f1a:	41 56                	push   %r14
  402f1c:	41 55                	push   %r13
  402f1e:	41 54                	push   %r12
  402f20:	55                   	push   %rbp
  402f21:	53                   	push   %rbx
  402f22:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402f29:	ff 
  402f2a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402f31:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402f36:	4c 39 dc             	cmp    %r11,%rsp
  402f39:	75 ef                	jne    402f2a <submitr+0x16>
  402f3b:	48 83 ec 68          	sub    $0x68,%rsp
  402f3f:	49 89 fc             	mov    %rdi,%r12
  402f42:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402f46:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402f4b:	49 89 cd             	mov    %rcx,%r13
  402f4e:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402f53:	4d 89 ce             	mov    %r9,%r14
  402f56:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402f5d:	00 
  402f5e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f65:	00 00 
  402f67:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402f6e:	00 
  402f6f:	31 c0                	xor    %eax,%eax
  402f71:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402f78:	00 
  402f79:	ba 00 00 00 00       	mov    $0x0,%edx
  402f7e:	be 01 00 00 00       	mov    $0x1,%esi
  402f83:	bf 02 00 00 00       	mov    $0x2,%edi
  402f88:	e8 d3 e4 ff ff       	callq  401460 <socket@plt>
  402f8d:	85 c0                	test   %eax,%eax
  402f8f:	0f 88 a5 02 00 00    	js     40323a <submitr+0x326>
  402f95:	89 c3                	mov    %eax,%ebx
  402f97:	4c 89 e7             	mov    %r12,%rdi
  402f9a:	e8 a1 e3 ff ff       	callq  401340 <gethostbyname@plt>
  402f9f:	48 85 c0             	test   %rax,%rax
  402fa2:	0f 84 de 02 00 00    	je     403286 <submitr+0x372>
  402fa8:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402fad:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402fb4:	00 00 
  402fb6:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402fbd:	00 00 
  402fbf:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402fc6:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402fca:	48 8b 40 18          	mov    0x18(%rax),%rax
  402fce:	48 8b 30             	mov    (%rax),%rsi
  402fd1:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402fd6:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402fdb:	e8 70 e3 ff ff       	callq  401350 <__memmove_chk@plt>
  402fe0:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402fe5:	66 c1 c6 08          	rol    $0x8,%si
  402fe9:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402fee:	ba 10 00 00 00       	mov    $0x10,%edx
  402ff3:	4c 89 fe             	mov    %r15,%rsi
  402ff6:	89 df                	mov    %ebx,%edi
  402ff8:	e8 23 e4 ff ff       	callq  401420 <connect@plt>
  402ffd:	85 c0                	test   %eax,%eax
  402fff:	0f 88 f7 02 00 00    	js     4032fc <submitr+0x3e8>
  403005:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40300c:	b8 00 00 00 00       	mov    $0x0,%eax
  403011:	48 89 f1             	mov    %rsi,%rcx
  403014:	4c 89 f7             	mov    %r14,%rdi
  403017:	f2 ae                	repnz scas %es:(%rdi),%al
  403019:	48 89 ca             	mov    %rcx,%rdx
  40301c:	48 f7 d2             	not    %rdx
  40301f:	48 89 f1             	mov    %rsi,%rcx
  403022:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  403027:	f2 ae                	repnz scas %es:(%rdi),%al
  403029:	48 f7 d1             	not    %rcx
  40302c:	49 89 c8             	mov    %rcx,%r8
  40302f:	48 89 f1             	mov    %rsi,%rcx
  403032:	4c 89 ef             	mov    %r13,%rdi
  403035:	f2 ae                	repnz scas %es:(%rdi),%al
  403037:	48 f7 d1             	not    %rcx
  40303a:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40303f:	48 89 f1             	mov    %rsi,%rcx
  403042:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  403047:	f2 ae                	repnz scas %es:(%rdi),%al
  403049:	48 89 c8             	mov    %rcx,%rax
  40304c:	48 f7 d0             	not    %rax
  40304f:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  403054:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  403059:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  403060:	00 
  403061:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  403067:	0f 87 f7 02 00 00    	ja     403364 <submitr+0x450>
  40306d:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  403074:	00 
  403075:	b9 00 04 00 00       	mov    $0x400,%ecx
  40307a:	b8 00 00 00 00       	mov    $0x0,%eax
  40307f:	48 89 f7             	mov    %rsi,%rdi
  403082:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  403085:	4c 89 f7             	mov    %r14,%rdi
  403088:	e8 77 fd ff ff       	callq  402e04 <urlencode>
  40308d:	85 c0                	test   %eax,%eax
  40308f:	0f 88 42 03 00 00    	js     4033d7 <submitr+0x4c3>
  403095:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  40309c:	00 
  40309d:	48 83 ec 08          	sub    $0x8,%rsp
  4030a1:	41 54                	push   %r12
  4030a3:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  4030aa:	00 
  4030ab:	50                   	push   %rax
  4030ac:	41 55                	push   %r13
  4030ae:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  4030b3:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  4030b8:	48 8d 0d e9 16 00 00 	lea    0x16e9(%rip),%rcx        # 4047a8 <trans_char+0x38>
  4030bf:	ba 00 20 00 00       	mov    $0x2000,%edx
  4030c4:	be 01 00 00 00       	mov    $0x1,%esi
  4030c9:	4c 89 ff             	mov    %r15,%rdi
  4030cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4030d1:	e8 7a e3 ff ff       	callq  401450 <__sprintf_chk@plt>
  4030d6:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4030dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4030e2:	4c 89 ff             	mov    %r15,%rdi
  4030e5:	f2 ae                	repnz scas %es:(%rdi),%al
  4030e7:	48 f7 d1             	not    %rcx
  4030ea:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4030ee:	48 83 c4 20          	add    $0x20,%rsp
  4030f2:	4c 89 fe             	mov    %r15,%rsi
  4030f5:	89 df                	mov    %ebx,%edi
  4030f7:	e8 82 fb ff ff       	callq  402c7e <rio_writen>
  4030fc:	48 85 c0             	test   %rax,%rax
  4030ff:	0f 88 5d 03 00 00    	js     403462 <submitr+0x54e>
  403105:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  40310a:	89 de                	mov    %ebx,%esi
  40310c:	4c 89 e7             	mov    %r12,%rdi
  40310f:	e8 22 fb ff ff       	callq  402c36 <rio_readinitb>
  403114:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40311b:	00 
  40311c:	ba 00 20 00 00       	mov    $0x2000,%edx
  403121:	4c 89 e7             	mov    %r12,%rdi
  403124:	e8 3a fc ff ff       	callq  402d63 <rio_readlineb>
  403129:	48 85 c0             	test   %rax,%rax
  40312c:	0f 8e 9c 03 00 00    	jle    4034ce <submitr+0x5ba>
  403132:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  403137:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  40313e:	00 
  40313f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  403146:	00 
  403147:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  40314e:	00 
  40314f:	48 8d 35 e6 16 00 00 	lea    0x16e6(%rip),%rsi        # 40483c <trans_char+0xcc>
  403156:	b8 00 00 00 00       	mov    $0x0,%eax
  40315b:	e8 40 e2 ff ff       	callq  4013a0 <__isoc99_sscanf@plt>
  403160:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403167:	00 
  403168:	b9 03 00 00 00       	mov    $0x3,%ecx
  40316d:	48 8d 3d df 16 00 00 	lea    0x16df(%rip),%rdi        # 404853 <trans_char+0xe3>
  403174:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403176:	0f 97 c0             	seta   %al
  403179:	1c 00                	sbb    $0x0,%al
  40317b:	84 c0                	test   %al,%al
  40317d:	0f 84 cb 03 00 00    	je     40354e <submitr+0x63a>
  403183:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40318a:	00 
  40318b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403190:	ba 00 20 00 00       	mov    $0x2000,%edx
  403195:	e8 c9 fb ff ff       	callq  402d63 <rio_readlineb>
  40319a:	48 85 c0             	test   %rax,%rax
  40319d:	7f c1                	jg     403160 <submitr+0x24c>
  40319f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4031a6:	3a 20 43 
  4031a9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4031b0:	20 75 6e 
  4031b3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031b7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031bb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031c2:	74 6f 20 
  4031c5:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4031cc:	68 65 61 
  4031cf:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4031d3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031d7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4031de:	66 72 6f 
  4031e1:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  4031e8:	6f 6c 61 
  4031eb:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031ef:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031f3:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4031fa:	76 65 72 
  4031fd:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403201:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  403205:	89 df                	mov    %ebx,%edi
  403207:	e8 f4 e0 ff ff       	callq  401300 <close@plt>
  40320c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403211:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  403218:	00 
  403219:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  403220:	00 00 
  403222:	0f 85 96 04 00 00    	jne    4036be <submitr+0x7aa>
  403228:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  40322f:	5b                   	pop    %rbx
  403230:	5d                   	pop    %rbp
  403231:	41 5c                	pop    %r12
  403233:	41 5d                	pop    %r13
  403235:	41 5e                	pop    %r14
  403237:	41 5f                	pop    %r15
  403239:	c3                   	retq   
  40323a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403241:	3a 20 43 
  403244:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40324b:	20 75 6e 
  40324e:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403252:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403256:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40325d:	74 6f 20 
  403260:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403267:	65 20 73 
  40326a:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40326e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403272:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403279:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40327f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403284:	eb 8b                	jmp    403211 <submitr+0x2fd>
  403286:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40328d:	3a 20 44 
  403290:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403297:	20 75 6e 
  40329a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40329e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032a2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4032a9:	74 6f 20 
  4032ac:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4032b3:	76 65 20 
  4032b6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032ba:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032be:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4032c5:	61 62 20 
  4032c8:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  4032cf:	72 20 61 
  4032d2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4032d6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4032da:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  4032e1:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  4032e7:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  4032eb:	89 df                	mov    %ebx,%edi
  4032ed:	e8 0e e0 ff ff       	callq  401300 <close@plt>
  4032f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032f7:	e9 15 ff ff ff       	jmpq   403211 <submitr+0x2fd>
  4032fc:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  403303:	3a 20 55 
  403306:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40330d:	20 74 6f 
  403310:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403314:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403318:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40331f:	65 63 74 
  403322:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403329:	68 65 20 
  40332c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403330:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403334:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40333b:	61 62 20 
  40333e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403342:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403349:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  40334f:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403353:	89 df                	mov    %ebx,%edi
  403355:	e8 a6 df ff ff       	callq  401300 <close@plt>
  40335a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40335f:	e9 ad fe ff ff       	jmpq   403211 <submitr+0x2fd>
  403364:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40336b:	3a 20 52 
  40336e:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  403375:	20 73 74 
  403378:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40337c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403380:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  403387:	74 6f 6f 
  40338a:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403391:	65 2e 20 
  403394:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403398:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40339c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4033a3:	61 73 65 
  4033a6:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4033ad:	49 54 52 
  4033b0:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4033b4:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4033b8:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4033bf:	55 46 00 
  4033c2:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4033c6:	89 df                	mov    %ebx,%edi
  4033c8:	e8 33 df ff ff       	callq  401300 <close@plt>
  4033cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033d2:	e9 3a fe ff ff       	jmpq   403211 <submitr+0x2fd>
  4033d7:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4033de:	3a 20 52 
  4033e1:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4033e8:	20 73 74 
  4033eb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033ef:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4033f3:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4033fa:	63 6f 6e 
  4033fd:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  403404:	20 61 6e 
  403407:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40340b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40340f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  403416:	67 61 6c 
  403419:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403420:	6e 70 72 
  403423:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403427:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40342b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403432:	6c 65 20 
  403435:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40343c:	63 74 65 
  40343f:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403443:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  403447:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40344d:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  403451:	89 df                	mov    %ebx,%edi
  403453:	e8 a8 de ff ff       	callq  401300 <close@plt>
  403458:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40345d:	e9 af fd ff ff       	jmpq   403211 <submitr+0x2fd>
  403462:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403469:	3a 20 43 
  40346c:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403473:	20 75 6e 
  403476:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40347a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40347e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403485:	74 6f 20 
  403488:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  40348f:	20 74 6f 
  403492:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403496:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40349a:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4034a1:	41 75 74 
  4034a4:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4034ab:	73 65 72 
  4034ae:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4034b2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4034b6:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  4034bd:	89 df                	mov    %ebx,%edi
  4034bf:	e8 3c de ff ff       	callq  401300 <close@plt>
  4034c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034c9:	e9 43 fd ff ff       	jmpq   403211 <submitr+0x2fd>
  4034ce:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4034d5:	3a 20 43 
  4034d8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4034df:	20 75 6e 
  4034e2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034e6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034ea:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4034f1:	74 6f 20 
  4034f4:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4034fb:	66 69 72 
  4034fe:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403502:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403506:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40350d:	61 64 65 
  403510:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  403517:	6d 20 41 
  40351a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40351e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403522:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403529:	62 20 73 
  40352c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403530:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  403537:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  40353d:	89 df                	mov    %ebx,%edi
  40353f:	e8 bc dd ff ff       	callq  401300 <close@plt>
  403544:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403549:	e9 c3 fc ff ff       	jmpq   403211 <submitr+0x2fd>
  40354e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403555:	00 
  403556:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40355b:	ba 00 20 00 00       	mov    $0x2000,%edx
  403560:	e8 fe f7 ff ff       	callq  402d63 <rio_readlineb>
  403565:	48 85 c0             	test   %rax,%rax
  403568:	0f 8e 96 00 00 00    	jle    403604 <submitr+0x6f0>
  40356e:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  403573:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  40357a:	0f 85 05 01 00 00    	jne    403685 <submitr+0x771>
  403580:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403587:	00 
  403588:	48 89 ef             	mov    %rbp,%rdi
  40358b:	e8 10 dd ff ff       	callq  4012a0 <strcpy@plt>
  403590:	89 df                	mov    %ebx,%edi
  403592:	e8 69 dd ff ff       	callq  401300 <close@plt>
  403597:	b9 04 00 00 00       	mov    $0x4,%ecx
  40359c:	48 8d 3d aa 12 00 00 	lea    0x12aa(%rip),%rdi        # 40484d <trans_char+0xdd>
  4035a3:	48 89 ee             	mov    %rbp,%rsi
  4035a6:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4035a8:	0f 97 c0             	seta   %al
  4035ab:	1c 00                	sbb    $0x0,%al
  4035ad:	0f be c0             	movsbl %al,%eax
  4035b0:	85 c0                	test   %eax,%eax
  4035b2:	0f 84 59 fc ff ff    	je     403211 <submitr+0x2fd>
  4035b8:	b9 05 00 00 00       	mov    $0x5,%ecx
  4035bd:	48 8d 3d 8d 12 00 00 	lea    0x128d(%rip),%rdi        # 404851 <trans_char+0xe1>
  4035c4:	48 89 ee             	mov    %rbp,%rsi
  4035c7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4035c9:	0f 97 c0             	seta   %al
  4035cc:	1c 00                	sbb    $0x0,%al
  4035ce:	0f be c0             	movsbl %al,%eax
  4035d1:	85 c0                	test   %eax,%eax
  4035d3:	0f 84 38 fc ff ff    	je     403211 <submitr+0x2fd>
  4035d9:	b9 03 00 00 00       	mov    $0x3,%ecx
  4035de:	48 8d 3d 71 12 00 00 	lea    0x1271(%rip),%rdi        # 404856 <trans_char+0xe6>
  4035e5:	48 89 ee             	mov    %rbp,%rsi
  4035e8:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4035ea:	0f 97 c0             	seta   %al
  4035ed:	1c 00                	sbb    $0x0,%al
  4035ef:	0f be c0             	movsbl %al,%eax
  4035f2:	85 c0                	test   %eax,%eax
  4035f4:	0f 84 17 fc ff ff    	je     403211 <submitr+0x2fd>
  4035fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035ff:	e9 0d fc ff ff       	jmpq   403211 <submitr+0x2fd>
  403604:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40360b:	3a 20 43 
  40360e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403615:	20 75 6e 
  403618:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40361c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403620:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403627:	74 6f 20 
  40362a:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403631:	73 74 61 
  403634:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403638:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40363c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  403643:	65 73 73 
  403646:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  40364d:	72 6f 6d 
  403650:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403654:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403658:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  40365f:	6c 61 62 
  403662:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403669:	65 72 00 
  40366c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403670:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  403674:	89 df                	mov    %ebx,%edi
  403676:	e8 85 dc ff ff       	callq  401300 <close@plt>
  40367b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403680:	e9 8c fb ff ff       	jmpq   403211 <submitr+0x2fd>
  403685:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  40368c:	00 
  40368d:	48 8d 0d 74 11 00 00 	lea    0x1174(%rip),%rcx        # 404808 <trans_char+0x98>
  403694:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40369b:	be 01 00 00 00       	mov    $0x1,%esi
  4036a0:	48 89 ef             	mov    %rbp,%rdi
  4036a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4036a8:	e8 a3 dd ff ff       	callq  401450 <__sprintf_chk@plt>
  4036ad:	89 df                	mov    %ebx,%edi
  4036af:	e8 4c dc ff ff       	callq  401300 <close@plt>
  4036b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4036b9:	e9 53 fb ff ff       	jmpq   403211 <submitr+0x2fd>
  4036be:	e8 47 f3 ff ff       	callq  402a0a <__stack_chk_fail>

00000000004036c3 <init_timeout>:
  4036c3:	f3 0f 1e fa          	endbr64 
  4036c7:	85 ff                	test   %edi,%edi
  4036c9:	74 26                	je     4036f1 <init_timeout+0x2e>
  4036cb:	53                   	push   %rbx
  4036cc:	89 fb                	mov    %edi,%ebx
  4036ce:	78 1a                	js     4036ea <init_timeout+0x27>
  4036d0:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402c48 <sigalrm_handler>
  4036d7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4036dc:	e8 4f dc ff ff       	callq  401330 <signal@plt>
  4036e1:	89 df                	mov    %ebx,%edi
  4036e3:	e8 08 dc ff ff       	callq  4012f0 <alarm@plt>
  4036e8:	5b                   	pop    %rbx
  4036e9:	c3                   	retq   
  4036ea:	bb 00 00 00 00       	mov    $0x0,%ebx
  4036ef:	eb df                	jmp    4036d0 <init_timeout+0xd>
  4036f1:	c3                   	retq   

00000000004036f2 <init_driver>:
  4036f2:	f3 0f 1e fa          	endbr64 
  4036f6:	41 54                	push   %r12
  4036f8:	55                   	push   %rbp
  4036f9:	53                   	push   %rbx
  4036fa:	48 83 ec 20          	sub    $0x20,%rsp
  4036fe:	48 89 fd             	mov    %rdi,%rbp
  403701:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403708:	00 00 
  40370a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40370f:	31 c0                	xor    %eax,%eax
  403711:	be 01 00 00 00       	mov    $0x1,%esi
  403716:	bf 0d 00 00 00       	mov    $0xd,%edi
  40371b:	e8 10 dc ff ff       	callq  401330 <signal@plt>
  403720:	be 01 00 00 00       	mov    $0x1,%esi
  403725:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40372a:	e8 01 dc ff ff       	callq  401330 <signal@plt>
  40372f:	be 01 00 00 00       	mov    $0x1,%esi
  403734:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403739:	e8 f2 db ff ff       	callq  401330 <signal@plt>
  40373e:	ba 00 00 00 00       	mov    $0x0,%edx
  403743:	be 01 00 00 00       	mov    $0x1,%esi
  403748:	bf 02 00 00 00       	mov    $0x2,%edi
  40374d:	e8 0e dd ff ff       	callq  401460 <socket@plt>
  403752:	85 c0                	test   %eax,%eax
  403754:	0f 88 9c 00 00 00    	js     4037f6 <init_driver+0x104>
  40375a:	89 c3                	mov    %eax,%ebx
  40375c:	48 8d 3d f6 10 00 00 	lea    0x10f6(%rip),%rdi        # 404859 <trans_char+0xe9>
  403763:	e8 d8 db ff ff       	callq  401340 <gethostbyname@plt>
  403768:	48 85 c0             	test   %rax,%rax
  40376b:	0f 84 d1 00 00 00    	je     403842 <init_driver+0x150>
  403771:	49 89 e4             	mov    %rsp,%r12
  403774:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40377b:	00 
  40377c:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  403783:	00 00 
  403785:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40378b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40378f:	48 8b 40 18          	mov    0x18(%rax),%rax
  403793:	48 8b 30             	mov    (%rax),%rsi
  403796:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40379b:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4037a0:	e8 ab db ff ff       	callq  401350 <__memmove_chk@plt>
  4037a5:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  4037ac:	ba 10 00 00 00       	mov    $0x10,%edx
  4037b1:	4c 89 e6             	mov    %r12,%rsi
  4037b4:	89 df                	mov    %ebx,%edi
  4037b6:	e8 65 dc ff ff       	callq  401420 <connect@plt>
  4037bb:	85 c0                	test   %eax,%eax
  4037bd:	0f 88 e7 00 00 00    	js     4038aa <init_driver+0x1b8>
  4037c3:	89 df                	mov    %ebx,%edi
  4037c5:	e8 36 db ff ff       	callq  401300 <close@plt>
  4037ca:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4037d0:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4037d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4037d9:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4037de:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4037e5:	00 00 
  4037e7:	0f 85 10 01 00 00    	jne    4038fd <init_driver+0x20b>
  4037ed:	48 83 c4 20          	add    $0x20,%rsp
  4037f1:	5b                   	pop    %rbx
  4037f2:	5d                   	pop    %rbp
  4037f3:	41 5c                	pop    %r12
  4037f5:	c3                   	retq   
  4037f6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4037fd:	3a 20 43 
  403800:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403807:	20 75 6e 
  40380a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40380e:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403812:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403819:	74 6f 20 
  40381c:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403823:	65 20 73 
  403826:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40382a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40382e:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403835:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40383b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403840:	eb 97                	jmp    4037d9 <init_driver+0xe7>
  403842:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403849:	3a 20 44 
  40384c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403853:	20 75 6e 
  403856:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40385a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40385e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403865:	74 6f 20 
  403868:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40386f:	76 65 20 
  403872:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403876:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40387a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403881:	72 20 61 
  403884:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403888:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40388f:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  403895:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403899:	89 df                	mov    %ebx,%edi
  40389b:	e8 60 da ff ff       	callq  401300 <close@plt>
  4038a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4038a5:	e9 2f ff ff ff       	jmpq   4037d9 <init_driver+0xe7>
  4038aa:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4038b1:	3a 20 55 
  4038b4:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4038bb:	20 74 6f 
  4038be:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4038c2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4038c6:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4038cd:	65 63 74 
  4038d0:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4038d7:	65 72 76 
  4038da:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4038de:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4038e2:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4038e8:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4038ec:	89 df                	mov    %ebx,%edi
  4038ee:	e8 0d da ff ff       	callq  401300 <close@plt>
  4038f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4038f8:	e9 dc fe ff ff       	jmpq   4037d9 <init_driver+0xe7>
  4038fd:	e8 08 f1 ff ff       	callq  402a0a <__stack_chk_fail>

0000000000403902 <driver_post>:
  403902:	f3 0f 1e fa          	endbr64 
  403906:	53                   	push   %rbx
  403907:	4c 89 cb             	mov    %r9,%rbx
  40390a:	45 85 c0             	test   %r8d,%r8d
  40390d:	75 18                	jne    403927 <driver_post+0x25>
  40390f:	48 85 ff             	test   %rdi,%rdi
  403912:	74 05                	je     403919 <driver_post+0x17>
  403914:	80 3f 00             	cmpb   $0x0,(%rdi)
  403917:	75 37                	jne    403950 <driver_post+0x4e>
  403919:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40391e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403922:	44 89 c0             	mov    %r8d,%eax
  403925:	5b                   	pop    %rbx
  403926:	c3                   	retq   
  403927:	48 89 ca             	mov    %rcx,%rdx
  40392a:	48 8d 35 38 0f 00 00 	lea    0xf38(%rip),%rsi        # 404869 <trans_char+0xf9>
  403931:	bf 01 00 00 00       	mov    $0x1,%edi
  403936:	b8 00 00 00 00       	mov    $0x0,%eax
  40393b:	e8 80 da ff ff       	callq  4013c0 <__printf_chk@plt>
  403940:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403945:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403949:	b8 00 00 00 00       	mov    $0x0,%eax
  40394e:	eb d5                	jmp    403925 <driver_post+0x23>
  403950:	48 83 ec 08          	sub    $0x8,%rsp
  403954:	41 51                	push   %r9
  403956:	49 89 c9             	mov    %rcx,%r9
  403959:	49 89 d0             	mov    %rdx,%r8
  40395c:	48 89 f9             	mov    %rdi,%rcx
  40395f:	48 89 f2             	mov    %rsi,%rdx
  403962:	be 39 30 00 00       	mov    $0x3039,%esi
  403967:	48 8d 3d eb 0e 00 00 	lea    0xeeb(%rip),%rdi        # 404859 <trans_char+0xe9>
  40396e:	e8 a1 f5 ff ff       	callq  402f14 <submitr>
  403973:	48 83 c4 10          	add    $0x10,%rsp
  403977:	eb ac                	jmp    403925 <driver_post+0x23>

0000000000403979 <check>:
  403979:	f3 0f 1e fa          	endbr64 
  40397d:	89 f8                	mov    %edi,%eax
  40397f:	c1 e8 1c             	shr    $0x1c,%eax
  403982:	74 1d                	je     4039a1 <check+0x28>
  403984:	b9 00 00 00 00       	mov    $0x0,%ecx
  403989:	83 f9 1f             	cmp    $0x1f,%ecx
  40398c:	7f 0d                	jg     40399b <check+0x22>
  40398e:	89 f8                	mov    %edi,%eax
  403990:	d3 e8                	shr    %cl,%eax
  403992:	3c 0a                	cmp    $0xa,%al
  403994:	74 11                	je     4039a7 <check+0x2e>
  403996:	83 c1 08             	add    $0x8,%ecx
  403999:	eb ee                	jmp    403989 <check+0x10>
  40399b:	b8 01 00 00 00       	mov    $0x1,%eax
  4039a0:	c3                   	retq   
  4039a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4039a6:	c3                   	retq   
  4039a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4039ac:	c3                   	retq   

00000000004039ad <gencookie>:
  4039ad:	f3 0f 1e fa          	endbr64 
  4039b1:	53                   	push   %rbx
  4039b2:	83 c7 01             	add    $0x1,%edi
  4039b5:	e8 b6 d8 ff ff       	callq  401270 <srandom@plt>
  4039ba:	e8 d1 d9 ff ff       	callq  401390 <random@plt>
  4039bf:	48 89 c7             	mov    %rax,%rdi
  4039c2:	89 c3                	mov    %eax,%ebx
  4039c4:	e8 b0 ff ff ff       	callq  403979 <check>
  4039c9:	85 c0                	test   %eax,%eax
  4039cb:	74 ed                	je     4039ba <gencookie+0xd>
  4039cd:	89 d8                	mov    %ebx,%eax
  4039cf:	5b                   	pop    %rbx
  4039d0:	c3                   	retq   
  4039d1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4039d8:	00 00 00 
  4039db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004039e0 <__libc_csu_init>:
  4039e0:	f3 0f 1e fa          	endbr64 
  4039e4:	41 57                	push   %r15
  4039e6:	4c 8d 3d 23 34 00 00 	lea    0x3423(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  4039ed:	41 56                	push   %r14
  4039ef:	49 89 d6             	mov    %rdx,%r14
  4039f2:	41 55                	push   %r13
  4039f4:	49 89 f5             	mov    %rsi,%r13
  4039f7:	41 54                	push   %r12
  4039f9:	41 89 fc             	mov    %edi,%r12d
  4039fc:	55                   	push   %rbp
  4039fd:	48 8d 2d 14 34 00 00 	lea    0x3414(%rip),%rbp        # 406e18 <__init_array_end>
  403a04:	53                   	push   %rbx
  403a05:	4c 29 fd             	sub    %r15,%rbp
  403a08:	48 83 ec 08          	sub    $0x8,%rsp
  403a0c:	e8 ef d5 ff ff       	callq  401000 <_init>
  403a11:	48 c1 fd 03          	sar    $0x3,%rbp
  403a15:	74 1f                	je     403a36 <__libc_csu_init+0x56>
  403a17:	31 db                	xor    %ebx,%ebx
  403a19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403a20:	4c 89 f2             	mov    %r14,%rdx
  403a23:	4c 89 ee             	mov    %r13,%rsi
  403a26:	44 89 e7             	mov    %r12d,%edi
  403a29:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  403a2d:	48 83 c3 01          	add    $0x1,%rbx
  403a31:	48 39 dd             	cmp    %rbx,%rbp
  403a34:	75 ea                	jne    403a20 <__libc_csu_init+0x40>
  403a36:	48 83 c4 08          	add    $0x8,%rsp
  403a3a:	5b                   	pop    %rbx
  403a3b:	5d                   	pop    %rbp
  403a3c:	41 5c                	pop    %r12
  403a3e:	41 5d                	pop    %r13
  403a40:	41 5e                	pop    %r14
  403a42:	41 5f                	pop    %r15
  403a44:	c3                   	retq   
  403a45:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  403a4c:	00 00 00 00 

0000000000403a50 <__libc_csu_fini>:
  403a50:	f3 0f 1e fa          	endbr64 
  403a54:	c3                   	retq   

Disassembly of section .fini:

0000000000403a58 <_fini>:
  403a58:	f3 0f 1e fa          	endbr64 
  403a5c:	48 83 ec 08          	sub    $0x8,%rsp
  403a60:	48 83 c4 08          	add    $0x8,%rsp
  403a64:	c3                   	retq   

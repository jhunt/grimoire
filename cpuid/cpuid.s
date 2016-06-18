# cpuid.s
# Extract the Process Vendor ID from CPUID

.data
output:
  .ascii "The processor Vendor ID is 'xxxxxxxxxxxx'\n"

.text
.globl start

start:
  movl $0, %eax
  cpuid

  movl $output, %edi
  movl %ebx, 28(%edi)
  movl %edx, 32(%edi)
  movl %ecx, 36(%edi)

  movl $0x2000004, %eax
  movl $1, %edi
  movl $output, %esi
  movl $42, %edx
  syscall

  movl $0x2000001, %eax
  movl $0, %edi
  syscall

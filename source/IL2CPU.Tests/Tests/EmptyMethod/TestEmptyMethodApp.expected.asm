format PE console
entry ___ENTRYPOINT___


section '.code' code readable executable

	___ENTRYPOINT___:
			call System_Void___IL2CPU_Tests_Tests_TestEmptyMethodApp_Main____
			pushd 0
			call [ExitProcess]

	System_Void___IL2CPU_Tests_Tests_TestEmptyMethodApp_Main____:
			mov ebp,esp
			pushd ebp

		.L00000000:
			; IL: Nop 
			nop

		.L00000001:
			; IL: Ret 
			pop ebp
			ret 

section '.idata' import data readable writeable

	dd 0,0,0,rva kernel32_dll_name,rva kernel32_dll_table
	dd 0,0,0,0,0

	kernel32_dll_table:
		ExitProcess dd rva _ExitProcess
		dd 0

	kernel32_dll_name db 'kernel32.dll',0

	_ExitProcess dw 0
	db 'ExitProcess',0

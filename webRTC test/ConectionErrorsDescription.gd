extends RefCounted
class_name Errors

func error_desc(error_code):
	var description
	match error_code:
		0:
			description ="SUCCES Succes Connection"
		1:
			description ="FAILED Generic error."
		2:
			description ="ERR_UNAVAILABLE Unavailable error."
		3:
			description ="ERR_UNCONFIGURED Unconfigured error."
		4:
			description ="ERR_UNAUTHORIZED Unauthorized error."
		5:
			description ="ERR_PARAMETER_RANGE_ERROR Parameter range error."
		6:
			description ="ERR_OUT_OF_MEMORY Out of memory (OOM) error."
		7:
			description ="ERR_FILE_NOT_FOUND File: Not found error."
		8:
			description ="ERR_FILE_BAD_DRIVE File: Bad drive error."
		9:
			description ="ERR_FILE_BAD_PATH File: Bad path error."
		10:
			description ="ERR_FILE_NO_PERMISSION File: No permission error."
		11:
			description ="ERR_FILE_ALREADY_IN_USE File: Already in use error."
		12:
			description ="ERR_FILE_CANT_OPEN File: Can't open error."
		13:
			description ="ERR_FILE_CANT_WRITE File: Can't write error."
		14:
			description ="ERR_FILE_CANT_READ File: Can't read error."
		15:
			description ="ERR_FILE_UNRECOGNIZED File: Unrecognized error."
		16:
			description ="ERR_FILE_CORRUPT File: Corrupt error."
		17:
			description ="ERR_FILE_MISSING_DEPENDENCIES File: Missing dependencies error."
		18:
			description ="ERR_FILE_EOF File: End of file (EOF) error."
		19:
			description ="ERR_CANT_OPEN Can't open error."
		20:
			description ="ERR_CANT_CREATE Can't create error."
		21:
			description ="ERR_QUERY_FAILED Query failed error."
		22:
			description ="ERR_ALREADY_IN_USE Already in use error."
		23:
			description ="ERR_LOCKED Locked error."
		24:
			description ="ERR_TIMEOUT Timeout error."
		25:
			description ="ERR_CANT_CONNECT Can't connect error."
		26:
			description ="ERR_CANT_RESOLVE Can't resolve error."
		27:
			description ="ERR_CONNECTION_ERROR Connection error."
		28:
			description ="ERR_CANT_ACQUIRE_RESOURCE Can't acquire resource error."
		29:
			description ="ERR_CANT_FORK Can't fork process error."
		30:
			description ="ERR_INVALID_DATA Invalid data error."
		31:
			description ="ERR_INVALID_PARAMETER Invalid parameter error."
		32:
			description ="ERR_ALREADY_EXISTS Already exists error."
		33:
			description ="ERR_DOES_NOT_EXIST Does not exist error."
		34:
			description ="ERR_DATABASE_CANT_READ Database: Read error."
		35:
			description ="ERR_DATABASE_CANT_WRITE Database: Write error."
		36:
			description ="ERR_COMPILATION_FAILED Compilation failed error."
		37:
			description ="ERR_METHOD_NOT_FOUND Method not found error."
		38:
			description ="ERR_LINK_FAILED Linking failed error."
		39:
			description ="ERR_SCRIPT_FAILED Script failed error."
		40:
			description ="ERR_CYCLIC_LINK Cycling link (import cycle) error."
		41:
			description ="ERR_INVALID_DECLARATION Invalid declaration error."
		42:
			description ="ERR_DUPLICATE_SYMBOL Duplicate symbol error."
		43:
			description ="ERR_PARSE_ERROR Parse error."
		44:
			description ="ERR_BUSY Busy error."
		45:
			description ="ERR_SKIP Skip error."
		46:
			description ="ERR_HELP Help error. Used internally when passing --version or --help as executable options."
		47:
			description ="ERR_BUG Bug error, caused by an implementation issue in the method."
	return description

lib LibMysql
  $mysql_port : LibC::UInt
  $mysql_unix_port : LibC::Char*
  MYSQL_DATA_TRUNCATED   =    101
  MYSQL_ERRMSG_SIZE      =    512
  MYSQL_LONG_DATA_HEADER =      6
  MYSQL_NO_DATA          =    100
  MYSQL_PORT             =   3306
  MYSQL_PORT_DEFAULT     =      0
  MYSQL_STMT_HEADER      =      4
  MYSQL_TYPE_VIRTUAL     =    245
  MYSQL_VERSION_ID       = 100129
  MYSQL_WAIT_EXCEPT      =      4
  MYSQL_WAIT_READ        =      1
  MYSQL_WAIT_TIMEOUT     =      8
  MYSQL_WAIT_WRITE       =      2
  alias EmbeddedQueryResult = Void
  alias MyBool = LibC::Char
  alias MySocket = LibC::Int
  alias MyUlonglong = LibC::ULongLong
  alias MysqlFieldOffset = LibC::UInt
  alias MysqlRow = LibC::Char**
  alias MysqlRowOffset = MysqlRows*
  alias StMysqlMethods = Void
  alias StMysqlOptionsExtention = Void
  alias StMysqlStmtExtension = Void
  enum EnumFieldTypes
    MysqlTypeDecimal    =   0
    MysqlTypeTiny       =   1
    MysqlTypeShort      =   2
    MysqlTypeLong       =   3
    MysqlTypeFloat      =   4
    MysqlTypeDouble     =   5
    MysqlTypeNull       =   6
    MysqlTypeTimestamp  =   7
    MysqlTypeLonglong   =   8
    MysqlTypeInt24      =   9
    MysqlTypeDate       =  10
    MysqlTypeTime       =  11
    MysqlTypeDatetime   =  12
    MysqlTypeYear       =  13
    MysqlTypeNewdate    =  14
    MysqlTypeVarchar    =  15
    MysqlTypeBit        =  16
    MysqlTypeTimestamp2 =  17
    MysqlTypeDatetime2  =  18
    MysqlTypeTime2      =  19
    MysqlTypeNewdecimal = 246
    MysqlTypeEnum       = 247
    MysqlTypeSet        = 248
    MysqlTypeTinyBlob   = 249
    MysqlTypeMediumBlob = 250
    MysqlTypeLongBlob   = 251
    MysqlTypeBlob       = 252
    MysqlTypeVarString  = 253
    MysqlTypeString     = 254
    MysqlTypeGeometry   = 255
  end
  enum EnumMysqlSetOption
    MysqlOptionMultiStatementsOn  = 0
    MysqlOptionMultiStatementsOff = 1
  end
  enum EnumMysqlStmtState
    MysqlStmtInitDone    = 1
    MysqlStmtPrepareDone = 2
    MysqlStmtExecuteDone = 3
    MysqlStmtFetchDone   = 4
  end
  enum EnumStmtAttrType
    StmtAttrUpdateMaxLength = 0
    StmtAttrCursorType      = 1
    StmtAttrPrefetchRows    = 2
  end
  enum MysqlEnumShutdownLevel
    ShutdownDefault             =  0
    ShutdownWaitConnections     =  1
    ShutdownWaitTransactions    =  2
    ShutdownWaitUpdates         =  8
    ShutdownWaitAllBuffers      = 16
    ShutdownWaitCriticalBuffers = 17
  end
  enum MysqlOption
    MysqlOptConnectTimeout            =    0
    MysqlOptCompress                  =    1
    MysqlOptNamedPipe                 =    2
    MysqlInitCommand                  =    3
    MysqlReadDefaultFile              =    4
    MysqlReadDefaultGroup             =    5
    MysqlSetCharsetDir                =    6
    MysqlSetCharsetName               =    7
    MysqlOptLocalInfile               =    8
    MysqlOptProtocol                  =    9
    MysqlSharedMemoryBaseName         =   10
    MysqlOptReadTimeout               =   11
    MysqlOptWriteTimeout              =   12
    MysqlOptUseResult                 =   13
    MysqlOptUseRemoteConnection       =   14
    MysqlOptUseEmbeddedConnection     =   15
    MysqlOptGuessConnection           =   16
    MysqlSetClientIp                  =   17
    MysqlSecureAuth                   =   18
    MysqlReportDataTruncation         =   19
    MysqlOptReconnect                 =   20
    MysqlOptSslVerifyServerCert       =   21
    MysqlPluginDir                    =   22
    MysqlDefaultAuth                  =   23
    MysqlOptBind                      =   24
    MysqlOptSslKey                    =   25
    MysqlOptSslCert                   =   26
    MysqlOptSslCa                     =   27
    MysqlOptSslCapath                 =   28
    MysqlOptSslCipher                 =   29
    MysqlOptSslCrl                    =   30
    MysqlOptSslCrlpath                =   31
    MysqlOptConnectAttrReset          =   32
    MysqlOptConnectAttrAdd            =   33
    MysqlOptConnectAttrDelete         =   34
    MysqlServerPublicKey              =   35
    MysqlEnableCleartextPlugin        =   36
    MysqlOptCanHandleExpiredPasswords =   37
    MysqlProgressCallback             = 5999
    MysqlOptNonblock                  = 6000
    MysqlOptUseThreadSpecificMemory   = 6001
  end
  enum MysqlStatus
    MysqlStatusReady              = 0
    MysqlStatusGetResult          = 1
    MysqlStatusUseResult          = 2
    MysqlStatusStatementGetResult = 3
  end
  fun mysql_affected_rows(mysql : Mysql*) : MyUlonglong
  fun mysql_autocommit(mysql : Mysql*, auto_mode : MyBool) : MyBool
  fun mysql_autocommit_cont(ret : MyBool*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_autocommit_start(ret : MyBool*, mysql : Mysql*, auto_mode : MyBool) : LibC::Int
  fun mysql_change_user(mysql : Mysql*, user : LibC::Char*, passwd : LibC::Char*, db : LibC::Char*) : MyBool
  fun mysql_change_user_cont(ret : MyBool*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_change_user_start(ret : MyBool*, mysql : Mysql*, user : LibC::Char*, passwd : LibC::Char*, db : LibC::Char*) : LibC::Int
  fun mysql_character_set_name(mysql : Mysql*) : LibC::Char*
  fun mysql_close(sock : Mysql*)
  fun mysql_close_cont(sock : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_close_slow_part(mysql : Mysql*)
  fun mysql_close_start(sock : Mysql*) : LibC::Int
  fun mysql_commit(mysql : Mysql*) : MyBool
  fun mysql_commit_cont(ret : MyBool*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_commit_start(ret : MyBool*, mysql : Mysql*) : LibC::Int
  fun mysql_data_seek(result : MysqlRes*, offset : MyUlonglong)
  fun mysql_debug(debug : LibC::Char*)
  fun mysql_dump_debug_info(mysql : Mysql*) : LibC::Int
  fun mysql_dump_debug_info_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_dump_debug_info_start(ret : LibC::Int*, mysql : Mysql*) : LibC::Int
  fun mysql_embedded : MyBool
  fun mysql_eof(res : MysqlRes*) : MyBool
  fun mysql_errno(mysql : Mysql*) : LibC::UInt
  fun mysql_errno_to_sqlstate(mysql_errno : LibC::UInt) : LibC::Char*
  fun mysql_error(mysql : Mysql*) : LibC::Char*
  fun mysql_escape_string(to : LibC::Char*, from : LibC::Char*, from_length : LibC::ULong) : LibC::ULong
  fun mysql_fetch_field(result : MysqlRes*) : MysqlField*
  fun mysql_fetch_field_direct(res : MysqlRes*, fieldnr : LibC::UInt) : MysqlField*
  fun mysql_fetch_fields(res : MysqlRes*) : MysqlField*
  fun mysql_fetch_lengths(result : MysqlRes*) : LibC::ULong*
  fun mysql_fetch_row(result : MysqlRes*) : MysqlRow
  fun mysql_fetch_row_cont(ret : MysqlRow*, result : MysqlRes*, status : LibC::Int) : LibC::Int
  fun mysql_fetch_row_start(ret : MysqlRow*, result : MysqlRes*) : LibC::Int
  fun mysql_field_count(mysql : Mysql*) : LibC::UInt
  fun mysql_field_seek(result : MysqlRes*, offset : MysqlFieldOffset) : MysqlFieldOffset
  fun mysql_field_tell(res : MysqlRes*) : MysqlFieldOffset
  fun mysql_free_result(result : MysqlRes*)
  fun mysql_free_result_cont(result : MysqlRes*, status : LibC::Int) : LibC::Int
  fun mysql_free_result_start(result : MysqlRes*) : LibC::Int
  fun mysql_get_character_set_info(mysql : Mysql*, charset : MyCharsetInfo*)
  fun mysql_get_client_info : LibC::Char*
  fun mysql_get_client_version : LibC::ULong
  fun mysql_get_host_info(mysql : Mysql*) : LibC::Char*
  fun mysql_get_parameters : MysqlParameters*
  fun mysql_get_proto_info(mysql : Mysql*) : LibC::UInt
  fun mysql_get_server_info(mysql : Mysql*) : LibC::Char*
  fun mysql_get_server_name(mysql : Mysql*) : LibC::Char*
  fun mysql_get_server_version(mysql : Mysql*) : LibC::ULong
  fun mysql_get_socket(mysql : Mysql*) : MySocket
  fun mysql_get_ssl_cipher(mysql : Mysql*) : LibC::Char*
  fun mysql_get_timeout_value(mysql : Mysql*) : LibC::UInt
  fun mysql_get_timeout_value_ms(mysql : Mysql*) : LibC::UInt
  fun mysql_hex_string(to : LibC::Char*, from : LibC::Char*, from_length : LibC::ULong) : LibC::ULong
  fun mysql_info(mysql : Mysql*) : LibC::Char*
  fun mysql_init(mysql : Mysql*) : Mysql*
  fun mysql_insert_id(mysql : Mysql*) : MyUlonglong
  fun mysql_kill(mysql : Mysql*, pid : LibC::ULong) : LibC::Int
  fun mysql_kill_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_kill_start(ret : LibC::Int*, mysql : Mysql*, pid : LibC::ULong) : LibC::Int
  fun mysql_list_dbs(mysql : Mysql*, wild : LibC::Char*) : MysqlRes*
  fun mysql_list_dbs_cont(ret : MysqlRes**, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_list_dbs_start(ret : MysqlRes**, mysql : Mysql*, wild : LibC::Char*) : LibC::Int
  fun mysql_list_fields(mysql : Mysql*, table : LibC::Char*, wild : LibC::Char*) : MysqlRes*
  fun mysql_list_fields_cont(ret : MysqlRes**, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_list_fields_start(ret : MysqlRes**, mysql : Mysql*, table : LibC::Char*, wild : LibC::Char*) : LibC::Int
  fun mysql_list_processes(mysql : Mysql*) : MysqlRes*
  fun mysql_list_processes_cont(ret : MysqlRes**, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_list_processes_start(ret : MysqlRes**, mysql : Mysql*) : LibC::Int
  fun mysql_list_tables(mysql : Mysql*, wild : LibC::Char*) : MysqlRes*
  fun mysql_list_tables_cont(ret : MysqlRes**, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_list_tables_start(ret : MysqlRes**, mysql : Mysql*, wild : LibC::Char*) : LibC::Int
  fun mysql_more_results(mysql : Mysql*) : MyBool
  fun mysql_net_field_length(packet : UInt8**) : LibC::ULong
  fun mysql_net_read_packet(mysql : Mysql*) : LibC::ULong
  fun mysql_next_result(mysql : Mysql*) : LibC::Int
  fun mysql_next_result_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_next_result_start(ret : LibC::Int*, mysql : Mysql*) : LibC::Int
  fun mysql_num_fields(res : MysqlRes*) : LibC::UInt
  fun mysql_num_rows(res : MysqlRes*) : MyUlonglong
  fun mysql_options(mysql : Mysql*, option : MysqlOption, arg : Void*) : LibC::Int
  fun mysql_options4(mysql : Mysql*, option : MysqlOption, arg1 : Void*, arg2 : Void*) : LibC::Int
  fun mysql_ping(mysql : Mysql*) : LibC::Int
  fun mysql_ping_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_ping_start(ret : LibC::Int*, mysql : Mysql*) : LibC::Int
  fun mysql_query(mysql : Mysql*, q : LibC::Char*) : LibC::Int
  fun mysql_query_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_query_start(ret : LibC::Int*, mysql : Mysql*, q : LibC::Char*) : LibC::Int
  fun mysql_read_query_result(mysql : Mysql*) : MyBool
  fun mysql_read_query_result_cont(ret : MyBool*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_read_query_result_start(ret : MyBool*, mysql : Mysql*) : LibC::Int
  fun mysql_real_connect(mysql : Mysql*, host : LibC::Char*, user : LibC::Char*, passwd : LibC::Char*, db : LibC::Char*, port : LibC::UInt, unix_socket : LibC::Char*, clientflag : LibC::ULong) : Mysql*
  fun mysql_real_connect_cont(ret : Mysql**, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_real_connect_start(ret : Mysql**, mysql : Mysql*, host : LibC::Char*, user : LibC::Char*, passwd : LibC::Char*, db : LibC::Char*, port : LibC::UInt, unix_socket : LibC::Char*, clientflag : LibC::ULong) : LibC::Int
  fun mysql_real_escape_string(mysql : Mysql*, to : LibC::Char*, from : LibC::Char*, length : LibC::ULong) : LibC::ULong
  fun mysql_real_query(mysql : Mysql*, q : LibC::Char*, length : LibC::ULong) : LibC::Int
  fun mysql_real_query_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_real_query_start(ret : LibC::Int*, mysql : Mysql*, q : LibC::Char*, length : LibC::ULong) : LibC::Int
  fun mysql_refresh(mysql : Mysql*, refresh_options : LibC::UInt) : LibC::Int
  fun mysql_refresh_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_refresh_start(ret : LibC::Int*, mysql : Mysql*, refresh_options : LibC::UInt) : LibC::Int
  fun mysql_rollback(mysql : Mysql*) : MyBool
  fun mysql_rollback_cont(ret : MyBool*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_rollback_start(ret : MyBool*, mysql : Mysql*) : LibC::Int
  fun mysql_row_seek(result : MysqlRes*, offset : MysqlRowOffset) : MysqlRowOffset
  fun mysql_row_tell(res : MysqlRes*) : MysqlRowOffset
  fun mysql_select_db(mysql : Mysql*, db : LibC::Char*) : LibC::Int
  fun mysql_select_db_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_select_db_start(ret : LibC::Int*, mysql : Mysql*, db : LibC::Char*) : LibC::Int
  fun mysql_send_query(mysql : Mysql*, q : LibC::Char*, length : LibC::ULong) : LibC::Int
  fun mysql_send_query_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_send_query_start(ret : LibC::Int*, mysql : Mysql*, q : LibC::Char*, length : LibC::ULong) : LibC::Int
  fun mysql_server_end
  fun mysql_server_init(argc : LibC::Int, argv : LibC::Char**, groups : LibC::Char**) : LibC::Int
  fun mysql_set_character_set(mysql : Mysql*, csname : LibC::Char*) : LibC::Int
  fun mysql_set_character_set_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_set_character_set_start(ret : LibC::Int*, mysql : Mysql*, csname : LibC::Char*) : LibC::Int
  fun mysql_set_local_infile_default(mysql : Mysql*)
  fun mysql_set_local_infile_handler(mysql : Mysql*, local_infile_init : (Void**, LibC::Char*, Void* -> LibC::Int), local_infile_read : (Void*, LibC::Char*, LibC::UInt -> LibC::Int), local_infile_end : (Void* -> Void), local_infile_error : (Void*, LibC::Char*, LibC::UInt -> LibC::Int), x5 : Void*)
  fun mysql_set_server_option(mysql : Mysql*, option : EnumMysqlSetOption) : LibC::Int
  fun mysql_set_server_option_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_set_server_option_start(ret : LibC::Int*, mysql : Mysql*, option : EnumMysqlSetOption) : LibC::Int
  fun mysql_shutdown(mysql : Mysql*, shutdown_level : MysqlEnumShutdownLevel) : LibC::Int
  fun mysql_shutdown_cont(ret : LibC::Int*, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_shutdown_start(ret : LibC::Int*, mysql : Mysql*, shutdown_level : MysqlEnumShutdownLevel) : LibC::Int
  fun mysql_sqlstate(mysql : Mysql*) : LibC::Char*
  fun mysql_ssl_set(mysql : Mysql*, key : LibC::Char*, cert : LibC::Char*, ca : LibC::Char*, capath : LibC::Char*, cipher : LibC::Char*) : MyBool
  fun mysql_stat(mysql : Mysql*) : LibC::Char*
  fun mysql_stat_cont(ret : LibC::Char**, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_stat_start(ret : LibC::Char**, mysql : Mysql*) : LibC::Int
  fun mysql_stmt_affected_rows(stmt : MysqlStmt*) : MyUlonglong
  fun mysql_stmt_attr_get(stmt : MysqlStmt*, attr_type : EnumStmtAttrType, attr : Void*) : MyBool
  fun mysql_stmt_attr_set(stmt : MysqlStmt*, attr_type : EnumStmtAttrType, attr : Void*) : MyBool
  fun mysql_stmt_bind_param(stmt : MysqlStmt*, bnd : MysqlBind*) : MyBool
  fun mysql_stmt_bind_result(stmt : MysqlStmt*, bnd : MysqlBind*) : MyBool
  fun mysql_stmt_close(stmt : MysqlStmt*) : MyBool
  fun mysql_stmt_close_cont(ret : MyBool*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_close_start(ret : MyBool*, stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_data_seek(stmt : MysqlStmt*, offset : MyUlonglong)
  fun mysql_stmt_errno(stmt : MysqlStmt*) : LibC::UInt
  fun mysql_stmt_error(stmt : MysqlStmt*) : LibC::Char*
  fun mysql_stmt_execute(stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_execute_cont(ret : LibC::Int*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_execute_start(ret : LibC::Int*, stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_fetch(stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_fetch_column(stmt : MysqlStmt*, bind_arg : MysqlBind*, column : LibC::UInt, offset : LibC::ULong) : LibC::Int
  fun mysql_stmt_fetch_cont(ret : LibC::Int*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_fetch_start(ret : LibC::Int*, stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_field_count(stmt : MysqlStmt*) : LibC::UInt
  fun mysql_stmt_free_result(stmt : MysqlStmt*) : MyBool
  fun mysql_stmt_free_result_cont(ret : MyBool*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_free_result_start(ret : MyBool*, stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_init(mysql : Mysql*) : MysqlStmt*
  fun mysql_stmt_insert_id(stmt : MysqlStmt*) : MyUlonglong
  fun mysql_stmt_next_result(stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_next_result_cont(ret : LibC::Int*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_next_result_start(ret : LibC::Int*, stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_num_rows(stmt : MysqlStmt*) : MyUlonglong
  fun mysql_stmt_param_count(stmt : MysqlStmt*) : LibC::ULong
  fun mysql_stmt_param_metadata(stmt : MysqlStmt*) : MysqlRes*
  fun mysql_stmt_prepare(stmt : MysqlStmt*, query : LibC::Char*, length : LibC::ULong) : LibC::Int
  fun mysql_stmt_prepare_cont(ret : LibC::Int*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_prepare_start(ret : LibC::Int*, stmt : MysqlStmt*, query : LibC::Char*, length : LibC::ULong) : LibC::Int
  fun mysql_stmt_reset(stmt : MysqlStmt*) : MyBool
  fun mysql_stmt_reset_cont(ret : MyBool*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_reset_start(ret : MyBool*, stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_result_metadata(stmt : MysqlStmt*) : MysqlRes*
  fun mysql_stmt_row_seek(stmt : MysqlStmt*, offset : MysqlRowOffset) : MysqlRowOffset
  fun mysql_stmt_row_tell(stmt : MysqlStmt*) : MysqlRowOffset
  fun mysql_stmt_send_long_data(stmt : MysqlStmt*, param_number : LibC::UInt, data : LibC::Char*, length : LibC::ULong) : MyBool
  fun mysql_stmt_send_long_data_cont(ret : MyBool*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_send_long_data_start(ret : MyBool*, stmt : MysqlStmt*, param_number : LibC::UInt, data : LibC::Char*, len : LibC::ULong) : LibC::Int
  fun mysql_stmt_sqlstate(stmt : MysqlStmt*) : LibC::Char*
  fun mysql_stmt_store_result(stmt : MysqlStmt*) : LibC::Int
  fun mysql_stmt_store_result_cont(ret : LibC::Int*, stmt : MysqlStmt*, status : LibC::Int) : LibC::Int
  fun mysql_stmt_store_result_start(ret : LibC::Int*, stmt : MysqlStmt*) : LibC::Int
  fun mysql_store_result(mysql : Mysql*) : MysqlRes*
  fun mysql_store_result_cont(ret : MysqlRes**, mysql : Mysql*, status : LibC::Int) : LibC::Int
  fun mysql_store_result_start(ret : MysqlRes**, mysql : Mysql*) : LibC::Int
  fun mysql_thread_end
  fun mysql_thread_id(mysql : Mysql*) : LibC::ULong
  fun mysql_thread_init : MyBool
  fun mysql_thread_safe : LibC::UInt
  fun mysql_use_result(mysql : Mysql*) : MysqlRes*
  fun mysql_warning_count(mysql : Mysql*) : LibC::UInt

  struct CharacterSet
    number : LibC::UInt
    state : LibC::UInt
    csname : LibC::Char*
    name : LibC::Char*
    comment : LibC::Char*
    dir : LibC::Char*
    mbminlen : LibC::UInt
    mbmaxlen : LibC::UInt
  end

  struct StList
    prev : StList*
    next : StList*
    data : Void*
  end

  struct StMemRoot
    free : UsedMem*
    used : UsedMem*
    pre_alloc : UsedMem*
    min_malloc : LibC::Int
    block_size : LibC::Int
    block_num : LibC::UInt
    first_block_usage : LibC::UInt
    error_handler : (-> Void)
  end

  struct StMysql
    net : Net
    connector_fd : UInt8*
    host : LibC::Char*
    user : LibC::Char*
    passwd : LibC::Char*
    unix_socket : LibC::Char*
    server_version : LibC::Char*
    host_info : LibC::Char*
    info : LibC::Char*
    db : LibC::Char*
    charset : Void*
    fields : MysqlField*
    field_alloc : MemRoot
    affected_rows : MyUlonglong
    insert_id : MyUlonglong
    extra_info : MyUlonglong
    thread_id : LibC::ULong
    packet_length : LibC::ULong
    port : LibC::UInt
    client_flag : LibC::ULong
    server_capabilities : LibC::ULong
    protocol_version : LibC::UInt
    field_count : LibC::UInt
    server_status : LibC::UInt
    server_language : LibC::UInt
    warning_count : LibC::UInt
    options : StMysqlOptions
    status : MysqlStatus
    free_me : MyBool
    reconnect : MyBool
    scramble : LibC::Char[21]
    unused1 : MyBool
    unused2 : Void*
    unused3 : Void*
    unused4 : Void*
    unused5 : Void*
    stmts : List*
    methods : StMysqlMethods*
    thd : Void*
    unbuffered_fetch_owner : MyBool*
    info_buffer : LibC::Char*
    extension : Void*
  end

  struct StMysqlBind
    length : LibC::ULong*
    is_null : MyBool*
    buffer : Void*
    error : MyBool*
    row_ptr : UInt8*
    store_param_func : (Net*, StMysqlBind* -> Void)
    fetch_result : (StMysqlBind*, MysqlField*, UInt8** -> Void)
    skip_result : (StMysqlBind*, MysqlField*, UInt8** -> Void)
    buffer_length : LibC::ULong
    offset : LibC::ULong
    length_value : LibC::ULong
    param_number : LibC::UInt
    pack_length : LibC::UInt
    buffer_type : EnumFieldTypes
    error_value : MyBool
    is_unsigned : MyBool
    long_data_used : MyBool
    is_null_value : MyBool
    extension : Void*
  end

  struct StMysqlData
    data : MysqlRows*
    embedded_info : EmbeddedQueryResult*
    alloc : MemRoot
    rows : MyUlonglong
    fields : LibC::UInt
    extension : Void*
  end

  struct StMysqlField
    name : LibC::Char*
    org_name : LibC::Char*
    table : LibC::Char*
    org_table : LibC::Char*
    db : LibC::Char*
    catalog : LibC::Char*
    _def : LibC::Char*
    length : LibC::ULong
    max_length : LibC::ULong
    name_length : LibC::UInt
    org_name_length : LibC::UInt
    table_length : LibC::UInt
    org_table_length : LibC::UInt
    db_length : LibC::UInt
    catalog_length : LibC::UInt
    def_length : LibC::UInt
    flags : LibC::UInt
    decimals : LibC::UInt
    charsetnr : LibC::UInt
    _type : EnumFieldTypes
    extension : Void*
  end

  struct StMysqlOptions
    connect_timeout : LibC::UInt
    read_timeout : LibC::UInt
    write_timeout : LibC::UInt
    port : LibC::UInt
    protocol : LibC::UInt
    client_flag : LibC::ULong
    host : LibC::Char*
    user : LibC::Char*
    password : LibC::Char*
    unix_socket : LibC::Char*
    db : LibC::Char*
    init_commands : Void*
    my_cnf_file : LibC::Char*
    my_cnf_group : LibC::Char*
    charset_dir : LibC::Char*
    charset_name : LibC::Char*
    ssl_key : LibC::Char*
    ssl_cert : LibC::Char*
    ssl_ca : LibC::Char*
    ssl_capath : LibC::Char*
    ssl_cipher : LibC::Char*
    shared_memory_base_name : LibC::Char*
    max_allowed_packet : LibC::ULong
    use_ssl : MyBool
    compress : MyBool
    named_pipe : MyBool
    use_thread_specific_memory : MyBool
    unused2 : MyBool
    unused3 : MyBool
    unused4 : MyBool
    methods_to_use : MysqlOption
    client_ip : LibC::Char*
    secure_auth : MyBool
    report_data_truncation : MyBool
    local_infile_init : (Void**, LibC::Char*, Void* -> LibC::Int)
    local_infile_read : (Void*, LibC::Char*, LibC::UInt -> LibC::Int)
    local_infile_end : (Void* -> Void)
    local_infile_error : (Void*, LibC::Char*, LibC::UInt -> LibC::Int)
    local_infile_userdata : Void*
    extension : StMysqlOptionsExtention*
  end

  struct StMysqlParameters
    p_max_allowed_packet : LibC::ULong*
    p_net_buffer_length : LibC::ULong*
    extension : Void*
  end

  struct StMysqlRes
    row_count : MyUlonglong
    fields : MysqlField*
    data : MysqlData*
    data_cursor : MysqlRows*
    lengths : LibC::ULong*
    handle : Mysql*
    methods : StMysqlMethods*
    row : MysqlRow
    current_row : MysqlRow
    field_alloc : MemRoot
    field_count : LibC::UInt
    current_field : LibC::UInt
    eof : MyBool
    unbuffered_fetch_cancelled : MyBool
    extension : Void*
  end

  struct StMysqlRows
    next : StMysqlRows*
    data : MysqlRow
    length : LibC::ULong
  end

  struct StMysqlStmt
    mem_root : MemRoot
    list : List
    mysql : Mysql*
    params : MysqlBind*
    bind : MysqlBind*
    fields : MysqlField*
    result : MysqlData
    data_cursor : MysqlRows*
    read_row_func : (StMysqlStmt*, UInt8** -> LibC::Int)
    affected_rows : MyUlonglong
    insert_id : MyUlonglong
    stmt_id : LibC::ULong
    flags : LibC::ULong
    prefetch_rows : LibC::ULong
    server_status : LibC::UInt
    last_errno : LibC::UInt
    param_count : LibC::UInt
    field_count : LibC::UInt
    state : EnumMysqlStmtState
    last_error : LibC::Char[512]
    sqlstate : LibC::Char[6]
    send_types_to_server : MyBool
    bind_param_done : MyBool
    bind_result_done : UInt8
    unbuffered_fetch_cancelled : MyBool
    update_max_length : MyBool
    extension : StMysqlStmtExtension*
  end

  struct StNet
    vio : Vio
    buff : UInt8*
    buff_end : UInt8*
    write_pos : UInt8*
    read_pos : UInt8*
    fd : MySocket
    remain_in_buf : LibC::ULong
    length : LibC::ULong
    buf_length : LibC::ULong
    where_b : LibC::ULong
    max_packet : LibC::ULong
    max_packet_size : LibC::ULong
    pkt_nr : LibC::UInt
    compress_pkt_nr : LibC::UInt
    write_timeout : LibC::UInt
    read_timeout : LibC::UInt
    retry_count : LibC::UInt
    fcntl : LibC::Int
    return_status : LibC::UInt*
    reading_or_writing : UInt8
    save_char : LibC::Char
    net_skip_rest_factor : LibC::Char
    thread_specific_malloc : MyBool
    compress : UInt8
    unused3 : MyBool
    thd : Void*
    last_errno : LibC::UInt
    error : UInt8
    unused4 : MyBool
    unused5 : MyBool
    last_error : LibC::Char[512]
    sqlstate : LibC::Char[6]
    extension : Void*
  end

  struct StUsedMem
    next : StUsedMem*
    left : LibC::Int
    size : LibC::Int
  end

  alias List = StList
  alias MemRoot = StMemRoot
  alias MyCharsetInfo = CharacterSet
  alias Mysql = StMysql
  alias MysqlBind = StMysqlBind
  alias MysqlData = StMysqlData
  alias MysqlField = StMysqlField
  alias MysqlParameters = StMysqlParameters
  alias MysqlRes = StMysqlRes
  alias MysqlRows = StMysqlRows
  alias MysqlStmt = StMysqlStmt
  alias Net = StNet
  alias UsedMem = StUsedMem
  alias Vio = Void*
end

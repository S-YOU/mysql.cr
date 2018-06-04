require "./lib_mysql"

@[Link(ldflags: "-lmysqlclient")]
lib LibMysql
  $stderr : Void*
  $stdout : Void*
end

class Mysql
  NULL = nil

  forward_missing_to LibMysql
end

-- This file was automatically generated for the LuaDist project.

package = "LuaSQL-MySQL"
version = "2.3.0-1"
-- LuaDist source
source = {
  tag = "2.3.0-1",
  url = "git://github.com/LuaDist2/luasql-mysql.git"
}
-- Original source
-- source = {
--   url = "git://github.com/keplerproject/luasql.git",
--   branch = "v2.3.0",
-- }
description = {
   summary = "Database connectivity for Lua (MySQL driver)",
   detailed = [[
      LuaSQL is a simple interface from Lua to a DBMS. It enables a
      Lua program to connect to databases, execute arbitrary SQL statements
      and retrieve results in a row-by-row cursor fashion.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/luasql/"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   MYSQL = {
      header = "mysql.h"
   }
}
build = {
   type = "builtin",
   modules = {
     ["luasql.mysql"] = {
       sources = { "src/luasql.c", "src/ls_mysql.c" },
       libraries = { "mysqlclient" },
       incdirs = { "$(MYSQL_INCDIR)" },
       libdirs = { "$(MYSQL_LIBDIR)" }
     }
   }
}
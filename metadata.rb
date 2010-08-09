maintainer        "Paper Cavalier"
maintainer_email  "code@papercavalier.com"
license           "Apache 2.0"
description       "Installs and configures MongoDB Stable"
version           "0.1.0"

recipe "mongodb::default", "Installs latest stable MongoDB from 10gen Ubuntu packages including custom init.d script"

supports "ubuntu"



# Paths & port
attribute "mongodb/datadir",
  :display_name => "MongoDB data store",
  :description => "All MongoDB data will be stored here",
  :default => "/data/mongodb"

attribute "mongodb/config",
  :display_name => "MongoDB config",
  :description => "Path to MongoDB config file",
  :default => "/etc/mongo.conf"

attribute "mongodb/logfile",
  :display_name => "MongoDB log file",
  :description => "MongoDB will log into this file",
  :default => "/var/log/mongodb.log"

attribute "mongodb/pidfile",
  :display_name => "MongoDB PID file",
  :description => "Path to MongoDB PID file",
  :default => "/data/mongodb/mongodb.lock"

attribute "mongodb/port",
  :display_name => "MongoDB port",
  :description => "Accept connections on the specified port",
  :default => "27017"



# Logging, access & others
attribute "mongodb/log_cpu_io",
  :display_name => "MongoDB CPU & I/O logging",
  :description => "Enables periodic logging of CPU utilization and I/O wait",
  :default => "false"

attribute "mongodb/auth",
  :display_name => "MongoDB authentication",
  :description => "Turn on/off security",
  :default => "false"

attribute "mongodb/verbose",
  :display_name => "MongoDB verbose",
  :description => "Verbose logging output",
  :default => "false"

attribute "mongodb/objcheck",
  :display_name => "MongoDB objcheck",
  :description => "Inspect all client data for validity on receipt (useful for developing drivers)",
  :default => "false"

attribute "mongodb/quota",
  :display_name => "MongoDB quota",
  :description => "Enable db quota management",
  :default => "false"

attribute "mongodb/diaglog",
  :display_name => "MongoDB operations loggins",
  :description => "Set oplogging level where n is 0=off (default) 1=W 2=R 3=both 7=W+some reads",
  :default => "false"

attribute "mongodb/nocursors",
  :display_name => "MongoDB nocursors",
  :description => "Diagnostic/debugging option",
  :default => "false"

attribute "mongodb/nohints",
  :display_name => "MongoDB nohints",
  :description => "Ignore query hints",
  :default => "false"

attribute "mongodb/nohttp",
  :display_name => "MongoDB nohttp",
  :description => "Disable the HTTP interface (Defaults to localhost:27018)",
  :default => "false"

attribute "mongodb/noscripting",
  :display_name => "MongoDB noscripting",
  :description => "Turns off server-side scripting. This will result in greatly limited functionality.",
  :default => "false"

attribute "mongodb/notablescan",
  :display_name => "MongoDB notablescan",
  :description => "Turns off table scans. Any query that would do a table scan fails.",
  :default => "false"

attribute "mongodb/noprealloc",
  :display_name => "MongoDB noprealloc",
  :description => "Disable data file preallocation",
  :default => "false"

attribute "mongodb/nssize",
  :display_name => "MongoDB nssize",
  :description => "Specify .ns file size for new databases",
  :default => "false"



# Monitoring
attribute "mongodb/mms",
  :display_name => "MongoDB mms",
  :description => "Enable when you have a Mongo monitoring server",
  :default => "false"

attribute "mongodb/mms/token",
  :display_name => "MongoDB mms-token",
  :description => "Accout token for Mongo monitoring server"

attribute "mongodb/mms/name",
  :display_name => "MongoDB mms-name",
  :description => "Server name for Mongo monitoring server"

attribute "mongodb/mms/interval",
  :display_name => "MongoDB mms-interval",
  :description => "Ping interval for Mongo monitoring server"



# Replication
attribute "mongodb/replication",
  :display_name => "MongoDB replication",
  :description => "Enable if you want to configure replication",
  :default => "false"

attribute "mongodb/replication/slave",
  :display_name => "MongoDB replication slave",
  :description => "In replicated mongo databases, specify here whether this is a slave or master",
  :default => "false"

attribute "mongodb/replication/slave/source",
  :display_name => "MongoDB replication slave source",
  :description => "Source for replication"

attribute "mongodb/replication/slave/only",
  :display_name => "MongoDB replication slave only",
  :description => "Slave only: specify a single database to replicate"

attribute "mongodb/replication/master",
  :display_name => "MongoDB replication master",
  :description => "In replicated mongo databases, specify here whether this is a slave or master",
  :default => "false"

attribute "mongodb/replication/master/source",
  :display_name => "MongoDB replication master source",
  :description => "Source for replication"

attribute "mongodb/replication/pairwith",
  :display_name => "MongoDB replication pairwith",
  :description => "Address of a server to pair with"

attribute "mongodb/replication/arbiter",
  :display_name => "MongoDB replication arbiter",
  :description => "Address of arbiter server"

attribute "mongodb/replication/autoresync",
  :display_name => "MongoDB replication autoresync",
  :description => "Automatically resync if slave data is stale",
  :default => "false"

attribute "mongodb/replication/oplogsize",
  :display_name => "MongoDB replication oplogsize",
  :description => "Custom size for replication operation log (in MB)",
  :default => "0"

attribute "mongodb/replication/opidmem",
  :display_name => "MongoDB replication opidmem",
  :description => "Custom size limit for in-memory storage of op ids (in MB)",
  :default => "0"
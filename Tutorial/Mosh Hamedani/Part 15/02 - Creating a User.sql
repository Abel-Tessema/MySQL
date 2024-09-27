CREATE USER john@127.0.0.1; -- Can only connect from the current server
CREATE USER john@localhost; -- Can only connect from this host name
CREATE USER john@belajash.com; -- Can only connect from this domain
CREATE USER john@'%.belajash.com'; -- Can only connect from this domain and its subdomains
CREATE USER john; -- No restrictions
CREATE USER john IDENTIFIED BY '1234';
/*Implementacion de sentencias y permisos*/

/*Creacion del primer usuario*/
create user 'agustin'@'localhost' identified by '123456';

/*Para ver los permisos del primer usuario*/
show grants for 'agustin'@'localhost';

/*Para revocar permisos de este 1er usuario*/
revoke all on *.* from 'agustin'@'localhost';

/*Creacion del segundo usuario*/
create user 'rodrigo'@'localhost' identified by '12345';

/*Para ver los permisos del segundo usuario*/
show grants for 'rodrigo'@'localhost';

/*Para revocar permisos de este 2do usuario*/
revoke all on *.* from 'rodrigo'@'localhost';

/*Para ver usuarios creados*/
use mysql;
select * from mysql.user;

/*Otorgando permisos de lectura del primer usuario*/
grant select on fundacion_futbol.* to 'agustin'@'localhost';

/*Otorgando permisos de lectura, insercion y modificacion de datos*/

grant select, insert, update on fundacion_futbol.* to 'rodrigo'@'localhost';












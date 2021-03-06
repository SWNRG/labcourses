#VIDEO SERVER
curl -X POST -d '{"id":"1","name":"vip1","protocol":"tcp","address":"10.0.0.200","port":"8080"}' http://localhost:8080/quantum/v1.0/vips/
curl -X POST -d '{"id":"1","name":"pool2","protocol":"tcp","vip_id":"1"}' http://localhost:8080/quantum/v1.0/pools/
curl -X POST -d '{"id":"11","address":"10.0.0.2","port":"8080","pool_id":"1"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"12","address":"10.0.0.3","port":"8080","pool_id":"1"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"13","address":"10.0.0.4","port":"8080","pool_id":"1"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"14","address":"10.0.0.5","port":"8080","pool_id":"1"}' http://localhost:8080/quantum/v1.0/members/

#WEB SERVER
curl -X POST -d '{"id":"2","name":"vip2","protocol":"tcp","address":"10.0.0.200","port":"80"}' http://localhost:8080/quantum/v1.0/vips/
curl -X POST -d '{"id":"2","name":"pool2","protocol":"tcp","vip_id":"2"}' http://localhost:8080/quantum/v1.0/pools/
curl -X POST -d '{"id":"21","address":"10.0.0.2","port":"80","pool_id":"2"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"22","address":"10.0.0.3","port":"80","pool_id":"2"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"23","address":"10.0.0.4","port":"80","pool_id":"2"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"24","address":"10.0.0.5","port":"80","pool_id":"2"}' http://localhost:8080/quantum/v1.0/members/

#FTP SERVER
curl -X POST -d '{"id":"3","name":"vip3","protocol":"tcp","address":"10.0.0.200","port":"21"}' http://localhost:8080/quantum/v1.0/vips/
curl -X POST -d '{"id":"3","name":"pool2","protocol":"tcp","vip_id":"3"}' http://localhost:8080/quantum/v1.0/pools/
curl -X POST -d '{"id":"31","address":"10.0.0.2","port":"21","pool_id":"3"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"32","address":"10.0.0.3","port":"21","pool_id":"3"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"33","address":"10.0.0.4","port":"21","pool_id":"3"}' http://localhost:8080/quantum/v1.0/members/
curl -X POST -d '{"id":"34","address":"10.0.0.5","port":"21","pool_id":"3"}' http://localhost:8080/quantum/v1.0/members/

start:
	docker rm -f ms_add ms_sub ms_mul ms_div
	docker run -d -p 8001:8000 --name ms_add ms_add:v0.0.2
	docker run -d -p 8002:8000 --name ms_sub ms_subtract:v0.0.2
	docker run -d -p 8003:8000 --name ms_mul ms_multiply:v0.0.1
	docker run -d -p 8004:8000 --name ms_div ms_divide:v0.0.1

stop:
	docker rm -f ms_add ms_sub ms_mul ms_div

build:
	sh makefile.sh --build

delete_images:
	sh makefile.sh --delete-images

# yc-task design

## app

Nginx with 2 pages wrapped in docker.
push it to cr.yandex.

## deployment

```
k8s:
    node groups:
        1: zone a
        2: zone b
    services:
        svc1:
            image from cr.yandex
            pods allocated to nodegroup 1
        svc2:
            image from cr.yandex
            pods allocated to nodegroup 2

target groups:
    1: to svc1
    2: to svc2

alb:
    http listener
    routes:
        /page1 -> target group 1
        /page2, default -> target group 2
```

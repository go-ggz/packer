# ggz-packer

Build Automated Machine Images

## validate json file

```sh
$ packer validate ggz-aws.json
```

## build first image

```sh
$ packer build \
  -var 'aws_access_key=YOUR ACCESS KEY' \
  -var 'aws_secret_key=YOUR SECRET KEY' \
  ggz-aws.json
```

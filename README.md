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
  -var 'region=ap-southeast-1' \
  ggz-aws.json
```

## Testing

To turn caching off, you can use the GOCACHE environment variable and set it to off:

```sh
GOCACHE=off go test -timeout 30m ./...
```

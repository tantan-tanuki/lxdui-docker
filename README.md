# これはなに？

https://github.com/AdaptiveScale/lxdui

のDockerイメージです

# 使い方

以下で起動して

```bash
docker run --rm \
 -p 15151:15151 \
 -v /var/snap/lxd/common/lxd/unix.socket:/var/snap/lxd/common/lxd/unix.socket \
 tantantanuki/lxdui-docker
```

ブラウザで以下にアクセス

http://localhost:15151

ID/PWはadmin/adminでログイン出来ます。

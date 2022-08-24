# reference

本章为自动生成的 API 文档，先使用 doxygen 生成 xml 格式文档，再由 doxybook2 转成 markdown 格式，最后使用 gitbook 发布。所以最后格式不理想，如果想看 API 文档，推荐还是使用 doxygen 直接生成 html。

```bash
# 生成 API 文档
$ cmake --build build --target docs
# 用浏览器打开，比如 firefox
$ firefox build/docs/html/index.html
```


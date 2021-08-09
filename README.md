- Задание_1 готово
- Задание_2 готово
- Задание_3. Проблема с запуском контейнера из [ubuntu.dockerfile](https://github.com/Jekker600/5.4/blob/main/dockerfile/5.4.3_ubuntu.dockerfile)
- В тоже время нет проблем с запуском контейнера [node.dockerfile](https://github.com/Jekker600/5.4/blob/main/dockerfile/5.4.3_node.dockerfile)
- Хотя логика у них одинаковая...
- Ошибка:
``` 
Error: Cannot find module '/home/nodejs-demo-master/app.js'

at Function.Module._resolveFilename (internal/modules/cjs/loader.js:636:15)

at Function.Module._load (internal/modules/cjs/loader.js:562:25)

at Function.Module.runMain (internal/modules/cjs/loader.js:831:12)

at startup (internal/bootstrap/node.js:283:19)

at bootstrapNodeJSCore (internal/bootstrap/node.js:623:3)
```

# otus-cpp-prof-1

## Парадигма CI/CD (continuous integrated / continuous delivery)

Программа выводит в консоль следующее:

`Build: X`

`Hello, World !`

где **X** - номер билда

## Принцип работы

1. Номер билда вставляется в исполняемый файл (бинарный файл) во время сборки в удаленном сервере, предоставляемый платформой Github action.

2. В файле **./.github/workflows/release.yml** есть строки:

   `- run: sudo apt-get update && sudo apt-get install libboost-test-dev -y`

   `- run: cmake . -DPATCH_VERSION=${{ github.run_number }}`

   `- run: cmake --build .`

   `- run: cmake --build . --target package`

И именно параметр **-DPATCH_VERSION** устанавливает номер билда во время сборки (данный параметр обновляет в файле CMakeCache переменную **CMAKE_PROJECT_VERSION_PATCH**)

В CMakeLists с помощью следующей строки просто вставляет значение переменной в проект => `set(PROJECT_VESRION 0.0.${PATCH_VERSION})`

3. В проекте присутствует файл **version.h.in**, который внутренними механизмами cmake преобразуется в **version.h** после сборки, и храниться в билде. За это отвечает следующая команда в cmake:

   `configure_file(
    version.h.in
    ${CMAKE_CURRENT_BINARY_DIR}/version.h
)`

4. В github action есть пакет `actions/upload-release-asset@v1` отвечающий за публикацию на сервере файлов, которые были сформированы в ходе предыдущих действий, в данном случае, сборку проекта ( **helloworld-0.0.${{ github.run_number }}-Linux.deb** ). И в дальнейшем можно дать ссылку на скачивание данной сборки.

## Последовательность действий для запуска проекта:

1. Скачать проект с форматом .deb с репизитория
2. Запустить ubuntu-20.04 в виртуальной машине, если вы работаете не на линуксе
3. Переместиться в папку где лежит скачанный проект
4. Выполнить следующую команду
   sudo apt update && sudo apt install ./helloworld-0.0.{Номер билда}-Linux.deb
5. После установки путь к установленному проекту будет добавлен PATH, поэтому остается ввести в консоле имя проекта:

`yourname@yourname-VirtualBox:~$ helloworld_cli`

Программа выводит в консоль следующее:

`Build: X`

`Hello, World !`

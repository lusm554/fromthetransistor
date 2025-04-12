# fromthetransistor

Welcome to "From the Transistor to the Web Browser", a project dedicated to building a computer system entirely from scratch. We begin by exploring digital logic and simulating hardware components using Verilog, including an ARM CPU. Next, we develop essential software tools like an assembler, a linker, and a C compiler (in Haskell). Building upon this foundation, we create a basic Unix-like operating system kernel and implement a TCP/IP networking stack in C. The final goal is to run a custom-built, text-based web browser on our own hardware and software stack, providing a deep understanding of how computers truly work.

[Source paper.](https://github.com/geohot/fromthetransistor)

# Roadmap
<details>
<summary> Roadmap </summary>
**Section 1: Intro: Cheating our way past the transistor (0.5 недели)**

* **Цели:** Понять концептуально, как транзисторы используются для создания логики, что такое FPGA (ПЛИС) и LUT, как работает эмуляция железа.
* **Материалы:**
    * **Концепции:**
        * Книга: **"Code: The Hidden Language of Computer Hardware and Software" by Charles Petzold**. Отличное неформальное введение в то, как компьютеры работают, начиная с простых концепций вроде азбуки Морзе и заканчивая логическими элементами и процессорами. Идеально для интуитивного понимания. (Есть русский перевод).
        * Статьи/Видео: Поищи "How transistors work", "Logic gates explained", "What is an FPGA?", "Lookup Tables (LUTs) in FPGAs explained". Много хороших видео на YouTube (каналы вроде Ben Eater, Technology Connections, Computerphile).
    * **Эмуляция (Verilator):**
        * Документация Verilator: [https://verilator.org/guide/latest/](https://verilator.org/guide/latest/) (для ознакомления, что это такое).
        * Статьи: "Hardware Simulation Basics", "Introduction to Verilator".

**Section 2: Bringup: What language is hardware coded in? (0.5 недели)**

* **Цели:** Начать писать на Verilog, настроить симулятор (Verilator), реализовать простой модуль (UART), понять концепцию MMIO (Memory-Mapped I/O).
* **Материалы:**
    * **Verilog:**
        * Учебник/Туториалы:
            * **"Verilog HDL" by Samir Palnitkar:** Классический учебник, довольно подробный. Может быть сложным для начала.
            * Онлайн-туториалы: [ASIC World Verilog Tutorial](http://www.asic-world.com/verilog/veritut.html), [nandland.com Verilog tutorials](https://nandland.com/verilog/tutorials/index.html), ZipCPU Blog (много практических статей по Verilog/FPGA).
            * Курсы: Поищи на Coursera/EdX курсы по "Digital Logic Design" или "HDL Verilog".
        * Практика: Начни с простых примеров – логические элементы, мультиплексоры, счетчики.
    * **UART & MMIO:**
        * Статьи/Туториалы: "Implementing UART in Verilog", "Understanding Memory-Mapped I/O (MMIO)". Часто это часть туториалов по работе с FPGA и микроконтроллерами.
        * Книга: **"Digital Design and Computer Architecture, ARM Edition" by Harris & Harris.** Эта книга будет полезна и дальше, она связывает цифровой дизайн с архитектурой ARM и часто объясняет такие интерфейсы.

**Section 3: Processor: What is a processor anyway? (3 недели)**

* **Цели:** Изучить ассемблер ARM, написать простой ассемблер на Python, спроектировать и реализовать ядро процессора ARM7 на Verilog, создать загрузочный ROM.
* **Материалы:**
    * **ARM Assembly:**
        * Документация: **ARM Architecture Reference Manual (ARM ARM).** Очень подробный, официальный источник. Ищи версию для ARMv4T (архитектура ARM7TDMI).
        * Туториалы: Azeria Labs (хотя больше уклон в безопасность, есть хорошие статьи по ARM assembly), поищи "ARM assembly tutorial for beginners".
        * Книга: "Modern Assembly Language Programming with the ARM Processor" by Daniel Kusswurm.
        * Практика: Пиши простые программы на ассемблере, используй эмулятор (например, QEMU) для их запуска и отладки.
    * **Assembler (Python):**
        * Тут главное – знание Python (у тебя есть) и понимание формата инструкций ARM и структуры бинарного файла. Туториалы по парсингу строк и работе с бинарными данными в Python.
    * **CPU Design (Verilog):**
        * Книги:
            * **"Digital Design and Computer Architecture, ARM Edition" by Harris & Harris:** Ключевая книга для этой секции.
            * **"Computer Organization and Design" by Patterson & Hennessy:** Классика по архитектуре ЭВМ, объясняет конвейеры, кэши и т.д. (Есть русский перевод).
        * Онлайн-ресурсы: nandland, ZipCPU blog, статьи/курсы по "CPU Pipelining", "Computer Architecture".
        * Практика: Начинай с очень простого однотактового процессора, потом добавляй конвейер (fetch, decode, execute). Изучай существующие простые ядра на Verilog (на GitHub, OpenCores).
    * **Boot ROM (Assembler):**
        * Используй знания ARM assembly. Задача – написать код, который инициализирует UART и умеет принимать данные по нему для загрузки в память.

**Section 4: Compiler: A “high” level language (3 недели)**

* **Цели:** Изучить основы теории компиляторов, написать компилятор C на Haskell, написать линковщик на Python, создать базовую libc, реализовать Ethernet-контроллер на Verilog и написать загрузчик на C.
* **Материалы:**
    * **Compiler Theory & Implementation (Haskell):**
        * Книги:
            * **"Compilers: Principles, Techniques, & Tools" (Dragon Book) by Aho, Lam, Sethi, Ullman:** Классика, очень теоретическая.
            * **"Crafting Interpreters" by Robert Nystrom:** Отличная онлайн-книга, очень практичная (хотя и про интерпретаторы, многие концепции пересекаются).
            * **"Engineering a Compiler" by Cooper & Torczon:** Более современный и практический взгляд.
        * **Haskell:**
            * **"Learn You a Haskell for Great Good!"**: Популярное и доступное введение (есть онлайн-версия).
            * Официальная документация Haskell, туториалы. Учитывая твой опыт, фокусируйся на основах ФП, типах, IO. Haskell – сложный выбор для первого компилятора, будь готов к трудностям.
        * Практика: Начни с парсинга простого языка, затем генерация абстрактного синтаксического дерева (AST), потом кодогенерация в ARM assembly.
    * **Linker (Python):**
        * Книга: **"Linkers and Loaders" by John Levine:** Классика, описывает все детали.
        * Статьи/Документация: Изучи формат ELF (`man elf`), принципы релокации, таблицы символов.
    * **C Programming & libc:**
        * Книга: **"The C Programming Language" (K&R) by Kernighan & Ritchie:** Основа основ. (Есть русский перевод).
        * Онлайн-ресурсы: [learn-c.org](https://www.learn-c.org/), туториалы по указателям, управлению памятью, структурам.
        * Практика: Реализуй базовые функции: `memcpy`, `memset`, `strlen`, `printf` (упрощенный).
    * **Ethernet Controller (Verilog):**
        * Даташиты на Ethernet PHY чипы (например, LAN8720).
        * Статьи/Туториалы: "Implementing Ethernet MAC in Verilog", понимание интерфейсов MII/RMII/GMII.
        * Снова "Digital Design and Computer Architecture".
    * **Bootloader (C):**
        * Используй знания C и понимание работы Ethernet. Задача – принять ядро ОС по сети (например, UDP/TFTP) и загрузить его в память.

**Section 5: Operating System: Software we take for granted (3 недели)**

* **Цели:** Спроектировать MMU (Memory Management Unit) на Verilog, написать ядро ОС (UNIX-подобное) на C с поддержкой процессов, системных вызовов, памяти, реализовать драйвер SD-карты и файловую систему FAT, написать первые user-space программы.
* **Материалы:**
    * **OS Concepts:**
        * Книги:
            * **"Operating System Concepts" (Dinosaur Book) by Silberschatz, Galvin, Gagne:** Стандартный учебник. (Есть русский перевод).
            * **"Modern Operating Systems" by Andrew S. Tanenbaum:** Еще одна классика. (Есть русский перевод).
        * Онлайн-ресурс: **OSDev Wiki ([wiki.osdev.org](https://wiki.osdev.org/))**: Бесценный ресурс для тех, кто пишет свою ОС с нуля. Содержит огромное количество информации по всем аспектам.
        * Книга: "Linux Kernel Development" by Robert Love: Дает понимание, как устроено реальное ядро Linux.
    * **MMU (Verilog):**
        * Книги по архитектуре (Harris & Harris, Patterson & Hennessy).
        * ARM Architecture Reference Manual (секция про MMU/MPU).
        * Статьи на OSDev Wiki про Paging и Virtual Memory.
    * **OS Kernel (C):**
        * Продвинутое C: K&R, "Linux Kernel Development".
        * OSDev Wiki: Статьи про scheduling, process management, system calls, virtual memory management.
        * Практика: Начинай с малого – переключение задач, простой планировщик, обработка прерываний, реализация системных вызовов (`fork`, `execve`, `open`, `read`, `write` и т.д.).
    * **SD Card Driver (Verilog + C):**
        * Спецификации SD Card (можно найти онлайн).
        * Даташиты на контроллеры SPI/SDIO.
        * Примеры реализации SPI/SDIO на Verilog.
        * Статьи на OSDev Wiki по драйверам SD Card.
    * **FAT Filesystem (C):**
        * Спецификация FAT (от Microsoft или из других источников).
        * Статьи на OSDev Wiki по FAT.
        * Примеры реализаций FAT.
    * **User Space Programs (C):**
        * Простые программы, использующие реализованные системные вызовы.

**Section 6: Browser: Coming online (1 неделя)**

* **Цели:** Реализовать TCP/IP стек в ядре, добавить сетевые системные вызовы, написать простой `telnetd`, реализовать динамическую линковку, написать текстовый веб-браузер.
* **Материалы:**
    * **Networking (TCP/IP Stack, Sockets):**
        * Книги:
            * **"TCP/IP Illustrated, Vol. 1: The Protocols" by W. Richard Stevens:** Библия по TCP/IP.
            * **"Computer Networking: A Top-Down Approach" by Kurose & Ross:** Хороший учебник.
        * Туториал: **Beej's Guide to Network Programming:** Отличный практический гайд по сокетам на C.
        * Практика: Реализация основных частей IP, UDP, TCP. Добавление сокетных syscalls (`socket`, `bind`, `connect`, `send`, `recv`).
    * **Telnetd (C):**
        * Используй знания сокетов C. Простая программа, которая слушает порт, принимает соединения и запускает shell для каждого клиента.
    * **Dynamic Linking (C):**
        * Книга: "Linkers and Loaders" by Levine.
        * Статьи на OSDev Wiki про Dynamic Linking.
        * `man ld.so`, `man dlopen`. Статьи про PLT/GOT.
        * Потребуется модификация линковщика из Section 4.
    * **Text Web Browser (C):**
        * Основы HTTP (RFC 2616 и более новые).
        * Парсинг HTML (очень упрощенный).
        * Работа с терминалом (ANSI escape codes для "красивостей").
        * Используй сетевой стек и динамическую линковку.

**Section 7: Physical: Running on real hardware (1 неделя)**

* **Цели:** Научиться прошивать FPGA через JTAG, спроектировать и (опционально) собрать плату, запустить весь созданный стек на реальном железе.
* **Материалы:**
    * **JTAG:**
        * Статьи/Обзоры JTAG протокола.
        * Документация OpenOCD (если используется).
        * Туториалы по bit-banging JTAG с помощью MCU.
    * **Board Design:**
        * Книги/Ресурсы: "The Art of Electronics" by Horowitz & Hill (фундаментальный справочник). Туториалы SparkFun/Adafruit по основам электроники. Туториалы по KiCad/Eagle (ПО для проектирования плат). Рекомендации вендоров FPGA по дизайну плат. EEVblog (видеоблог по электронике).
    * **Reflow Soldering:**
        * Туториалы/Видео по DIY SMT пайке (паяльные пасты, фены, "тостерные печи"). **Осторожно, требует соблюдения техники безопасности!**
    * **Bringup:**
        * Документация к выбранной FPGA/плате.
        * Процесс синтеза и имплементации Verilog кода с помощью инструментов вендора (Vivado для Xilinx, Quartus для Intel/Altera).

</details>

## Helpful links here
https://news.ycombinator.com/item?id=40895935

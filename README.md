# Atom — mini sumô da UVV

Diário de bordo do **Atom**, o robô de mini sumô que a equipe levou ao **Sumô Tech Fight**
do **InovaWeek 2026** (UVV, Vila Velha, ES). O apelido dele é Frankenstein.

**Equipe:** Gabriel Fernandes, Gustavo Fernandes, Rafaela Ribeiro, Edvaldo Neto e Ana Lívia
— 2º período de Engenharia de Software, orientação do professor Abrantes.

## O site

`index.html` é o caderno completo: modelo 3D que gira, fotos, a história dos problemas e o
código gravado no robô. Abra o arquivo no navegador ou publique com o GitHub Pages
(Settings → Pages → Deploy from a branch → `main` / `root`).

## O que tem aqui

| Pasta | O que é |
| --- | --- |
| `index.html`, `modelo_r5.js`, `img/` | o site |
| `codigo/mini_sumo_uvv/` | o firmware do robô (backup 2), para Arduino Nano |
| `modelo-3d/stl/` | os STLs que foram impressos |
| `modelo-3d/openscad/` | o modelo em OpenSCAD |
| `modelo-3d/vistas/` | as vistas geradas do modelo |

## O robô

- 95 × 95 mm, 45,3 mm de altura montado
- Arduino Nano (ATmega328P), ponte H L298N
- 2× HC-SR04, 2× TCRT5000, receptor infravermelho de 38 kHz
- motores N20 de 200 RPM, rodas de 22 mm
- 2× 18650 em série com LM2596 regulando 5 V

O firmware precisa da biblioteca **IRremote 4.x** (shirriff, z3t0, ArminJo) e da placa
Arduino Nano com processador ATmega328P.

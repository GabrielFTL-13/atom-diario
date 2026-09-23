# Mini Sumô 95 — Revisão R5 (versão básica)

Robô de **95 × 95 mm**, abaixo do limite de 10 × 10 cm, com corpo baixo. Motores,
rodas, bateria e sensores ficam dentro da base. Nano, LM2596 e L298N ficam
parafusados em cima da tampa, que é o arranjo mais comum em mini sumô.

| Medida | Valor |
| --- | ---: |
| Largura × comprimento | **95 × 95 mm** |
| Corpo fechado (base + tampa) | **37 mm** de altura |
| Nano e LM2596 sobre a tampa | até 57 mm |
| L298N com dissipador (estimativa de 30 mm) | até 73 mm |
| Base impressa | 95 × 95 × 34 mm |
| Tampa impressa | 95 × 85 × 11,3 mm |
| Volume de plástico | 92,9 cm³ (no máximo 115 g com 100 % de PLA) |

## O que mudou em relação à R3 e à R4

- **Em relação à R3:** foi corrigido o encaixe dos HC-SR04. Na R3 o alívio lateral
  onde entram as bordas das placas era curto demais, e a placa travava antes de os
  transdutores chegarem aos furos. Agora o alívio vai de Y 21,4 a Y 36,1 e cobre os
  12 mm de curso. **Não use a base da R3.**
- **Em relação à R4:** a caixa alta com a eletrônica dentro foi descartada. O robô
  voltou a ter corpo baixo.

## Verificação

Compilação CGAL no OpenSCAD 2021.01 e leitura independente dos STLs.

- **Malha:** base e tampa com 1 corpo cada, 0 arestas não-manifold, 0 orientações
  incoerentes e 0 triângulos degenerados.
- **Base × tampa montada:** só o plano de assentamento, com volume zero.
- **Componentes da base × componentes da tampa:** interseção vazia.
- **Estrutura × componentes:** 14 contatos planos. Os 44,54 mm³ sólidos são só a
  rosca dos oito M2 autoatarraxantes, o que é intencional.
- **Retirada lateral das rodas:** interseção vazia.
- **Sondas:** o curso de 12 mm da placa dos sensores está livre nas duas paredes, e
  a parede lateral continua maciça acima dessa faixa.

## Ordem de montagem

1. **Porcas M3** nos quatro pilares da base e nos seis apoios da tampa, inseridas
   pela lateral.
2. **HC-SR04, com a base ainda vazia.** Desça a placa atrás da parede frontal, por
   volta de Y 35, com as duas bordas curtas dentro do alívio lateral. Empurre 12 mm
   para a frente até os transdutores atravessarem os furos e a placa encostar nos
   afastadores. Prenda com quatro **M2 × 8 autoatarraxantes por trás**. Os dois
   parafusos de baixo do meio têm só uns 36 mm livres atrás, então use chave curta
   ou bit solto. Repita no segundo sensor.
3. TCRT5000, com a porca pela face inferior.
4. Motores N20 nos berços, presos com abraçadeira, e rodas por fora.
5. Chave liga/desliga no recuo traseiro.
6. **Bateria por último**, porque ela fica no caminho de encaixe dos sensores.
7. Na tampa: L298N, LM2596 e Nano, este preso com abraçadeiras. Os fios passam
   pelas quatro janelas da tampa.
8. Feche com quatro **M3 × 10**.

## Impressão

- **Base:** piso na mesa, sem suporte.
- **Tampa:** parte lisa na mesa, apoios para cima, sem suporte.
- Sugestão: camada de 0,2 mm, 4 perímetros e 30 % de preenchimento.
- `stl/mini_sumo_95_r5.stl` traz as duas peças separadas, prontas para fatiar juntas.

## O que ainda precisa ser medido

- Projeção do transdutor do HC-SR04 (12 mm) e furação da placa (41 × 16 mm).
- Furação do L298N (37 × 37 mm) e do LM2596 (36 × 16 mm na diagonal).
- Altura real do L298N com dissipador.

Se alguma medida real for diferente, altere o valor no `mini_sumo_95_r5.scad`. Os
`assert` do arquivo avisam se alguma folga quebrar.

$fn = 60;
// MINI SUMO 95 R5 — mm. Versao basica: 95 x 95, corpo baixo,
// ultrassom na parede frontal e eletronica sobre a tampa.
// Z da base: face inferior do piso. Z da tampa: sua face inferior.
// F6 padrao: somente duas pecas, separadas e com Z minimo = 0.

/* Dimensoes gerais, impressao e tolerancias */
chassi_largura = 95;
chassi_comprimento = 95;
piso_esp = 3;
parede_esp = 3;
altura_interna = 31;
tampa_esp = 3;
folga_geral = 0.6;             // acrescimo TOTAL em X/Y
folga_placa = 0.8;
furo_m3 = 3.3;
furo_m2 = 2.3;
separacao_pecas = 15;
mostrar_referencias = false;  // referencias % somente no F5
eps = 0.02;

/* Rampa: o trecho fino e a ponta sao excecoes ao piso de 3 mm */
rampa_c = 10;
rampa_angulo = 35;
rampa_ponta = 0.5;

/* Rodas, eixo e motores: 26 ao longo de X, 12 em Y, 10 em Z */
roda_d = 22;
roda_largura = 12;
roda_x = 9.75;
roda_y = 71;
roda_folga_radial = 1.0;
roda_folga_lateral = 0.60;
roda_janela_d = 24;
cubo_d = 8;                  // envelope assumido; MEDIR
cubo_avanco_externo = 0;     // alem da face externa do pneu; MEDIR
cubo_avanco_interno = 0;     // alem da face interna do pneu; MEDIR
altura_solo_nominal = 0.60;
motor_x = 26;
motor_y = 12;
motor_z = 10;
motor_face_x = 18.25;
motor_eixo_d = 3;            // eixo D: cilindro conservador de referencia
motor_eixo_c = 9;            // comprimento util; MEDIR
motor_rpm = 500;
motor_folga = 0.60;
motor_parede = 3;
motor_batente = 1.50;          // retencao, nao parede de impacto
motor_furo_eixo = 4.5;
motor_offset_eixo_z = 0;       // medir excentricidade do eixo real
motor_terminal_janela = 7;
abracadeira_l = 3.2;
abracadeira_h = 1.5;
motor_canal_z = 3.3;
motor_cintas_x = [5, 20];

/* Bateria: nicho 56 x 31; nao apertar o pouch */
bateria_x = 55;
bateria_y = 30;
bateria_z = 15;
bateria_pos = [47.5, 43];
bateria_folga = 1.0;          // +1 total; 0.5 por lado
bateria_apoio = 1.0;          // velcro/isolante REAL, nao impresso
bateria_borda_h = 4;
bateria_borda_esp = 3;
bateria_raio = 1;
bateria_cabo_l = 10;
bateria_fita_l = 9;
bateria_fita_h = 1.5;         // alternativa: fita fina, sem apertar

/* Pilares: porcas M3 pela LATERAL, com teto resistente a tracao */
pilar_d = 10;
pilar_frente_d = 9;          // unico vao livre entre transdutores tem 9.8 mm
pilar_afastamento = 7.8;     // sobrepoe 0.2 mm a lateral: evita tangencia
pilar_frente_x = 24.5;       // eixo do modulo HC-SR04; reforca o ligamento
pilar_frente_y = 15;
pilar_traseiro_y = 88.5;
pilar_altura = piso_esp + altura_interna;
pilar_furo = furo_m3;
porca_m3_af = 5.9;           // porca AF5.5 + 0.4 mm total de folga
porca_m3_h = 2.6;
porca_teto = 3;

/* L298N: MEDIR o padrao; 37 x 37 e apenas valor inicial */
l298n_x = chassi_largura/2;
l298n_y = roda_y;
l298n_pcb_x = 43;
l298n_pcb_y = 43;
l298n_furos_x = 37;
l298n_furos_y = 37;
l298n_furo_d = furo_m3;
l298n_altura_ref = 30;        // hipotese, inclui dissipador
l298n_excesso_rigido = 1;    // reserva alem de cada borda da PCB; MEDIR
modulo_apoio_h = 6;
modulo_apoio_d = 9;
modulo_parafuso_c = 8;       // porca lateral com teto de 3 mm
pcb_esp = 1.6;

/* LM2596: eixo comprido paralelo a X; MEDIR dois furos */
lm2596_comprimento = 43;
lm2596_largura = 21;
lm2596_x = 72;
lm2596_y = 35.5;
lm2596_furos_x = 36;
lm2596_furos_y = 16;
lm2596_furos = [[-lm2596_furos_x/2,-lm2596_furos_y/2],
                [ lm2596_furos_x/2, lm2596_furos_y/2]];
lm2596_furo_d = furo_m3;
lm2596_altura = 14;

/* Nano: USB para -X, extremidade aberta; headers para cima */
nano_x = 45;
nano_y = 18;
nano_pos = [25,35.5];
nano_apoio_h = 6.5;
nano_trilho_esp = 2.5;
nano_sobreposicao = 0.6;      // apoio somente na borda da PCB
nano_guia_h = 1.8;
nano_guia_esp = 2.0;
nano_usb_l = 13;
nano_usb_corte_z = 5;        // folga para sobremolde abaixo da PCB
nano_cintas_x = [nano_pos[0]-8.5,nano_pos[0]+14.5];
nano_cintas_y = [nano_pos[1]-nano_y/2-1.5,nano_pos[1]+nano_y/2+1.5];
nano_usb_avanco = 2;         // projecao rigida do conector alem da PCB
nano_headers_h = 12;         // envelope acima da PCB; MEDIR

/* HC-SR04 R3: sensores DENTRO da carcaca. A parede frontal da base e o
   painel optico: ela leva os quatro furos, os afastadores e o alivio
   lateral. A tampa deixou de ter torre. */
hcsr04_pcb_x = 45;
hcsr04_pcb_z = 20;
hcsr04_furo_d = 16.8;
hcsr04_transdutor_d = 16.2;
hcsr04_centros = 26;
hcsr04_modulos_dist = 46;
hcsr04_angulos = [0,0];      // painel plano frontal exige 0/0
hcsr04_transdutor_c = 12;    // MEDIR
hcsr04_centro_z = 21.5;      // eixo acustico acima da face inferior do piso
hcsr04_pcb_y = rampa_c+hcsr04_transdutor_c;  // transdutor rente ao painel
hcsr04_furos_x = 41;         // MEDIR; nao e padrao universal
hcsr04_furos_z = 16;
hcsr04_apoio_d = 4.2;        // afastador integral painel -> PCB
hcsr04_apoio_furo = 1.7;     // pre-furo para M2 autoatarraxante
hcsr04_rosca_prof = 7;       // profundidade util da rosca no afastador
hcsr04_rebaixo_prof = 1.4;   // alivio na face interna das paredes laterais
hcsr04_rebaixo_y0 = 21.4;    // alivio so na faixa da PCB: afastador fica apoiado
hcsr04_rebaixo_y = hcsr04_pcb_y+pcb_esp+hcsr04_transdutor_c+0.5;
                             // cobre o curso inteiro de insercao da PCB
hcsr04_espinha_esp = 3;      // nervura central que enraiza os afastadores internos

/* TCRT5000 DO: PCB longa em Y, optica na ponta dianteira */
tcrt_pcb_c = 35;
tcrt_pcb_l = 10;
tcrt_x = 9;
tcrt_y = 32.5;
tcrt_optica_offset_y = -14.5; // centro optico em Y=18; MEDIR
tcrt_projecao_optica = 7;     // PCB inferior -> face optica; MEDIR
tcrt_distancia_solo = 2.5;
tcrt_janela_l = 11.2;
tcrt_janela_c = 36;
tcrt_ponte_l = 7;
tcrt_boss_d = 7;
tcrt_furo = furo_m3;
tcrt_porca_af = 5.7;
tcrt_porca_h = 3.2;           // profundidade do bolso; porca real ~2.4

/* Gangorra traseira recuada: medir corpo, flange e terminais */
chave_tipo = "retangular";   // "retangular" ou "circular"
chave_x = 47.5;
chave_z = 21.7;
chave_recorte_x = 15.4;
chave_recorte_z = 10.4;
chave_recorte_d = 12.4;
chave_recuo = 5;
chave_poco_x = 23.5;
chave_poco_z0 = 13;
chave_corpo_profundidade = 14; // desde o plano externo do painel; MEDIR
chave_corpo_x = 15;
chave_corpo_z = 10;
chave_flange_x = 22;
chave_flange_z = 14;
chave_flange_esp = 1;
chave_acionador_x = 12;
chave_acionador_z = 8;
chave_projecao_total = 5;     // flange + acionador, desde o painel; MEDIR
chave_terminais_c = 5;
chave_terminais_x = 10;
chave_terminais_z = 6;

/* Ferragens reais: somente referencias; medir cabecas/porcas */
m3_d = 3;
m3_cabeca_d = 5.5;
m3_cabeca_h = 3;
m3_porca_af_real = 5.5;
m3_porca_h_real = 2.4;
tampa_parafuso_c = 10;
tcrt_parafuso_c = 10;
m2_d = 2;
m2_cabeca_d = 3.8;
m2_cabeca_h = 1.6;
m2_porca_af_real = 4;
m2_porca_h_real = 1.6;
hc_parafuso_c = 8;           // M2 autoatarraxante no afastador

/* Cabos: janelas no corredor entre modulos e na lateral */
cabos_janelas = [[47.5,71,14,10],[73,56,6,14],
                 [33,17,8,8],[62,17,8,8]];
cabos_canto_r = 1.5;

/* Derivados */
W = chassi_largura;
L = chassi_comprimento;
eixo_z = roda_d/2-altura_solo_nominal;
motor_apoio_z = eixo_z-motor_z/2-motor_offset_eixo_z;
motor_cx = motor_face_x+motor_x/2;
tcrt_apoio_z = tcrt_distancia_solo-altura_solo_nominal
              +tcrt_projecao_optica;
bat_ix = bateria_x+bateria_folga;
bat_iy = bateria_y+bateria_folga;
hc_x = [(W-hcsr04_modulos_dist)/2,(W+hcsr04_modulos_dist)/2];
pilares = [[pilar_frente_x,pilar_frente_y,pilar_frente_d],
           [W-pilar_frente_x,pilar_frente_y,pilar_frente_d],
           [pilar_afastamento,pilar_traseiro_y,pilar_d],
           [W-pilar_afastamento,pilar_traseiro_y,pilar_d]];

assert(W>0 && W<=95 && L>0 && L<=95,"Envelope maximo nominal 95 x 95 mm.");
assert(piso_esp>0 && parede_esp>0 && tampa_esp>0,"Espessuras positivas.");
assert(roda_janela_d>=roda_d+2*roda_folga_radial,"Janela sem folga radial.");
assert(roda_x-roda_largura/2-cubo_avanco_externo>=0,"Cubo fora do envelope.");
assert(motor_face_x-motor_eixo_c>=0,"Eixo fora do envelope.");
assert(chave_projecao_total<=chave_recuo,"Gangorra ultrapassa a traseira.");
assert(chave_flange_x<chave_poco_x,"Flange nao entra no poco.");
assert(chave_z+chave_flange_z/2<pilar_altura,"Flange invade a tampa.");
assert(nano_pos[0]-nano_x/2-nano_usb_avanco>=0,"USB rigido fora do envelope.");
assert(separacao_pecas>=15,"Separacao insuficiente.");
assert(pilar_altura==piso_esp+altura_interna,"Altura de pilar incoerente.");
assert(hcsr04_angulos==[0,0],"Painel plano: usar sensores paralelos 0/0.");
assert(hcsr04_modulos_dist>=hcsr04_pcb_x+folga_placa,
       "PCBs HC-SR04 sem folga.");
assert(hcsr04_modulos_dist-hcsr04_centros-hcsr04_furo_d>=3,
       "Ligamento central do painel menor que 3 mm.");
assert(hc_x[0]-hcsr04_centros/2-hcsr04_furo_d/2>=3,
       "Furo ultrassom rompe margem estrutural.");
// R3: o encaixe so fecha se o painel optico for a propria parede da base.
assert(hcsr04_pcb_y==rampa_c+hcsr04_transdutor_c,
       "Transdutor nao fica rente a face externa do painel.");
assert(hcsr04_centro_z-hcsr04_pcb_z/2>tcrt_apoio_z+pcb_esp,
       "PCB do HC-SR04 colide com a PCB do TCRT5000.");
assert(hcsr04_centro_z+hcsr04_pcb_z/2<pilar_altura,
       "PCB do HC-SR04 encosta na tampa.");
assert(pilar_altura-(hcsr04_centro_z+hcsr04_furo_d/2)>=3,
       "Margem de parede acima dos furos menor que 3 mm.");
assert(hcsr04_centro_z-hcsr04_furo_d/2>rampa_ponta+rampa_c*tan(rampa_angulo),
       "Furo do ultrassom invade a rampa.");
assert(parede_esp-hcsr04_rebaixo_prof>=1.5,
       "Parede lateral fina demais no rebaixo das PCBs.");
assert(hcsr04_modulos_dist+hcsr04_pcb_x+folga_placa
       <=W-2*(parede_esp-hcsr04_rebaixo_prof),
       "PCBs do ultrassom nao cabem entre as paredes rebaixadas.");
assert(pilar_frente_y+pilar_frente_d/2<hcsr04_pcb_y,
       "Pilar dianteiro invade a PCB do ultrassom.");
assert(pilar_frente_x==hc_x[0] && W-pilar_frente_x==hc_x[1],
       "Pilar dianteiro deve ficar no eixo do modulo HC-SR04.");
assert(pilar_frente_d/2+hcsr04_transdutor_d/2<hcsr04_centros/2,
       "Pilar dianteiro colide com os transdutores.");
assert(pilar_frente_d/2+hcsr04_furo_d/2<=hcsr04_centros/2,
       "Pilar dianteiro nao cabe no ligamento entre os dois furos.");
assert(pilar_altura-(hcsr04_centro_z+hcsr04_pcb_z/2)>=2,
       "Sem passagem de fio sobre a PCB do ultrassom.");
assert(pilar_frente_d-porca_m3_af/cos(30)>=2,
       "Parede do bolso de porca do pilar dianteiro fina demais.");
assert(bateria_pos[1]-bateria_y/2>hcsr04_pcb_y+pcb_esp,
       "Bateria encosta na PCB do ultrassom.");
assert(hcsr04_pcb_y-hcsr04_rebaixo_y0<=1,
       "Afastador externo em balanco: o rebaixo comeca cedo demais.");
assert(hc_x[0]-hcsr04_furos_x/2-hcsr04_apoio_d/2<parede_esp,
       "Afastador externo nao encosta na parede lateral.");
assert(W/2-hcsr04_espinha_esp/2
       >hc_x[0]+hcsr04_centros/2+hcsr04_transdutor_d/2,
       "Nervura central colide com o transdutor interno.");
assert(W/2-hcsr04_espinha_esp/2<hc_x[0]+hcsr04_furos_x/2+hcsr04_apoio_d/2,
       "Nervura central nao encosta no afastador interno.");
assert(hcsr04_apoio_d/2+hcsr04_furo_d/2<
       sqrt(pow(hcsr04_furos_x/2-hcsr04_centros/2,2)+pow(hcsr04_furos_z/2,2)),
       "Afastador M2 colide com o furo do transdutor.");
assert(motor_apoio_z>motor_canal_z+abracadeira_h,
       "Canal de cinta invade o assentamento do motor.");
assert(tcrt_apoio_z>piso_esp,"Rever projecao optica e apoio TCRT.");
assert(piso_esp+bateria_apoio+bateria_z<pilar_altura-3,
       "Bateria sem folga superior.");
assert(modulo_apoio_h>=porca_teto+porca_m3_h,
       "Apoio curto para porca lateral com teto.");
assert(pilar_altura>porca_teto+porca_m3_h,"Pilar curto.");
assert(W<100 && L<100,"Regra da categoria: menos de 10 x 10 cm.");
assert(hcsr04_rebaixo_y>=hcsr04_pcb_y+pcb_esp+hcsr04_transdutor_c,
       "Alivio lateral curto: a PCB nao avanca ate os furos.");
assert(hcsr04_centro_z+hcsr04_pcb_z/2+0.5<pilar_altura,
       "Faixa do alivio lateral chega ao topo da parede.");

module caixa_centrada_xy(c,s,z,h) {
    translate([c[0]-s[0]/2,c[1]-s[1]/2,z]) cube([s[0],s[1],h]);
}
module retangulo_r(s,r) {
    offset(r=r) square([s[0]-2*r,s[1]-2*r],center=true);
}
// Extrusao de perfil Y/Z ao longo de X: sem polyhedron manual.
module prisma_x(x0,largura,pontos_yz) {
    translate([x0,0,0])
        multmatrix([[0,0,1,0],[1,0,0,0],[0,1,0,0],[0,0,0,1]])
            linear_extrude(height=largura) polygon(pontos_yz);
}
module espelhar_lado(lado) {
    if(lado==0) children();
    else translate([W,0,0]) mirror([1,0,0]) children();
}
module furo_y(x,y,z,d,c) {
    translate([x,y,z]) rotate([-90,0,0]) cylinder(d=d,h=c);
}
module pilar_m3(p) {
    translate([p[0],p[1],0]) cylinder(d=p[2],h=pilar_altura);
}
module furos_pilares() {
    for(p=pilares) {
        translate([p[0],p[1],-eps])
            cylinder(d=pilar_furo,h=pilar_altura+2*eps);
        translate([p[0],p[1],0])
            bolso_porcas_lateral(p[2],pilar_altura,p[1]<L/2?1:-1);
    }
}
module bolso_porcas_lateral(d,topo,sentido=-1) {
    z0=topo-porca_teto-porca_m3_h;
    translate([0,0,z0]) rotate([0,0,30])
        cylinder(d=porca_m3_af/cos(30),h=porca_m3_h,$fn=6);
    translate([-porca_m3_af/2,sentido>0?0:-d/2-eps,z0])
        cube([porca_m3_af,d/2+eps,porca_m3_h]);
}
module rampa_frontal() {
    prisma_x(0,W,[[0,0],[rampa_c,0],
                 [rampa_c,rampa_ponta+rampa_c*tan(rampa_angulo)],
                 [0,rampa_ponta]]);
}
module cavidade_roda() {
    largura = roda_largura+2*roda_folga_lateral;
    raio = roda_d/2+roda_folga_radial;
    translate([roda_x-largura/2,roda_y,eixo_z])
        rotate([0,90,0]) cylinder(r=raio,h=largura);
    // Abertura retangular inferior: nao resta pelicula sob o pneu.
    translate([roda_x-largura/2,roda_y-raio,-eps])
        cube([largura,2*raio,piso_esp+2*eps]);
    // Passante lateral, prolongado ate a cavidade: sem pelicula de piso.
    // Centro baixo faz o circulo comunicar-se com a abertura inferior.
    translate([-eps,roda_y,eixo_z]) rotate([0,90,0])
        cylinder(d=roda_janela_d,h=roda_x+largura/2+2*eps);
}
module berco_motor() {
    cx = motor_x+motor_folga;
    cy = motor_y+motor_folga;
    ox = cx+2*motor_batente;
    oy = cy+2*motor_parede;
    topo = eixo_z+motor_z/2-2;
    difference() {
        caixa_centrada_xy([motor_cx,roda_y],[ox,oy],piso_esp-eps,
                           topo-piso_esp+eps);
        caixa_centrada_xy([motor_cx,roda_y],[cx,cy],motor_apoio_z,
                           motor_z+10);
        translate([motor_face_x-motor_folga/2-motor_batente-eps,
                   roda_y,eixo_z]) rotate([0,90,0])
            cylinder(d=motor_furo_eixo,h=ox+2*eps);
        // Abrir a metade superior do furo: entrada vertical do eixo.
        translate([motor_cx-ox/2-eps,roda_y-motor_furo_eixo/2,eixo_z])
            cube([ox+2*eps,motor_furo_eixo,motor_z+10]);
        // Janela traseira para terminais, mantendo batentes nos cantos.
        caixa_centrada_xy([motor_face_x+motor_x+motor_batente/2,roda_y],
                          [motor_batente+motor_folga+2*eps,
                           motor_terminal_janela],motor_apoio_z,20);
        for(dx=motor_cintas_x)
            caixa_centrada_xy([motor_face_x+dx,roda_y],
                              [abracadeira_l,oy+2*eps],
                              motor_canal_z,abracadeira_h);
    }
}
module nicho_bateria() {
    difference() {
        translate([bateria_pos[0],bateria_pos[1],piso_esp-eps])
            linear_extrude(height=bateria_borda_h+eps)
                difference() {
                    retangulo_r([bat_ix+2*bateria_borda_esp,
                                 bat_iy+2*bateria_borda_esp],
                                 bateria_raio+bateria_borda_esp);
                    retangulo_r([bat_ix,bat_iy],bateria_raio);
                }
        // Saida central dianteira: fios dobrados, sem cortar o piso.
        caixa_centrada_xy([bateria_pos[0],bateria_pos[1]-bat_iy/2],
                          [bateria_cabo_l,2*bateria_borda_esp+eps],
                          piso_esp+1,bateria_borda_h+eps);
        for(s=[-1,1])
            caixa_centrada_xy([bateria_pos[0]+s*(bat_ix/2+
                              bateria_borda_esp/2),bateria_pos[1]],
                              [bateria_borda_esp+2*eps,bateria_fita_l],
                              piso_esp+1,bateria_fita_h);
    }
}
module janelas_tcrt() {
    for(x=[tcrt_x,W-tcrt_x])
        difference() {
            caixa_centrada_xy([x,tcrt_y],[tcrt_janela_l,tcrt_janela_c],
                               -eps,piso_esp+2*eps);
            caixa_centrada_xy([x,tcrt_y],
                              [tcrt_janela_l+2,tcrt_ponte_l],-2,piso_esp+4);
        }
}
module suporte_tcrt(x) {
    translate([x,tcrt_y,piso_esp-eps])
        cylinder(d=tcrt_boss_d,h=tcrt_apoio_z-piso_esp+eps);
}
module furos_tcrt() {
    for(x=[tcrt_x,W-tcrt_x]) {
        translate([x,tcrt_y,-eps])
            cylinder(d=tcrt_furo,h=tcrt_apoio_z+2*eps);
        // Porca acessivel pela face inferior; parafuso nao pode sair.
        translate([x,tcrt_y,-eps])
            cylinder(d=tcrt_porca_af/cos(30),h=tcrt_porca_h+eps,$fn=6);
    }
}
module alojamento_chave() {
    caixa_centrada_xy([chave_x,L-chave_recuo-parede_esp/2],
                      [chave_poco_x+2*parede_esp,parede_esp],0,pilar_altura);
    for(s=[-1,1])
        caixa_centrada_xy([chave_x+s*(chave_poco_x/2+parede_esp/2),
                           L-(chave_recuo+parede_esp)/2],
                          [parede_esp,chave_recuo+parede_esp],0,pilar_altura);
}
module cortes_chave() {
    translate([chave_x-chave_poco_x/2,L-chave_recuo,chave_poco_z0])
        cube([chave_poco_x,chave_recuo+eps,pilar_altura]);
    y0 = L-chave_recuo-parede_esp-eps;
    if(chave_tipo=="circular")
        furo_y(chave_x,y0,chave_z,chave_recorte_d,
               chave_recuo+parede_esp+2*eps);
    else
        translate([chave_x-chave_recorte_x/2,y0,chave_z-chave_recorte_z/2])
            cube([chave_recorte_x,chave_recuo+parede_esp+2*eps,
                  chave_recorte_z]);
}
module base_blindada() {
    difference() {
        union() {
            translate([0,rampa_c,0]) cube([W,L-rampa_c,piso_esp]);
            rampa_frontal();
            for(x=[0,W-parede_esp])
                translate([x,rampa_c,0])
                    cube([parede_esp,L-rampa_c,pilar_altura]);
            translate([0,L-parede_esp,0]) cube([W,parede_esp,pilar_altura]);
            translate([0,rampa_c,0]) cube([W,parede_esp,pilar_altura]);
            for(s=[0,1]) espelhar_lado(s) berco_motor();
            nicho_bateria();
            for(x=[tcrt_x,W-tcrt_x]) suporte_tcrt(x);
            for(p=pilares) pilar_m3(p);
            alojamento_chave();
            apoios_ultrassom();
        }
        for(s=[0,1]) espelhar_lado(s) cavidade_roda();
        cortes_ultrassom();
        janelas_tcrt();
        furos_tcrt();
        furos_pilares();
        cortes_chave();
    }
}
module posicoes_l298n() {
    for(sx=[-1,1],sy=[-1,1])
        translate([l298n_x+sx*l298n_furos_x/2,
                   l298n_y+sy*l298n_furos_y/2,0]) children();
}
module posicoes_lm2596() {
    for(p=lm2596_furos)
        translate([lm2596_x+p[0],lm2596_y+p[1],0]) children();
}
module apoio_modulo() {
    translate([0,0,tampa_esp-eps])
        cylinder(d=modulo_apoio_d,h=modulo_apoio_h+eps);
}
module furos_l298n() {
    posicoes_l298n() translate([0,0,-eps])
        cylinder(d=l298n_furo_d,h=tampa_esp+modulo_apoio_h+2*eps);
    for(sx=[-1,1],sy=[-1,1])
        translate([l298n_x+sx*l298n_furos_x/2,
                   l298n_y+sy*l298n_furos_y/2,0])
            bolso_porcas_modulos(sy<0?1:-1);
}
module furos_lm2596() {
    posicoes_lm2596() translate([0,0,-eps])
        cylinder(d=lm2596_furo_d,h=tampa_esp+modulo_apoio_h+2*eps);
    posicoes_lm2596() bolso_porcas_modulos();
}
module bolso_porcas_modulos(sentido=-1) {
    // Inserir lateralmente ANTES da PCB; teto retido nao sai com o parafuso.
    bolso_porcas_lateral(modulo_apoio_d,tampa_esp+modulo_apoio_h,sentido);
}
module berco_nano() {
    // Trilhos sob as bordas; centro livre para soldas e USB.
    for(s=[-1,1]) {
        cy = nano_pos[1]+s*(nano_y/2+nano_trilho_esp/2-nano_sobreposicao);
        caixa_centrada_xy([nano_pos[0],cy],[nano_x+folga_placa,nano_trilho_esp],
                          tampa_esp-eps,nano_apoio_h+eps);
        for(dx=[-nano_x/2+6,nano_x/2-6])
            caixa_centrada_xy([nano_pos[0]+dx,
                               nano_pos[1]+s*(nano_y/2+folga_placa/2+
                                              nano_guia_esp/2)],
                              [4,nano_guia_esp],tampa_esp-eps,
                              nano_apoio_h+nano_guia_h+eps);
    }
    for(s=[-1,1])
        caixa_centrada_xy([nano_pos[0]+s*(nano_x/2+folga_placa/2+
                                         nano_guia_esp/2),nano_pos[1]],
                          [nano_guia_esp,nano_y+folga_placa],tampa_esp-eps,
                          nano_apoio_h+nano_guia_h+eps);
}
// R3: oito afastadores integrais nascem na face interna do painel frontal
// e definem o recuo exato do transdutor dentro do furo.
module apoios_ultrassom() {
    for(cx=hc_x,sx=[-1,1],sz=[-1,1])
        furo_y(cx+sx*hcsr04_furos_x/2,rampa_c+parede_esp-eps,
               hcsr04_centro_z+sz*hcsr04_furos_z/2,hcsr04_apoio_d,
               hcsr04_pcb_y-rampa_c-parede_esp+eps);
    // Nervura central: enraiza no piso os dois afastadores internos, que
    // senao ficariam em balanco horizontal, e reforca o ligamento de 3,2 mm
    // entre os dois modulos. Os afastadores externos nascem na parede lateral.
    translate([W/2-hcsr04_espinha_esp/2,rampa_c+parede_esp-eps,piso_esp])
        cube([hcsr04_espinha_esp,hcsr04_pcb_y-rampa_c-parede_esp+eps,
              hcsr04_centro_z+hcsr04_furos_z/2+hcsr04_apoio_d/2-piso_esp]);
}
module cortes_ultrassom() {
    for(cx=hc_x) {
        for(s=[-1,1])
            furo_y(cx+s*hcsr04_centros/2,rampa_c-eps,hcsr04_centro_z,
                   hcsr04_furo_d,parede_esp+2*eps);
        for(sx=[-1,1],sz=[-1,1])
            furo_y(cx+sx*hcsr04_furos_x/2,hcsr04_pcb_y-hcsr04_rosca_prof,
                   hcsr04_centro_z+sz*hcsr04_furos_z/2,
                   hcsr04_apoio_furo,hcsr04_rosca_prof+eps);
    }
    // As duas PCBs somam 90 mm e o vao util entre paredes tem 89 mm.
    // O alivio local resolve isso sem estreitar a parede em todo o corpo.
    // Faixa so da altura da PCB, longa o bastante para a PCB entrar atras
    // dos furos e avancar ate os afastadores.
    for(s=[0,1]) espelhar_lado(s)
        translate([parede_esp-hcsr04_rebaixo_prof,hcsr04_rebaixo_y0,
                   hcsr04_centro_z-hcsr04_pcb_z/2-0.5])
            cube([hcsr04_rebaixo_prof+eps,
                  hcsr04_rebaixo_y-hcsr04_rebaixo_y0,hcsr04_pcb_z+1]);
}
module passagem_cabos() {
    for(p=cabos_janelas)
        translate([p[0],p[1],-eps])
            linear_extrude(height=tampa_esp+2*eps)
                retangulo_r([p[2],p[3]],cabos_canto_r);
}
module tampa_superior() {
    difference() {
        union() {
            translate([0,rampa_c,0])
                cube([W,L-rampa_c,tampa_esp]);
            posicoes_l298n() apoio_modulo();
            posicoes_lm2596() apoio_modulo();
            berco_nano();
        }
        for(p=pilares) translate([p[0],p[1],-eps])
            cylinder(d=furo_m3,h=tampa_esp+2*eps);
        furos_l298n();
        furos_lm2596();
        passagem_cabos();
        // Dois pares de rasgos para retencao suave do Nano.
        for(x=nano_cintas_x,y=nano_cintas_y)
            caixa_centrada_xy([x,y],[3.2,1.4],-eps,
                              tampa_esp+nano_apoio_h+nano_guia_h+2*eps);
        // Abertura elevada do berco para plugue mini-USB, sem cortar
        // o piso da tampa nem o pilar traseiro esquerdo.
        caixa_centrada_xy([nano_pos[0]-nano_x/2,nano_pos[1]],
                          [12,nano_usb_l],nano_usb_corte_z,20);
    }
}

/* Referencias nominais: NAO sao STL, nem modelos comerciais exatos */
module referencias_base() {
    for(s=[0,1]) espelhar_lado(s) {
        color("dimgray") translate([roda_x-roda_largura/2,roda_y,eixo_z])
            rotate([0,90,0]) cylinder(d=roda_d,h=roda_largura);
        color("silver") caixa_centrada_xy([motor_cx,roda_y],
                          [motor_x,motor_y],motor_apoio_z,motor_z);
        color("silver") translate([motor_face_x-motor_eixo_c,roda_y,eixo_z])
            rotate([0,90,0]) cylinder(d=motor_eixo_d,h=motor_eixo_c);
        color("gray") translate([roda_x-roda_largura/2-cubo_avanco_externo,
                                 roda_y,eixo_z]) rotate([0,90,0])
            cylinder(d=cubo_d,h=roda_largura+cubo_avanco_externo+cubo_avanco_interno);
    }
    color("orange") caixa_centrada_xy(bateria_pos,[bateria_x,bateria_y],
                        piso_esp+bateria_apoio,bateria_z);
    for(x=[tcrt_x,W-tcrt_x]) {
        color("darkgreen") caixa_centrada_xy([x,tcrt_y],
                            [tcrt_pcb_l,tcrt_pcb_c],tcrt_apoio_z,pcb_esp);
        color("black") caixa_centrada_xy([x,tcrt_y+tcrt_optica_offset_y],
                         [10.2,5.8],tcrt_apoio_z-tcrt_projecao_optica,
                         tcrt_projecao_optica);
    }
    for(cx=hc_x) {
        color("green") translate([cx-hcsr04_pcb_x/2,hcsr04_pcb_y,
                                  hcsr04_centro_z-hcsr04_pcb_z/2])
            cube([hcsr04_pcb_x,pcb_esp,hcsr04_pcb_z]);
        for(s=[-1,1]) color("silver")
            furo_y(cx+s*hcsr04_centros/2,hcsr04_pcb_y-hcsr04_transdutor_c,
                   hcsr04_centro_z,hcsr04_transdutor_d,hcsr04_transdutor_c);
    }
    referencia_chave();
    referencias_ferragens_base();
}
module referencias_tampa() {
    color("red") caixa_centrada_xy([l298n_x,l298n_y],
                  [l298n_pcb_x+2*l298n_excesso_rigido,
                   l298n_pcb_y+2*l298n_excesso_rigido],tampa_esp+modulo_apoio_h,
                  l298n_altura_ref);
    color("blue") caixa_centrada_xy([lm2596_x,lm2596_y],
                   [lm2596_comprimento,lm2596_largura],
                   tampa_esp+modulo_apoio_h,lm2596_altura);
    color("teal") caixa_centrada_xy(nano_pos,[nano_x,nano_y],
                   tampa_esp+nano_apoio_h,pcb_esp);
    color("silver") caixa_centrada_xy([nano_pos[0]-nano_x/2-nano_usb_avanco+4,
                                      nano_pos[1]],[8,8],
                                      tampa_esp+nano_apoio_h+pcb_esp,4);
    for(s=[-1,1]) color("black")
        caixa_centrada_xy([nano_pos[0],nano_pos[1]+s*7.62],
                          [nano_x-4,2.5],tampa_esp+nano_apoio_h+pcb_esp,nano_headers_h);
    referencias_ferragens_tampa();
}

module referencia_chave() {
    y=L-chave_recuo;
    color("#444444") {
        caixa_centrada_xy([chave_x,y-chave_corpo_profundidade/2],
            [chave_corpo_x,chave_corpo_profundidade],
            chave_z-chave_corpo_z/2,chave_corpo_z);
        caixa_centrada_xy([chave_x,y+chave_flange_esp/2],
            [chave_flange_x,chave_flange_esp],
            chave_z-chave_flange_z/2,chave_flange_z);
        caixa_centrada_xy([chave_x,y+chave_projecao_total/2],
            [chave_acionador_x,chave_projecao_total],
            chave_z-chave_acionador_z/2,chave_acionador_z);
        caixa_centrada_xy([chave_x,y-chave_corpo_profundidade-chave_terminais_c/2],
            [chave_terminais_x,chave_terminais_c],
            chave_z-chave_terminais_z/2,chave_terminais_z);
    }
}
module parafuso_m3(z_assento,c) {
    color("silver") {
        translate([0,0,z_assento-c]) cylinder(d=m3_d,h=c);
        translate([0,0,z_assento]) cylinder(d=m3_cabeca_d,h=m3_cabeca_h);
    }
}
module porca_m3_real(z_topo) {
    color("silver") translate([0,0,z_topo-m3_porca_h_real])
        rotate([0,0,30]) cylinder(d=m3_porca_af_real/cos(30),
                                h=m3_porca_h_real,$fn=6);
}
module referencias_ferragens_base() {
    for(p=pilares) translate([p[0],p[1],0]) {
        parafuso_m3(pilar_altura+tampa_esp,tampa_parafuso_c);
        porca_m3_real(pilar_altura-porca_teto);
    }
    // M2 autoatarraxante entra por tras da PCB e rosqueia no afastador.
    for(cx=hc_x,sx=[-1,1],sz=[-1,1])
        translate([cx+sx*hcsr04_furos_x/2,0,
                   hcsr04_centro_z+sz*hcsr04_furos_z/2]) color("silver") {
            furo_y(0,hcsr04_pcb_y+pcb_esp-hc_parafuso_c,0,m2_d,hc_parafuso_c);
            furo_y(0,hcsr04_pcb_y+pcb_esp,0,m2_cabeca_d,m2_cabeca_h);
        }
    for(x=[tcrt_x,W-tcrt_x]) translate([x,tcrt_y,0]) {
        parafuso_m3(tcrt_apoio_z+pcb_esp,tcrt_parafuso_c);
        // Bolso inferior: orientacao hexagonal original, sem rotacao de 30 graus.
        color("silver") translate([0,0,tcrt_porca_h-m3_porca_h_real])
            cylinder(d=m3_porca_af_real/cos(30),h=m3_porca_h_real,$fn=6);
    }
}
module ferragem_modulo() {
    parafuso_m3(tampa_esp+modulo_apoio_h+pcb_esp,modulo_parafuso_c);
    porca_m3_real(tampa_esp+modulo_apoio_h-porca_teto);
}
module referencias_ferragens_tampa() {
    posicoes_l298n() ferragem_modulo();
    posicoes_lm2596() ferragem_modulo();
}

// Caixas conservadoras XY dos componentes rigidos e ferragens.
// Sao HIPOTESES dimensionais auditaveis; medir o hardware comprado.
function env(n,x0,x1,y0,y1)=[n,[x0,y0],[x1,y1]];
function centrado(n,x,y,dx,dy)=env(n,x-dx/2,x+dx/2,y-dy/2,y+dy/2);
rp3=max(m3_cabeca_d,m3_porca_af_real/cos(30))/2;
rp2=max(m2_cabeca_d,m2_porca_af_real/cos(30))/2;
centros_modulos=concat(
    [for(sx=[-1,1],sy=[-1,1]) [l298n_x+sx*l298n_furos_x/2,
                              l298n_y+sy*l298n_furos_y/2]],
    [for(p=lm2596_furos) [lm2596_x+p[0],lm2596_y+p[1]]]);
envelopes_rigidos=concat([
    centrado("bateria",bateria_pos[0],bateria_pos[1],bateria_x,bateria_y),
    centrado("L298N_reserva",l298n_x,l298n_y,
             l298n_pcb_x+2*l298n_excesso_rigido,l298n_pcb_y+2*l298n_excesso_rigido),
    centrado("LM2596",lm2596_x,lm2596_y,lm2596_comprimento,lm2596_largura),
    centrado("Nano",nano_pos[0],nano_pos[1],nano_x,nano_y),
    env("USB_rigido",nano_pos[0]-nano_x/2-nano_usb_avanco,
         nano_pos[0]-nano_x/2-nano_usb_avanco+8,nano_pos[1]-4,nano_pos[1]+4),
    env("gangorra",chave_x-chave_flange_x/2,chave_x+chave_flange_x/2,
         L-chave_recuo-chave_corpo_profundidade-chave_terminais_c,
         L-chave_recuo+chave_projecao_total)],
    [for(s=[0,1]) let(x=s==0?roda_x:W-roda_x)
        env("roda_cubo",x-roda_largura/2-(s==0?cubo_avanco_externo:cubo_avanco_interno),
            x+roda_largura/2+(s==0?cubo_avanco_interno:cubo_avanco_externo),
            roda_y-roda_d/2,roda_y+roda_d/2)],
    [for(s=[0,1]) centrado("motor",s==0?motor_cx:W-motor_cx,roda_y,motor_x,motor_y)],
    [for(s=[0,1]) let(a=motor_face_x-motor_eixo_c,b=motor_face_x)
        env("eixo_D",s==0?a:W-b,s==0?b:W-a,roda_y-motor_eixo_d/2,roda_y+motor_eixo_d/2)],
    [for(x=[tcrt_x,W-tcrt_x]) centrado("TCRT",x,tcrt_y,tcrt_janela_l,tcrt_pcb_c)],
    [for(cx=hc_x) env("HC_PCB",cx-hcsr04_pcb_x/2,cx+hcsr04_pcb_x/2,
                       hcsr04_pcb_y,hcsr04_pcb_y+pcb_esp)],
    [for(cx=hc_x,s=[-1,1]) env("transdutor",cx+s*hcsr04_centros/2-hcsr04_transdutor_d/2,
         cx+s*hcsr04_centros/2+hcsr04_transdutor_d/2,
         hcsr04_pcb_y-hcsr04_transdutor_c,hcsr04_pcb_y)],
    [for(p=concat(pilares,centros_modulos,[[tcrt_x,tcrt_y],[W-tcrt_x,tcrt_y]]))
         centrado("ferragem_M3",p[0],p[1],2*rp3,2*rp3)],
    [for(cx=hc_x,s=[-1,1]) env("ferragem_HC",cx+s*hcsr04_furos_x/2-rp2,
         cx+s*hcsr04_furos_x/2+rp2,hcsr04_pcb_y-hcsr04_rosca_prof,
         hcsr04_pcb_y+pcb_esp+m2_cabeca_h)]);
for(b=envelopes_rigidos)
    assert(b[1][0]>=0 && b[1][1]>=0 && b[2][0]<=W && b[2][1]<=L,
           str("Componente fora do envelope: ",b[0]," ",b[1]," ",b[2]));

// RENDER FINAL — duas pecas conectadas internamente, separadas entre si.
base_blindada();
translate([W+separacao_pecas,0,0]) tampa_superior();
if(mostrar_referencias && $preview) {
    %referencias_base();
    translate([W+separacao_pecas,0,0]) %referencias_tampa();
}

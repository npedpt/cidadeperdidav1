local discord_webhook = "https://discordapp.com/api/webhooks/702982610615533718/OJZz0i6V39XSOxEGH9-utDmC2UyJw-3OqoTLmws_chaBAuQ1tslQrcpu5AEbBXrIXoU1"

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

vRP._prepare("vRP/get_vehiclesList","SELECT * FROM concessionaria WHERE id = @id")
vRP._prepare("vRP/remove_stock","UPDATE concessionaria SET estoquecarro = estoquecarro - 1 WHERE id = @id")

local carros = {
-- carros
{id = 1, nome = "manana", precocarro = 120000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/e/ed/Manana-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170526184525&path-prefix=pt"},
{id = 2, nome = "picador", precocarro = 150000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/c/c8/Picador-0.png/revision/latest/scale-to-width-down/350?cb=20180128025420&path-prefix=pt"},
{id = 4, nome = "panto", precocarro = 50000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/5/59/Panto-GTAV-Frontquarter.jpg/revision/latest/scale-to-width-down/350?cb=20150719225642&path-prefix=pt"},
{id = 5, nome = "blista2", precocarro = 50000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/0/0c/Blista2.png"},
{id = 6, nome = "blista", precocarro = 60000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/c/c0/Blista-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170616180039&path-prefix=pt"},
{id = 7, nome = "dominator", precocarro = 73000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/7/78/Dominator-GTAV-front.png/revision/latest?cb=20181126201850&path-prefix=pt"},
{id = 8, nome = "seminole", precocarro = 110000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/a/a0/Seminole-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619202959&path-prefix=pt"},
{id = 9, nome = "bjxl", precocarro = 100000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/bf/BJXL.png"},
{id = 10, nome = "baller", precocarro = 120000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/e/ef/Baller2-GTAV-front.png/revision/latest?cb=20190102153508&path-prefix=pt"},
{id = 11, nome = "gresley", precocarro = 150000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/f/ff/Gresley-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619200342&path-prefix=pt"},
{id = 12, nome = "kuruma", precocarro = 240000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/f/fc/Karin-Kuruma-Regular.png/revision/latest/scale-to-width-down/350?cb=20150429034816&path-prefix=pt"},
{id = 13, nome = "sultan", precocarro = 150000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/b/bb/Sultan-GTAV-front.png/revision/latest?cb=20181126152353&path-prefix=pt"},
{id = 14, nome = "ninef", precocarro = 250000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/59/Ninef.png"},
{id = 15, nome = "ninef2", precocarro = 250000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/f/f6/Ninef2.png"},
{id = 16, nome = "comet2", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/cb/Comet2.png"},
{id = 17, nome = "dukes", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/6e/Dukes.png"},
{id = 18, nome = "penumbra", precocarro = 120000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/c/cc/Penumbra-GTAV-front.png/revision/latest?cb=20181121182239&path-prefix=pt"},
{id = 19, nome = "bison", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/f/f6/Bison.png"},
{id = 20, nome = "elegy", precocarro = 260000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/50/elegy.png"},
{id = 21, nome = "coquette3", precocarro = 170000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/67/Coquette3.png"},
{id = 22, nome = "deviant", precocarro = 300000, pesocarro = 90, imagemcarro ="https://i.imgur.com/pFl6mhv.png"},
{id = 23, nome = "dubsta2", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/36/Dubsta2.png"},
{id = 24, nome = "futo", precocarro = 150000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/5/53/Futo-GTAV-front.png/revision/latest?cb=20181119164109&path-prefix=pt"},
{id = 25, nome = "gb200", precocarro = 170000, pesocarro = 90, imagemcarro ="https://i.imgur.com/EH2HVOB.png"},
{id = 26, nome = "issi3", precocarro = 160000, pesocarro = 90, imagemcarro ="https://i.imgur.com/CWtzWSc.png"},
{id = 27, nome = "slamvan3", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/58/SlamVan3.png"},
{id = 28, nome = "virgo2", precocarro = 250000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/8/81/Virgo2.png"},
{id = 29, nome = "yosemite", precocarro = 350000, pesocarro = 90, imagemcarro ="https://i.imgur.com/7L10RM7.jpg"},
{id = 30, nome = "rhapsody", precocarro = 15000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/c/cc/Rhapsody-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619144548&path-prefix=pt"},
{id = 31, nome = "prairie", precocarro = 20000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/0/06/Prairie-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619144548&path-prefix=pt"},
{id = 32, nome = "felon", precocarro = 70000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/0/0f/FelonGTDown-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170614164655&path-prefix=pt"},
{id = 33, nome = "felon2", precocarro = 80000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/6e/Felon2.png"},
{id = 34, nome = "jackal", precocarro = 70000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/4/48/Jackal-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170615173114&path-prefix=pt"},
{id = 35, nome = "oracle", precocarro = 70000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/a/a4/Oracle-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170615174228&path-prefix=pt"},
{id = 36, nome = "oracle2", precocarro = 80000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/4d/Oracle2.png"},
{id = 37, nome = "sentinel", precocarro = 50000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/f/f7/Sentinel-GTAV-Front.png/revision/latest/scale-to-width-down/350?cb=20150620150409&path-prefix=pt"},
{id = 38, nome = "sentinel2", precocarro = 60000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/d/dd/Sentinel2.png"},
{id = 39, nome = "zion2", precocarro = 60000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/f/f2/Zion2.png"},
{id = 40, nome = "schafter3", precocarro = 180000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/a/a9/Schafter3.png"},
{id = 41, nome = "tailgater", precocarro = 100000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/e/e1/Tailgater-GTAV-front.png/revision/latest?cb=20181211191457&path-prefix=pt"},
{id = 42, nome = "surge", precocarro = 100000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/1a/Surge.png"},
{id = 43, nome = "schwarzer", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/19/Schwarzer.png"},
{id = 44, nome = "tampa2", precocarro = 180000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/a/af/Tampa2.png"},
{id = 45, nome = "buffalo", precocarro = 240000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/a/ac/Buffalo-GTAV-Front-FirstGeneration.png/revision/latest?cb=20181113193301&path-prefix=pt"},
{id = 46, nome = "buffalo2", precocarro = 240000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/e/e1/BuffaloS-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170609171640&path-prefix=pt"},
{id = 47, nome = "buccaneer2", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/16/Buccaneer2.png"},
{id = 48, nome = "faction", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/55/Faction.png"},
{id = 49, nome = "dominator3", precocarro = 3000000, pesocarro = 90, imagemcarro ="https://i.imgur.com/zNnSlFS.jpg"},
{id = 50, nome = "faction2", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/41/Faction2.png"},
{id = 51, nome = "gauntlet", precocarro = 145000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/8/87/BravadoGauntlet-Front-GTAV.png/revision/latest?cb=20181128202650&path-prefix=pt"},
{id = 52, nome = "tulip", precocarro = 300000, pesocarro = 90, imagemcarro ="https://i.imgur.com/nJ8r8V8.jpg"},
{id = 53, nome = "ellie", precocarro = 300000, pesocarro = 90, imagemcarro ="https://i.imgur.com/AStH4J2.jpg"},
{id = 54, nome = "vamos", precocarro = 73000, pesocarro = 90, imagemcarro ="https://i.imgur.com/yHcdzjb.jpg"},
{id = 55, nome = "rapidgt3", precocarro = 190000, pesocarro = 90, imagemcarro ="https://i.imgur.com/E7VXS9Y.jpg"},
--{id = 56, nome = "sandking", precocarro = 350000, pesocarro = 90, imagemcarro =""},
--{id = 57, nome = "sandking2", precocarro = 300000, pesocarro = 90, imagemcarro =""},
{id = 58, nome = "patriot", precocarro = 250000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/6/6a/Patriotgtav.png/revision/latest/scale-to-width-down/350?cb=20150617040256&path-prefix=pt"},
{id = 59, nome = "baller2", precocarro = 130000, pesocarro = 90, imagemcarro ="https://i.imgur.com/bvonrsn.jpg"},
{id = 60, nome = "radi", precocarro = 100000, pesocarro = 90, imagemcarro ="https://i.imgur.com/e5fqax4.jpg"},
{id = 61, nome = "rocoto", precocarro = 100000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/2/28/Rocoto-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619202850&path-prefix=pt"},
{id = 62, nome = "f620", precocarro = 55000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/f/f8/F620-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170614164300&path-prefix=pt"},
{id = 63, nome = "oracle2", precocarro = 73000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/4d/Oracle2.png"},
{id = 64, nome = "windsor2", precocarro = 170000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/57/Windsor2.png"},
{id = 65, nome = "elegy2", precocarro = 280000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/33/Elegy2.png"},
{id = 66, nome = "carbonizzare", precocarro = 250000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/8/88/Carbonizzare-frente1.jpg/revision/latest/scale-to-width-down/350?cb=20150712222415&path-prefix=pt"},
{id = 67, nome = "banshee2", precocarro = 300000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/9/9b/Banshee2.png"},
{id = 68, nome = "surano", precocarro = 270000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/f/fd/SuranoDown-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170201145501&path-prefix=pt"},
{id = 69, nome = "voodoo", precocarro = 220000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/1e/Voodoo.png"},
{id = 70, nome = "hermes", precocarro = 280000, pesocarro = 90, imagemcarro ="https://i.imgur.com/Vwc75p4.jpg"},
{id = 71, nome = "sabregt2", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/7/79/SabreGT2.png"},
--{id = 72, nome = "riata", precocarro = 2500000, pesocarro = 90, imagemcarro =""},
--{id = 73, nome = "kamacho", precocarro = 400000, pesocarro = 90, imagemcarro =""},
--{id = 74, nome = "rebel2", precocarro = 250000, pesocarro = 90, imagemcarro =""},
{id = 75, nome = "moonbeam2", precocarro = 220000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/c1/Moonbeam2.png"},
{id = 76, nome = "buccaneer", precocarro = 120000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/7/71/Buccaneer-GTAV-front2.png/revision/latest/scale-to-width-down/350?cb=20180305145543&path-prefix=pt"},
{id = 77, nome = "primo2", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/30/Primo2.png"},
{id = 78, nome = "flashgt", precocarro = 320000, pesocarro = 90, imagemcarro ="https://i.imgur.com/UlHu4vi.jpg"},
{id = 79, nome = "tornado", precocarro = 140000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/40/Tornado.png"},
{id = 80, nome = "ztype", precocarro = 400000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/3a/ZType.png"},
{id = 81, nome = "viseris", precocarro = 210000, pesocarro = 90, imagemcarro ="https://i.imgur.com/AXNoLT1.jpg"},
{id = 82, nome = "turismo2", precocarro = 250000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/f/fa/Turismo2.png"},
{id = 83, nome = "cheetah2", precocarro = 210000, pesocarro = 90, imagemcarro ="https://i.imgur.com/cMkT1lN.jpg"},
{id = 84, nome = "infernus2", precocarro = 410000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/9/91/Infernus2.png"},
{id = 85, nome = "coquette2", precocarro = 250000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/8/8a/Coquette2.png"},
{id = 86, nome = "torero", precocarro = 160000, pesocarro = 90, imagemcarro ="https://i.imgur.com/eDDYshZ.jpg"},
--{id = 87, nome = "jb700, precocarro = 200000, pesocarro = 90, imagemcarro =""},
{id = 88, nome = "gt500", precocarro = 250000, pesocarro = 90, imagemcarro ="https://i.imgur.com/Pm7gjmb.jpg"},
{id = 89, nome = "peyote", precocarro = 150000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/c/c8/Peyote-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170206134445&path-prefix=pt"},
{id = 90, nome = "btype", precocarro = 320000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/e/e1/BType.png"},
{id = 91, nome = "btype3", precocarro = 340000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/59/BType3.png"},
{id = 92, nome = "btype2", precocarro = 400000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/5f/BType2.png"},
{id = 93, nome = "casco", precocarro = 310000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/8/86/Casco-GTAO-front.png/revision/latest/scale-to-width-down/350?cb=20180215173421&path-prefix=pt"},
{id = 94, nome = "mamba", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/c0/Mamba.png"},
{id = 95, nome = "feltzer3", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/0/0b/Feltzer3.png"},
{id = 96, nome = "retinue", precocarro = 150000, pesocarro = 90, imagemcarro ="https://i.imgur.com/fckWupB.jpg"},
{id = 97, nome = "monroe", precocarro = 240000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/6/64/Monroe.png/revision/latest/scale-to-width-down/350?cb=20150622001420&path-prefix=pt"},
{id = 98, nome = "pigalle", precocarro = 250000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/e/e3/Pigalle-GTAV-front.jpg/revision/latest/scale-to-width-down/350?cb=20170612122354&path-prefix=pt"},
{id = 99, nome = "stinger", precocarro = 200000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/4/41/Stinger-GTAV-front.png/revision/latest?cb=20181119135047&path-prefix=pt"},
{id = 100, nome = "stingergt", precocarro = 230000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/c5/StingerGT.png"},
{id = 101, nome = "bullet", precocarro = 350000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/a/a9/Bullet_2.jpg/revision/latest/scale-to-width-down/350?cb=20150708191712&path-prefix=pt"},
{id = 102, nome = "infernus", precocarro = 73000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/a/ac/Infernus-GTAV-Front.png/revision/latest/scale-to-width-down/350?cb=20170524184424&path-prefix=pt"},
{id = 103, nome = "tempesta", precocarro = 520000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/8/86/tempesta.png"},
{id = 104, nome = "turismor", precocarro = 500000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/7/7f/Turismor.png"},
{id = 105, nome = "vacca", precocarro = 500000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/14/Vacca.png"},
{id = 106, nome = "massacro", precocarro = 290000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/1/12/Massacro-GTAV-front.png/revision/latest?cb=20181119132814&path-prefix=pt"},
{id = 107, nome = "rapidgt", precocarro = 220000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/8/83/Rapid-gt.gif/revision/latest/scale-to-width-down/350?cb=20150720223633&path-prefix=pt"},
{id = 108, nome = "rapidgt2", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/53/RapidGT2.png"},
{id = 109, nome = "bestiagts", precocarro = 220000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/d/dd/BestiaGTS.png"},
{id = 110, nome = "feltzer2", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/7/7c/Feltzer2.png"},
{id = 111, nome = "verlierer2", precocarro = 330000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/8/81/Verlierer2.png"},
{id = 112, nome = "seven70", precocarro = 300000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/60/Seven70.png"},
{id = 113, nome = "jester", precocarro = 120000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/a/af/Jester-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20150621163009&path-prefix=pt"},
{id = 114, nome = "khamelion", precocarro = 180000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/2/2e/Khamelion.png/revision/latest/scale-to-width-down/350?cb=20150613164128&path-prefix=pt"},
--{id = 115, nome = "furoreget", precocarro = 73000, pesocarro = 90, imagemcarro =""},
{id = 116, nome = "lynx", precocarro = 73000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/b8/Lynx.png"},
{id = 117, nome = "voltic", precocarro = 380000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/e/ef/Voltic.png"},
{id = 118, nome = "specter", precocarro = 280000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/23/specter.png"},
--limo --{id = 119, nome = "stretch", precocarro = 500000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/4/48/Stretch-GTAV-front.png/revision/latest?cb=20181212201727&path-prefix=pt"},
{id = 120, nome = "jester3", precocarro = 240000, pesocarro = 90, imagemcarro ="https://i.imgur.com/xAg7Kdu.jpg"},
{id = 121, nome = "entity2", precocarro = 480000, pesocarro = 90, imagemcarro ="https://i.imgur.com/dGkZnR5.jpg"},
{id = 122, nome = "xa21", precocarro = 550000, pesocarro = 90, imagemcarro ="https://i.imgur.com/rzXxRAH.jpg"},
{id = 123, nome = "taipan", precocarro = 500000, pesocarro = 90, imagemcarro ="https://i.imgur.com/iSPvKhh.jpg"},
{id = 124, nome = "osiris", precocarro = 400000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/1/17/Osiris.jpg/revision/latest/scale-to-width-down/350?cb=20170306143455&path-prefix=pt"},
{id = 125, nome = "penetrator", precocarro = 420000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/9/9c/Penetrator-GTAO-front.png/revision/latest/scale-to-width-down/350?cb=20170609151253&path-prefix=pt"},
{id = 126, nome = "sc1", precocarro = 430000, pesocarro = 90, imagemcarro ="https://i.imgur.com/mz3dIvE.jpg"},
{id = 127, nome = "t20", precocarro = 500000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/2/20/T20-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20180418165141&path-prefix=pt"},
{id = 128, nome = "neon", precocarro = 300000, pesocarro = 90, imagemcarro ="https://i.imgur.com/5eSBShw.jpg"},
{id = 129, nome = "tyrant", precocarro = 600000, pesocarro = 90, imagemcarro ="https://i.imgur.com/m05wt6V.jpg"},
{id = 130, nome = "toros", precocarro = 400000, pesocarro = 90, imagemcarro ="https://i.imgur.com/KIWGur2.jpg"},
{id = 131, nome = "prototipo", precocarro = 900000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/f/fb/Prototipo.png"},
{id = 132, nome = "brioso", precocarro = 30000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/6f/Brioso.png"},
{id = 133, nome = "dilettante", precocarro = 60000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/8/80/Dilettante-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170616180250&path-prefix=pt"},
{id = 134, nome = "issi2", precocarro = 90000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/0/0b/Issi2.png"},
{id = 135, nome = "cogcabrio", precocarro = 120000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/1b/CogCabrio.png"},
{id = 136, nome = "exemplar", precocarro = 80000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/d/de/Exemplar-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170614164114&path-prefix=pt"},
{id = 137, nome = "ingot", precocarro = 160000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/7/74/Ingot.png"},
{id = 138, nome = "windsor", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/2d/Windsor.png"},
{id = 139, nome = "zion", precocarro = 50000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/51/Zion.png"},
{id = 140, nome = "blade", precocarro = 100000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/f/f3/Blade-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170526184328&path-prefix=pt"},
{id = 141, nome = "primo", precocarro = 120000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/1/10/Primo-GTAV-front.png/revision/latest?cb=20181207194428&path-prefix=pt"},
{id = 142, nome = "chino", precocarro = 120000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/1/17/Chino-GTAV-front.png/revision/latest?cb=20181126191407&path-prefix=pt"},
{id = 143, nome = "chino2", precocarro = 73000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/61/Chino2.png"},
--{id = 144, nome = "faction3", precocarro = 350000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/a/a8/Faction3.png"},
{id = 145, nome = "hotknife", precocarro = 180000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/0/07/Hotknife-GTAV-front.png/revision/latest?cb=20181129172555&path-prefix=pt"},
{id = 147, nome = "nightshade", precocarro = 270000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/3/3e/Nightshade-GTAO-front.png/revision/latest/scale-to-width-down/350?cb=20161003144648&path-prefix=pt"},
{id = 148, nome = "ratloader2", precocarro = 180000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/9/93/RatLoader2.png"},
{id = 149, nome = "ruiner", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/b4/Ruiner.png"},
{id = 150, nome = "sabregt", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/e/eb/SabreGT.png"},
{id = 151, nome = "slamvan", precocarro = 150000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/c/cb/Slamvan-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20180220185710&path-prefix=pt"},
{id = 152, nome = "slamvan2", precocarro = 190000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/3a/SlamVan2.png"},
{id = 153, nome = "stalion", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/ce/Stalion.png"},
{id = 154, nome = "tampa", precocarro = 170000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/30/Tampa.png"},
{id = 155, nome = "vigero", precocarro = 170000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/22/Vigero.png"},
{id = 156, nome = "virgo", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/41/Virgo.png"},
{id = 157, nome = "virgo3", precocarro = 180000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/4d/Virgo3.png"},
--{id = 158, nome = "bfinjection", precocarro = 80000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/b1/BfInjection.png"},
--{id = 159, nome = "bifta", precocarro = 190000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/b7/Bifta.png"},
--{id = 160, nome = "bodhi2", precocarro = 73000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/ce/Bodhi2.png"},
--{id = 161, nome = "dubsta3", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/d/d6/Dubsta3.png"},
--{id = 162, nome = "mesa3", precocarro = 160000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/c6/Mesa3.png"},
--{id = 163, nome = "rancherx1", precocarro = 200000, pesocarro = 90, imagemcarro =""},
{id = 164, nome = "rebel", precocarro = 220000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/b/be/Rebel.jpg/revision/latest/scale-to-width-down/400?cb=20140817045733&path-prefix=pt"},
{id = 165, nome = "dloader", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/11/DLoader.png"},
{id = 166, nome = "baller3", precocarro = 140000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/9/9b/Baller3.png"},
{id = 167, nome = "baller4", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/e/e8/Baller4.png"},
--{id = 168, nome = "baller5", precocarro = 300000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/34/Baller5.png"},
--{id = 169, nome = "baller6", precocarro = 310000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/8/81/Baller6.png"},
{id = 170, nome = "cavalcade", precocarro = 110000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/0/08/Cavalcade2-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619192609&path-prefix=pt"},
{id = 171, nome = "cavalcade2", precocarro = 130000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/bc/Cavalcade2.png"},
--{id = 172, nome = "contender", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/2e/Contender.png"},
{id = 173, nome = "fq2", precocarro = 100000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/5b/FQ2.png"},
{id = 174, nome = "granger", precocarro = 280000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/d/de/Granger-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619200225&path-prefix=pt"},
{id = 175, nome = "habanero", precocarro = 100000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/c/c9/Habanero-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170619200434&path-prefix=pt"},
{id = 176, nome = "serrano", precocarro = 150000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/3/3d/Serrano-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170201144618&path-prefix=pt"},
{id = 177, nome = "xls", precocarro = 150000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/f/fa/XLS.png"},
--{id = 178, nome = "xls2", precocarro = 350000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/c8/XLS2.png"},
{id = 179, nome = "asea", precocarro = 500000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/ce/Asea.png"},
{id = 180, nome = "asterope", precocarro = 60000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/0/05/Asterope.png"},
{id = 181, nome = "cog55", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/d/d5/Cog55.png"},
--{id = 182, nome = "cog552", precocarro = 350000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/7/79/Cog552.png"},
{id = 183, nome = "cognoscenti", precocarro = 250000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/9/97/786px-Cognoscenti-GTA4-front.jpg/revision/latest/scale-to-width-down/350?cb=20120703214124&path-prefix=pt"},
{id = 184, nome = "cognoscenti2", precocarro = 350000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/2/28/CognoscentiCabrioUp-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20170614164028&path-prefix=pt"},
{id = 185, nome = "stanier", precocarro = 60000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/7/7b/Stanier-GTAV-front.png/revision/latest?cb=20181210194432&path-prefix=pt"},
{id = 186, nome = "stratum", precocarro = 70000, pesocarro = 90, imagemcarro ="https://vignette.wikia.nocookie.net/gta/images/3/38/Stratum-GTAV-front.png/revision/latest/scale-to-width-down/350?cb=20180207155841&path-prefix=pt"},
{id = 187, nome = "superd", precocarro = 200000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/6e/Superd.png"},
{id = 188, nome = "warrener", precocarro = 90000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/22/Warrener.png"},
{id = 189, nome = "washington", precocarro = 120000, pesocarro = 90, imagemcarro ="https://media.gtanet.com/images/7975-washington.jpg"},
{id = 190, nome = "alpha", precocarro = 160000, pesocarro = 90, imagemcarro ="https://media.gtanet.com/images/8059-alpha.jpg"},
{id = 191, nome = "banshee", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/d/d3/Banshee.png"},
{id = 192, nome = "blista3", precocarro = 70000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/8/8c/Blista3.png"},
{id = 193, nome = "comet3", precocarro = 230000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/49/comet3.png"},
{id = 194, nome = "coquette", precocarro = 200000, pesocarro = 90, imagemcarro ="https://media.gtanet.com/images/8063-coquettec.jpg"},
{id = 195, nome = "fusilade", precocarro = 180000, pesocarro = 90, imagemcarro ="https://media.gtanet.com/images/7896-fusilade.jpg"},
{id = 196, nome = "omnis", precocarro = 210000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/12/Omnis.png"},
{id = 197, nome = "pariah", precocarro = 400000, pesocarro = 90, imagemcarro ="https://i.imgur.com/Li3FwqM.jpg"},
{id = 198, nome = "raiden", precocarro = 210000, pesocarro = 90, imagemcarro ="https://i.imgur.com/xt3jKue.jpg"},
{id = 199, nome = "ruston", precocarro = 300000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/ba/Ruston.png"},
{id = 200, nome = "schafter4", precocarro = 190000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/29/Schafter4.png"},
{id = 201, nome = "sentinel3", precocarro = 150000, pesocarro = 90, imagemcarro ="https://i.imgur.com/43iUy65.jpg"},
{id = 202, nome = "specter2", precocarro = 310000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/d/dc/specter2.png"},
{id = 203, nome = "streiter", precocarro = 200000, pesocarro = 90, imagemcarro ="https://i.imgur.com/w6RRn0J.jpg"},
{id = 204, nome = "tropos", precocarro = 150000, pesocarro = 90, imagemcarro ="https://i.imgur.com/vJJcnNG.jpg"},
{id = 205, nome = "cheetah", precocarro = 370000, pesocarro = 90, imagemcarro ="https://media.gtanet.com/images/7860-cheetah.jpg"},
{id = 206, nome = "tornado2", precocarro = 160000, pesocarro = 90, imagemcarro ="https://i.imgur.com/ra4gWLF.jpg"},
{id = 207, nome = "tornado5", precocarro = 250000, pesocarro = 90, imagemcarro ="https://i.imgur.com/YsrBJ3o.jpg"},
{id = 208, nome = "adder", precocarro = 500000, pesocarro = 90, imagemcarro ="https://media.gtanet.com/images/7807-adder.jpg"},
{id = 209, nome = "autarch", precocarro = 610000, pesocarro = 90, imagemcarro ="https://i.imgur.com/cJfF2LQ.jpg"},
{id = 210, nome = "entityxf", precocarro = 400000, pesocarro = 90, imagemcarro ="https://i.imgur.com/0hb3NHf.jpg"},
{id = 211, nome = "fmj", precocarro = 450000, pesocarro = 90, imagemcarro ="https://i.imgur.com/mhbF1ps.jpg"},
{id = 212, nome = "gp1", precocarro = 430000, pesocarro = 90, imagemcarro ="https://i.imgur.com/A58lSwU.jpg"},
{id = 213, nome = "nero", precocarro = 390000, pesocarro = 90, imagemcarro ="https://i.imgur.com/pucbCi8.jpg"},
{id = 214, nome = "nero2", precocarro = 390000, pesocarro = 90, imagemcarro ="https://i.imgur.com/3AILkI2.jpg"},
--{id = 215, nome = "pfister881", precocarro = 73000, pesocarro = 90, imagemcarro =""},
{id = 216, nome = "reaper", precocarro = 500000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/6a/Reaper.png"},
{id = 217, nome = "sultanrs", precocarro = 300000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/11/SultanRS.png"},
{id = 218, nome = "tyrus", precocarro = 500000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/e/e4/Tyrus.png"},
{id = 219, nome = "visione", precocarro = 600000, pesocarro = 90, imagemcarro ="https://i.imgur.com/Pg51mYt.jpg"},
{id = 220, nome = "zentorno", precocarro = 700000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/2b/Zentorno.png"},
{id = 221, nome = "sadler", precocarro = 180000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/3/37/Sadler.png"},
{id = 222, nome = "bison2", precocarro = 180000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/44/Bison2.png"},
{id = 223, nome = "bobcatxl", precocarro = 240000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/d/d8/BobcatXL.png"},
{id = 237, nome = "huntley", precocarro = 100000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/1c/Huntley.png"},
{id = 238, nome = "landstalker", precocarro = 130000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/7/70/Landstalker.png"},
{id = 239, nome = "mesa", precocarro = 90000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/c/cc/Mesa.png"},
{id = 240, nome = "cheburek", precocarro = 150000, pesocarro = 90, imagemcarro ="https://imgur.com/45e2d90d-357b-4e17-9044-8dbac4b26566"},
--{id = 241, nome = "hotring", precocarro = 73000, pesocarro = 90, imagemcarro =""},
{id = 242, nome = "michelli", precocarro = 160000, pesocarro = 90, imagemcarro ="https://imgur.com/3ad98079-2eff-4a19-b0d6-840fb37c4b6c"},
{id = 243, nome = "fagaloa", precocarro = 300000, pesocarro = 90, imagemcarro ="https://imgur.com/71775b06-c35e-4c0e-a285-eea7ddf36456"},
--{id = 244, nome = "guardian", precocarro = 500000, pesocarro = 90, imagemcarro =""},
{id = 245, nome = "cyclone", precocarro = 800000, pesocarro = 90, imagemcarro ="https://i.imgur.com/5Qaf77k.jpg"},
{id = 246, nome = "italigtb", precocarro = 1520000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/6/6a/italiagtb.png"},
{id = 247, nome = "italigtb2", precocarro = 1530000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/5/5b/italiagtb2.png"},
{id = 248, nome = "vagner", precocarro = 590000, pesocarro = 90, imagemcarro ="https://i.imgur.com/flC5equ.jpg"},
{id = 249, nome = "tezeract", precocarro = 800000, pesocarro = 90, imagemcarro ="https://i.imgur.com/vxLSfDS.jpg"},
--{id = 250, nome = "patriot2", precocarro = 550000, pesocarro = 90, imagemcarro =""},
{id = 252, nome = "stafford", precocarro = 400000, pesocarro = 90, imagemcarro ="https://i.imgur.com/HCghUFL.jpg"},
{id = 253, nome = "swinger", precocarro = 250000, pesocarro = 90, imagemcarro ="https://i.imgur.com/hlGSbDZ.jpg"},
--{id = 254, nome = "brutus", precocarro = 3500000, pesocarro = 90, imagemcarro =""},
{id = 255, nome = "clique", precocarro = 360000, pesocarro = 90, imagemcarro ="https://i.imgur.com/FZXTq5v.jpg"},
{id = 256, nome = "deveste", precocarro = 800000, pesocarro = 90, imagemcarro ="https://i.imgur.com/XN2obvc.jpg"},
{id = 257, nome = "impaler", precocarro = 300000, pesocarro = 90, imagemcarro ="https://i.imgur.com/nvLJjrF.jpg"},
{id = 258, nome = "italigto", precocarro = 700000, pesocarro = 90, imagemcarro ="https://i.imgur.com/v2BhnVq.jpg"},
{id = 259, nome = "schlagen", precocarro = 600000, pesocarro = 90, imagemcarro ="https://i.imgur.com/Pmf7XgW.jpg"},
{id = 260, nome = "minivan", precocarro = 100000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/1/12/Minivan.png"},
{id = 261, nome = "minivan2", precocarro = 100000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/2/21/Minivan2.png"},
--motas
{id = 500, nome = "faggio", precocarro = 5000, pesocarro = 15, imagemcarro ="https://i.imgur.com/LjfVD2P.jpg"},
{id = 501, nome = "faggio2", precocarro = 15000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/2/25/Faggio2.png"},
{id = 502, nome = "faggio3", precocarro = 17000, pesocarro = 15, imagemcarro ="https://i.imgur.com/Zkzwqa6.jpg"},
{id = 503, nome = "esskey", precocarro = 30000, pesocarro = 15, imagemcarro ="https://i.imgur.com/JjOAP5r.jpg"},
{id = 504, nome = "bati", precocarro = 55000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/c/ce/Bati.png"},
{id = 505, nome = "hakuchou", precocarro = 100000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/2/23/Hakuchou.png"},
{id = 506, nome = "chimera", precocarro = 30000, pesocarro = 15, imagemcarro ="https://i.imgur.com/clDSDNI.jpg"},
--mota com luzes--{id = 507, nome = "shotaro", precocarro = 73000, pesocarro = 90, imagemcarro =""},
{id = 508, nome = "manchez", precocarro = 57000, pesocarro = 15, imagemcarro ="https://i.imgur.com/7HuyyV8.jpg"},
{id = 509, nome = "sanchez2", precocarro = 49000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/6/6d/Sanchez2.png"},
{id = 510, nome = "double", precocarro = 60000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/0/01/Double.png"},
{id = 511, nome = "diablous2", precocarro = 70000, pesocarro = 15, imagemcarro ="https://i.imgur.com/x6npkco.jpg"},
{id = 512, nome = "fcr2", precocarro = 65000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/7/7d/fcr2.png"},
{id = 513, nome = "zombiea", precocarro = 45000, pesocarro = 15, imagemcarro ="https://i.imgur.com/xTqYhSw.jpg"},
{id = 514, nome = "nemesis", precocarro = 47000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/e/e3/Nemesis.png"},
{id = 515, nome = "pcj", precocarro = 50000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/f/f5/PCJ.png"},
{id = 516, nome = "akuma", precocarro = 70000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/1/16/Akuma.png"},
{id = 517, nome = "hakuchou2", precocarro = 130000, pesocarro = 15, imagemcarro ="https://i.imgur.com/u2Aq7PB.jpg"},
{id = 518, nome = "avarus", precocarro = 50000, pesocarro = 15, imagemcarro ="https://i.imgur.com/YPZVluh.jpg"},
{id = 519, nome = "bagger", precocarro = 35000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/6/64/Bagger.png"},
{id = 520, nome = "bf400", precocarro = 60000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/3/3a/BF400.png"},
{id = 521, nome = "carbonrs", precocarro = 100000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/d/d3/CarbonRS.png"},
{id = 522, nome = "daemon", precocarro = 60000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/2/27/Daemon.png"},
{id = 523, nome = "daemon2", precocarro = 65000, pesocarro = 15, imagemcarro ="https://i.imgur.com/AgtiKtz.jpg"},
{id = 524, nome = "defiler", precocarro = 80000, pesocarro = 15, imagemcarro ="https://i.imgur.com/LorszTb.jpg"},
{id = 525, nome = "diablous", precocarro = 70000, pesocarro = 15, imagemcarro ="https://i.imgur.com/g4ZBFXw.jpg"},
{id = 526, nome = "enduro", precocarro = 45000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/f/f3/Enduro.png"},
{id = 527, nome = "fcr", precocarro = 30000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/8/82/fcr.png"},
{id = 528, nome = "gargoyle", precocarro = 60000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/4/44/Gargoyle.png"},
{id = 529, nome = "hexer", precocarro = 43000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/5/56/Hexer.png"},
{id = 530, nome = "innovation", precocarro = 73000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/4/42/Innovation.png"},
{id = 531, nome = "lectro", precocarro = 43000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/0/00/Lectro.png"},
{id = 532, nome = "nightblade", precocarro = 50000, pesocarro = 15, imagemcarro ="https://i.imgur.com/3Iqmtzz.jpg"},
{id = 533, nome = "ruffian", precocarro = 60000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/f/f6/Ruffian.png"},
{id = 534, nome = "sanchez", precocarro = 100000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/5/52/Sanchez.png"},
{id = 535, nome = "sanctus", precocarro = 70000, pesocarro = 15, imagemcarro ="https://i.imgur.com/iZ3cbcf.jpg"},
{id = 536, nome = "sovereign", precocarro = 35000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/a/ae/Sovereign.png"},
{id = 537, nome = "thrust", precocarro = 45000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/9/90/Thrust.png"},
{id = 538, nome = "vader", precocarro = 76000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/d/dc/Vader.png"},
{id = 539, nome = "vindicator", precocarro = 60000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/b/bb/Vindicator.png"},
{id = 540, nome = "vortex", precocarro = 60000, pesocarro = 15, imagemcarro ="https://i.imgur.com/3zM4HgA.jpg"},
{id = 541, nome = "wolfsbane", precocarro = 50000, pesocarro = 15, imagemcarro ="https://i.imgur.com/7APjV2T.jpg"},
{id = 542, nome = "zombieb", precocarro = 45000, pesocarro = 15, imagemcarro ="https://i.imgur.com/HBUkXBY.jpg"},
{id = 543, nome = "blazer", precocarro = 60000, pesocarro = 15, imagemcarro ="https://wiki.gtanet.work/images/3/3e/Blazer.png"},
{id = 544, nome = "blazer4", precocarro = 64000, pesocarro = 15, imagemcarro ="https://i.imgur.com/lByL3Ai.jpg"},
{id = 545, nome = "deathbike", precocarro = 74000, pesocarro = 15, imagemcarro ="https://i.imgur.com/TUyy8ab.jpg"},
--motas importadas
{id = 546, nome = "150", precocarro = 80000, pesocarro = 15, imagemcarro ="https://i.imgur.com/UTKcqrm.jpg"},
{id = 547, nome = "bros60", precocarro = 65000, pesocarro = 15, imagemcarro ="https://i.imgur.com/3fia2IX.jpg"},
{id = 548, nome = "xt66", precocarro = 60000, pesocarro = 15, imagemcarro ="https://i.imgur.com/opxwrm1.jpg"},
{id = 549, nome = "450crf", precocarro = 90000, pesocarro = 15, imagemcarro ="https://i.imgur.com/of8EezB.jpg"},
{id = 550, nome = "xj", precocarro = 73000, pesocarro = 15, imagemcarro =""},
{id = 551, nome = "hornet", precocarro = 110000, pesocarro = 15, imagemcarro ="https://i.imgur.com/2S8S8eg.jpg"},
{id = 552, nome = "dm1200", precocarro = 200000, pesocarro = 15, imagemcarro ="https://i.imgur.com/RqD8jaZ.png"},
{id = 553, nome = "z1000", precocarro = 170000, pesocarro = 15, imagemcarro ="https://i.imgur.com/GUic1Fq.png"},
{id = 554, nome = "r1250", precocarro = 250000, pesocarro = 15, imagemcarro ="https://i.imgur.com/8qyCCHY.jpg"},
--Camiões
{id = 800, nome = "Mule", precocarro = 100000, pesocarro = 100, imagemcarro ="https://wiki.gtanet.work/images/e/e7/Mule.png"},
{id = 801, nome = "Pounder", precocarro = 240000, pesocarro = 250, imagemcarro ="https://wiki.gtanet.work/images/a/a6/Pounder.png"},
{id = 802, nome = "Benson", precocarro = 73000, pesocarro = 150, imagemcarro ="https://wiki.gtanet.work/images/b/bd/Benson.png"},
{id = 803, nome = "Paradise", precocarro = 73000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/b/b3/Paradise.png"},
{id = 804, nome = "Youga", precocarro = 100000, pesocarro = 100, imagemcarro ="https://wiki.gtanet.work/images/d/d5/Youga.png"},
{id = 805, nome = "Boxville", precocarro = 85000, pesocarro = 150, imagemcarro ="https://wiki.gtanet.work/images/f/fe/Boxville2.png"},
{id = 806, nome = "Pony", precocarro = 76000, pesocarro = 100, imagemcarro ="https://wiki.gtanet.work/images/b/b1/Pony.png"},
{id = 807, nome = "Taco", precocarro = 60000, pesocarro = 90, imagemcarro ="https://wiki.gtanet.work/images/4/4d/Taco.png"},
{id = 808, nome = "Burrito", precocarro = 240000, pesocarro = 200, imagemcarro ="https://wiki.gtanet.work/images/e/e0/Burrito.png"},
{id = 809, nome = "Speedo", precocarro = 73000, pesocarro = 100, imagemcarro ="https://i.imgur.com/76kjwCu.jpg"},
{id = 810, nome = "Hauler", precocarro = 300000, pesocarro = 400, imagemcarro ="https://i.imgur.com/mXKVyTX.jpg"},
{id = 811, nome = "Phantom", precocarro = 300000, pesocarro = 400, imagemcarro ="https://i.imgur.com/Da7YPHi.jpg"},
{id = 812, nome = "Phantom Wedge", precocarro = 73000, pesocarro = 90, imagemcarro =""},
{id = 813, nome = "Packer", precocarro = 300000, pesocarro = 400, imagemcarro ="https://i.imgur.com/zBBOKFO.jpg"},
{id = 814, nome = "gburrito2", precocarro = 240000, pesocarro = 200, imagemcarro ="https://wiki.gtanet.work/images/f/ff/GBurrito2.png"},
{id = 815, nome = "burrito2", precocarro = 73000, pesocarro = 100, imagemcarro ="https://wiki.gtanet.work/images/5/52/Burrito2.png"},
{id = 816, nome = "burrito3", precocarro = 240000, pesocarro = 200, imagemcarro ="https://wiki.gtanet.work/images/8/89/Burrito3.png"},
{id = 819, nome = "paradise", precocarro = 180000, pesocarro = 170, imagemcarro ="https://wiki.gtanet.work/images/b/b3/Paradise.png"},
{id = 820, nome = "pony2", precocarro = 200000, pesocarro = 175, imagemcarro ="https://wiki.gtanet.work/images/c/c6/Pony2.png"},
{id = 821, nome = "rumpo2", precocarro = 200000, pesocarro = 175, imagemcarro ="https://wiki.gtanet.work/images/2/20/Rumpo2.png"},
{id = 822, nome = "rumpo3", precocarro = 280000, pesocarro = 250, imagemcarro ="https://wiki.gtanet.work/images/7/7a/Rumpo3.png"},
{id = 823, nome = "youga2", precocarro = 150000, pesocarro = 125, imagemcarro ="https://wiki.gtanet.work/images/e/e6/Youga2.png"},
{id = 824, nome = "speedo4", precocarro = 150000, pesocarro = 125, imagemcarro ="https://wiki.gtanet.work/images/2/2b/Speedo.png"},
{id = 825, nome = "moonbeam", precocarro = 153000, pesocarro = 130, imagemcarro ="https://wiki.gtanet.work/images/5/5d/Moonbeam.png"},
{id = 817, nome = "surfer", precocarro = 100000, pesocarro = 125, imagemcarro ="https://wiki.gtanet.work/images/d/d7/Surfer.png"},

--importados
{id = 1001, nome = "ds4", precocarro = 73000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642487446700040/unknown.png"},
{id = 1002, nome = "punto", precocarro = 70000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642582078455818/unknown.png"},
{id = 1003, nome = "f150", precocarro = 175000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642611656818718/unknown.png"},
{id = 1004, nome = "fusion", precocarro = 100000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642631185367042/unknown.png"},	
{id = 1005, nome = "fordka", precocarro = 45000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639689524032831488/unknown.png"},
{id = 1006, nome = "vwgolf", precocarro = 60000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642690375385098/unknown.png"},
{id = 1007, nome = "civic", precocarro = 55000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642713662423050/unknown.png"},
{id = 1008, nome = "eletran17", precocarro = 110000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642737913757726/unknown.png"},
{id = 1009, nome = "sonata18", precocarro = 120000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642760785166336/unknown.png"},
{id = 1010, nome = "veloster", precocarro = 85000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642794289397771/unknown.png"},
{id = 1011, nome = "monza", precocarro = 13000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642814744887297/unknown.png"},
{id = 1012, nome = "p207", precocarro = 23000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642846181457920/unknown.png"},
{id = 1013, nome = "vwpolo", precocarro = 90000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642872626282506/unknown.png"},
{id = 1014, nome = "evoq", precocarro = 220000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642895187443712/unknown.png"},
{id = 1015, nome = "santafe", precocarro = 140000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639642915043278848/unknown.png"},
{id = 1016, nome = "celta", precocarro = 17000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639607841493352448/unknown.png"},
{id = 1017, nome = "amarok", precocarro = 185000, pesocarro = 80, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639687536201170944/unknown.png"},
{id = 1018, nome = "civic2016", precocarro = 120000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639687580551610368/unknown.png"},
{id = 1019, nome = "fiat", precocarro = 10000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639687614311563264/unknown.png"},
{id = 1020, nome = "jetta2017", precocarro = 200000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639687693953138688/unknown.png"},
{id = 1021, nome = "l200civil", precocarro = 180000, pesocarro = 80, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639687731831898112/unknown.png"},
{id = 1022, nome = "saveiro", precocarro = 70000, pesocarro = 60, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639687759828615198/unknown.png"},
{id = 1023, nome = "upzinho", precocarro = 20000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639687980017254400/unknown.png"},
{id = 1024, nome = "voyage", precocarro = 40000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639688756382793728/unknown.png"},
--{id = 1025, nome = "golg7", precocarro = 85000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639607867506425857/unknown.png"},
{id = 1026, nome = "fiattoro", precocarro = 80000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639607817866706994/unknown.png"},
{id = 1027, nome = "palio", precocarro = 20000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639607791216230400/unknown.png"},
{id = 1028, nome = "fiatuno", precocarro = 15000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639607896090345474/unknown.png"},
{id = 1029, nome = "fiatstilo", precocarro = 80000, pesocarro = 90, imagemcarro = "https://cdn.discordapp.com/attachments/639489848297783296/639688910695301140/unknown.png"},


}

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('offred_carshop:abrirPainel')
AddEventHandler('offred_carshop:abrirPainel',function()
	local src = source
	local user_id = vRP.getUserId(src)
 for _,rb in pairs(carros) do
 local rows = vRP.query("vRP/get_vehiclesList", {id = rb.id})
 if rows[1].id == rb.id then
 if rows[1].estoquecarro ~= 0 then
 TriggerClientEvent('offred_carshop:abrirPainel', src, rb.id, rb.nome, rb.pesocarro, rows[1].estoquecarro, rb.precocarro, rb.imagemcarro)
 end
 end
 end
end)



RegisterServerEvent('offred_carshop:comprarCarro')
AddEventHandler('offred_carshop:comprarCarro',function(value)
	local src = source
	local user_id = vRP.getUserId(src)
	--if user_id and vRP.hasPermission(user_id,"conssionaria.permissao") then
	for k,v in pairs(carros) do
 if v.id == tonumber(value) then
 local rows = vRP.query("vRP/get_vehiclesList", {id = tonumber(value)})
 if rows[1].estoquecarro ~= 0 then
 -- verifica quantidade de carros na garagem.
 local garagems = 3
 local totalv = vRP.query("vRP/get_maxcars",{ user_id = user_id })
 if vRP.hasPermission(user_id,"bronze.permissao") then
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) + 3 then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(source, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(source, "Alerta")
 end)
 return
 end
 elseif vRP.hasPermission(user_id,"prata.permissao") then
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) + 6 then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(source, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(source, "Alerta")
 end)
 return
 end
 elseif vRP.hasPermission(user_id,"ouro.permissao") then
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) + 10 then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(source, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(source, "Alerta")
 end)
 return
 end
 elseif vRP.hasPermission(user_id,"platina.permissao") then
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) + 15 then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(src, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(src, "Alerta")
 end)
 return
 end
 elseif vRP.hasPermission(user_id,"diamante.permissao") then
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) + 25 then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(src, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(src, "Alerta")
 end)
 return
 end
 elseif vRP.hasPermission(user_id,"admin.permissao") then
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) + 50 then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(src, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(src, "Alerta")
 end)
 return
 end	
 elseif vRP.hasPermission(user_id,"lavagem.permissao") then
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) + 10 then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(src, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(src, "Alerta")
 end)
 return
 end 
 else
 if parseInt(totalv[1].quantidade) >= parseInt(garagems) then
 local typemessage = "error"
 local mensagem = "Atingiu o número máximo de veículos em sua garagem"
 vRPclient.setDiv(src, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(src, "Alerta")
 end)
 return
 end
 end
 -- compra o veiculo
 if vRP.tryFullPayment(user_id,v.precocarro,false) then
 local compra = vRP.execute("vRP/add_vehicle",{ user_id = user_id, vehicle = v.nome })
 if compra > 0 then
 local row = vRP.execute("vRP/remove_stock", {id = tonumber(value)})
 if row > 0 then
 -- removeu stock
 -- atualizar no NUI
 end
 local typemessage = "sucesso"
 local mensagem = "Você pagou <font color=\"green\">$"..v.precocarro.."</font> dolares"
 vRPclient.setDiv(src, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 TriggerEvent('logs:ToDiscord', discord_webhook , "Logs", "```Player "..user_id.." \nComprou o veiculo: "..v.nome.." \nPreço: "..v.precocarro.."```", "https://www.tumarcafacil.com/wp-content/uploads/2017/06/RegistroDeMarca-01-1.png", false, false)


 SetTimeout(5000,function()
 vRPclient.removeDiv(src, "Alerta")
 end)
 else
 local typemessage = "error"
 local mensagem = "Você já possui este veículo em sua garagem."
 vRPclient.setDiv(src, "Alerta","body {font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;color: #34495e;-webkit-font-smoothing: antialiased;line-height: 1.6em;}p {margin: 0;}.notice {margin: 1em;background: #F9F9F9;padding: 1em 1em 1em 2em;border-left: 4px solid #DDD;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.125);bottom: 7%;right: 1%;line-height: 22px;position: absolute;max-width: 500px;-webkit-border-radius: 5px; -webkit-animation: fadein 2s; -moz-animation: fadein 2s; -ms-animation: fadein 2s; -o-animation: fadein 2s; animation: fadein 2s;}.notice:before {position: absolute;top: 50%;margin-top: -17px;left: -17px;background-color: #DDD;color: #FFF;width: 30px;height: 30px;text-align: center;line-height: 30px;font-weight: bold;font-family: Georgia;text-shadow: 1px 1px rgba(0, 0, 0, 0.5);}.info {border-color: #0074D9;}.info:before {content: \"i\";background-color: #0074D9;}.sucesso {border-color: #2ECC40;}.sucesso:before {content: \"√\";background-color: #2ECC40;}.aviso {border-color: #FFDC00;}.aviso:before {content: \"!\";background-color: #FFDC00;}.error {border-color: #FF4136;}.error:before {content: \"X\";background-color: #FF4136;}@keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-moz-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-webkit-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-ms-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}@-o-keyframes fadein {from { opacity: 0; }to { opacity: 1; }}","<div class=\"notice "..typemessage.."\"><p>"..mensagem..".</p></div>")
 SetTimeout(5000,function()
 vRPclient.removeDiv(src, "Alerta")
 end)
 end
 end
 else
 -- envia pro client NUi ( sem estoque )
 end
 end
	end
--end
end)

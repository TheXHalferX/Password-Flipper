//
//  main.swift
//  splitter
//
//  Created by Олег Сазонов on 03.01.2023.
//

import Foundation

public class Passworder {
    let string = """
    auth.adguard.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    qykje8-jopboQ-nezbik
    otpauth://totp/thexhalferx@icloud.com?secret=SRSKG2DCADNFGUOHDG2SQU6YHYQESK4R&issuer=AdGuard
    
    freedns.afraid.org (thexhalferx)
    thexhalferx
    XyurlWqtO8ok
    
    
    freedns.afraid.org (thexhalferx)
    thexhalferx
    XyurlWqtO8ok
    
    
    www.airalo.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    jyqFeq-zavkys-4popwe
    
    
    airport.app (chieff)
    chieff
    sazonovoleg2008XWider2750
    
    
    master.akson.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wimnyg-hapvux-8senZi
    
    
    akson.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wimnyg-hapvux-8senZi
    
    
    login.aliexpress.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    buftobqumsy2vuJvuk
    
    
    aliexpress.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    buftobqumsy2vuJvuk
    
    
    aliexpress.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    buftobqumsy2vuJvuk
    
    
    auth.alternativeto.net (01_ticket.measure@icloud.com)
    01_ticket.measure@icloud.com
    sYsmub-dummih-gyqni7
    
    
    www.amazon.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    poqbuk-xarjYt-rymga6
    otpauth://totp/Amazon%3Athexhalferx%40icloud.com?secret=7GCZSDYKRLQWODWAKVP4SC5DGLW3DY7HSAWD63EDBJMV4K5BI26A&issuer=Amazon
    
    amperka.ru (whist_04closest@icloud.com)
    whist_04closest@icloud.com
    nEtxyn-xojvad-3viwqy
    
    
    store.amplifi.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    zadbug-wYfxi9-jaksug
    
    
    users.antiplagiat.ru (Олег)
    Олег
    qybnun-qaztes-4pUmfa
    
    
    users.antiplagiat.ru (sazonovoleg2008@yandex.ru)
    sazonovoleg2008@yandex.ru
    sorpy1-hafhuQ
    
    
    idmsa.apple.com (konstanta_sazonofff@icloud.com)
    konstanta_sazonofff@icloud.com
    Clock0740
    
    
    apple.com (konstanta_sazonofff@icloud.com)
    konstanta_sazonofff@icloud.com
    Clock0740
    
    
    appleid.apple.com (sazonovahelen@yandex.ru)
    sazonovahelen@yandex.ru
    asdg2G-HASD6s-das20a
    
    
    idmsa.apple.com (sazonovahelen@yandex.ru)
    sazonovahelen@yandex.ru
    asdg2G-HASD6s-das20a
    
    
    idsma.apple.com (sazonovahelen@yandex.ru)
    sazonovahelen@yandex.ru
    asdg2G-HASD6s-das20a
    
    
    idmsa.apple.com (ssazonovas@icloud.com)
    ssazonovas@icloud.com
    (Kj,spybBrjywf2110)
    
    
    secure2.store.apple.com (ssazonovas@icloud.com)
    ssazonovas@icloud.com
    (Kj,spybBrjywf2110)
    
    
    idmsac.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    secure4.store.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    idmsa.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    appleid.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    www.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    itunesconnect.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    secure2.store.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    secure1.store.apple.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Time-is-a-perfect-killer@2
    
    
    appstorrent.ru (marmot05_chance@icloud.com)
    marmot05_chance@icloud.com
    jyfnot-fEbkyj-8tapqu
    
    
    www.arlekino52.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Ue8-KVo-CeJ-3ke
    
    
    raywenderlich.auth0.com (TheXHalferX)
    TheXHalferX
    wawpu7-jahqic-zyNfyx
    
    
    workstation.auth0.com (TheXHalferX)
    TheXHalferX
    wawpu7-jahqic-zyNfyx
    
    
    www.autodoc.ru (NN-20537)
    NN-20537
    fumpek-fabtu8-cixqoW
    
    
    autosnabnn.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    pudvoc-cezqog-1vAhci
    
    
    autoteka.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    kytqe0-xisgir-xizqiJ
    
    
    www.avito.ru (+7 996 066-29-07)
    +7 996 066-29-07
    marbIcbuxvyr7nimju
    
    
    www.avito.ru (+7 996 066-29-07)
    +7 996 066-29-07
    marbIcbuxvyr7nimju
    
    
    nn.avtopizza.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Kywxez-1sinti-digpuk
    
    
    band.link (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    pukqeR-bazvi7-nugpet
    
    
    account.battle.net (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    \"\""4c-WRM-T]*-]+="
    
    
    lk.bcnn.ru (sazonovahelen@yandex.ru)
    sazonovahelen@yandex.ru
    KostyaGosha1815
    
    
    store.bethesda.net (TheXHalferX)
    TheXHalferX
    woktyg-8puwqa-Kykpem
    otpauth://totp/store.bethesda.net:TheXHalferX?secret=FHYD6AMNXL22OOABGKIYF4MVUXBMQCTHOPVLJOQPNMTNXUWDOAGSJNL5EOZGUUZEIO7NGE6RGXOS5EUHAF3TRMCOWHXMF75QL5CTEYA&issuer=store.bethesda.net&algorithm=SHA1&digits=6&period=30
    
    bethesda.net (TheXHalferX)
    TheXHalferX
    woktyg-8puwqa-Kykpem
    
    
    slayersclub.bethesda.net (TheXHalferX)
    TheXHalferX
    woktyg-8puwqa-Kykpem
    
    
    biggeek.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    fidrud-bipdIw-5nicdy
    
    
    binance.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    pyntox-9ryqHa-pinrus
    otpauth://totp/binance.com:thexhalferx@icloud.com?secret=SNWVLIHTZNXPKAJH&issuer=binance.com&algorithm=SHA1&digits=6&period=30
    
    accounts.binance.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    pyntox-9ryqHa-pinrus
    
    
    brilliant.org (elm-rebuffs0j@icloud.com)
    elm-rebuffs0j@icloud.com
    qohxe8-rijmed-qowCiv
    
    
    gitlab.bukhnin.com (chieff)
    chieff
    L6R-HKA-bF4-7He
    
    
    gitlab.bukhnin.com (osazonov)
    osazonov
    L6R-HKA-bF4-7He
    
    
    gitlab.bukhnin.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    L6R-HKA-bF4-7He
    
    
    bundlehunt.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    fakmEb-hamveb-tukxy1
    
    
    canvas.io (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    kovsuR-geqmi8-xinpyz
    
    
    hub.canvas.io (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    kovsuR-geqmi8-xinpyz
    
    
    capitalist.net (hatchet.fossils.0b@icloud.com)
    hatchet.fossils.0b@icloud.com
    tEbcez-5sowvy-cepkyc
    
    
    www.castorama.ru (ballots_06_souls@icloud.com)
    ballots_06_souls@icloud.com
    mydga5-tysHoh-fepkew
    
    
    cdbaby.com (TheXHalferX)
    TheXHalferX
    fejSyw9dermyqigzog
    
    
    auth.cdbaby.com (TheXHalferX)
    TheXHalferX
    fejSyw9dermyqigzog
    
    
    chargebee-server.firebaseapp.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wopkac-wicxy8-dahkuB
    
    
    chipdip.ru (kid.shire-00@icloud.com)
    kid.shire-00@icloud.com
    Ninsa2-zufnet-tosrog
    
    
    www.citilink.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    rypJew-bazty4-zykgik
    
    
    app.clickup.com (outline.tardy-0w@icloud.com)
    outline.tardy-0w@icloud.com
    dojGab-vohsev-jugcu1
    otpauth://totp/ClickUp%20-%20outline.tardy-0w%40icloud.com?secret=LB6WGNKANMWFW6J4NNNTKSJUEQZUWP3NIYSDMJCHLNGUI5BYHESA
    
    www.codeweavers.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    qarsyq-pahwo9-qezfYr
    
    
    secure.comodo.com (thexhalferx@gmail.com)
    thexhalferx@gmail.com
    TheXHalferX5537
    
    
    cloud.culturedcode.com (meson.crimson.0y@icloud.com)
    meson.crimson.0y@icloud.com
    mobsac-vyfTuj-5tobbi
    
    
    www.cyberforum.ru (thexhalferx@gmail.com)
    thexhalferx@gmail.com
    yc3-eWX-cQM-Es7
    
    
    damprodam.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    v33-DhU-8kn-9U9
    
    
    www.deviantart.com (XHalferX)
    XHalferX
    jygkeq-togveg-Dahpu3
    
    
    discord.com (sazonovahelen@yandex.ru)
    sazonovahelen@yandex.ru
    xyvwyv-5vyfgu-wukKyf
    
    
    discord.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    fevkaf-6jyfVu-wyzvuh
    otpauth://totp/Discord:thexhalferx@icloud.com?secret=IAJFIQJWFQL77NXR&issuer=Discord
    
    distrokid.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    binQud-donhe0-nuvjuw
    
    
    www.dns-shop.ru (+7 996 066-29-07)
    +7 996 066-29-07
    Mihbos-mespu8-wyxdus
    
    
    profile.dns-shop.ru (TheXHalferX)
    TheXHalferX
    caqdos-sokso3-jIkhus
    
    
    dns-shop.ru (TheXHalferX)
    TheXHalferX
    caqdos-sokso3-jIkhus
    
    
    www.dns-shop.ru (TheXHalferX)
    TheXHalferX
    Mihbos-mespu8-wyxdus
    
    
    login.docker.com (thexhalferx)
    thexhalferx
    sychY2-wopkyc-vuhgod
    
    
    hub.docker.com (thexhalferx)
    thexhalferx
    sychY2-wopkyc-vuhgod
    otpauth://totp/hub.docker.com:thexhalferx?secret=MFBBQMSVYYK6U7VN7M6BSOEOD73UAYTF&issuer=hub.docker.com&algorithm=SHA1&digits=6&period=30
    
    id.docker.com (thexhalferx)
    thexhalferx
    sychY2-wopkyc-vuhgod
    
    
    kazan.dom.ru (520010977701)
    520010977701
    shb3kx6v
    
    
    nn.dom.ru (520011210588)
    520011210588
    qixho3-bepbyD-mymdaw
    
    
    perm.dom.ru (520011210588)
    520011210588
    qixho3-bepbyD-mymdaw
    
    
    start.dom.ru (520011210588)
    520011210588
    qixho3-bepbyD-mymdaw
    
    
    domokod.ru (skills.spinel.0n@icloud.com)
    skills.spinel.0n@icloud.com
    6143483f6000b
    
    
    nn.domru.ru (520010977701)
    520010977701
    shb3kx6v
    
    
    nn.wifi.domru.ru (520011210588)
    520011210588
    qixho3-bepbyD-mymdaw
    
    
    www.duffcar.ru (masons_subplot.0x@icloud.com)
    masons_subplot.0x@icloud.com
    byfmym-niqvuh-3zanwI
    
    
    dynamicwallpaper.club (thexhalferx@gmail.com)
    thexhalferx@gmail.com
    fybguM-hibmud-wymfo1
    
    
    signin.ea.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    juvkyx-xotwyg-5haDqo
    otpauth://totp/Electronic%20Arts:thexhalferx@icloud.com?secret=45NH3NAOTGKX3YLL&issuer=Electronic%20Arts
    
    www.edsm.net (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    qugfo1-pydkeh-Zezgix
    
    
    elibrary.ru (chieff2011)
    chieff2011
    AnusEjaIPiskaMorja666
    
    
    www.elibrary.ru (chieff2011)
    chieff2011
    AnusEjaIPiskaMorja666
    
    
    portal.elpts.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    TheChosenOne13579
    
    
    accounts.epicgames.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    nEzpij-bibfyq-0josty
    otpauth://totp/Epic%20Games:TheXHalferX@Epic%20Games?secret=KNKFCTCOLA2E6SSCGRCUCU2KKVDTKVKZI5LEIRKEK5HTKV2UKBCQ&issuer=Epic+Games&algorithm=SHA1&digits=6&period=30
    
    www.epicgames.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    nEzpij-bibfyq-0josty
    otpauth://totp/Epic%20Games:TheXHalferX@Epic%20Games?secret=KNKFCTCOLA2E6SSCGRCUCU2KKVDTKVKZI5LEIRKEK5HTKV2UKBCQ&issuer=Epic+Games&algorithm=SHA1&digits=6&period=30
    
    login.eveonline.com (XHalferX)
    XHalferX
    powkiq-Fekcuw-citho9
    otpauth://totp/EVEOnline:XHalferX?secret=KJQ3EQH2LB7GQ5KQZAUK5PSPBAHGDDS3
    
    www.eveonline.com (XHalferX)
    XHalferX
    powkiq-Fekcuw-citho9
    otpauth://totp/EVEOnline:XHalferX?secret=KJQ3EQH2LB7GQ5KQZAUK5PSPBAHGDDS3
    
    www.fabfilter.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    vewseJ-risma9-rogfim
    
    
    m.facebook.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    mivjij-fonHu9-tepwyd
    otpauth://totp/ID:100067691119923?secret=RVNSBXH234EE264CU4OYMELJMWUA677D&digits=6&issuer=Facebook
    
    www.facebook.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    mivjij-fonHu9-tepwyd
    otpauth://totp/ID:100067691119923?secret=RVNSBXH234EE264CU4OYMELJMWUA677D&digits=6&issuer=Facebook
    
    ru-ru.facebook.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    mivjij-fonHu9-tepwyd
    
    
    business.facebook.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    mivjij-fonHu9-tepwyd
    otpauth://totp/ID:100067691119923?secret=RVNSBXH234EE264CU4OYMELJMWUA677D&digits=6&issuer=Facebook
    
    app.fing.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    sR0hrRO4f4451
    
    
    fing.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    sR0hrRO4f4451
    
    
    flipboard.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    devnyW-nebkir-2nyfco
    
    
    flemail.flipboard.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    devnyW-nebkir-2nyfco
    
    
    www.floatplane.com (TheXHalferX)
    TheXHalferX
    xuqsar-9dajgu-myxdEh
    
    
    www.freelancer.com (muse-flyover08@icloud.com)
    muse-flyover08@icloud.com
    zEhcoh-4sesxi-nifsaf
    
    
    eltima.freshdesk.com (Олег Сазонов)
    Олег Сазонов
    wufti4-jyjqyk-xisdIq
    
    
    eltima.freshdesk.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wufti4-jyjqyk-xisdIq
    
    
    auth.frontierstore.net (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    vEjtek-jiccud-6qabhi
    
    
    www.frontierstore.net (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    vEjtek-jiccud-6qabhi
    
    
    shift.gearboxsoftware.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    dizkav-biNtoz-dipjy5
    
    
    oauth.p.gfn.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    pahxax-8fevwe-soxMis
    
    
    app.gigsky.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    AwesomeJorney123
    
    
    github.com (TheXHalferX)
    TheXHalferX
    qupqyzvidmekrUqvu9
    otpauth://totp/GitHub:TheXHalferX?secret=VNHW7NXRQFKFVZQ5&issuer=GitHub
    
    www.globaldelight.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    peDdut-jivqyk-0byjza
    
    
    login.gog.com (TheXHalferX@icloud.com)
    TheXHalferX@icloud.com
    simbax-fUfte0-vugxys
    
    
    accounts.google.com (oneday.oneroom.band@gmail.com)
    oneday.oneroom.band@gmail.com
    olegebashitmuzyku
    
    
    accounts.google.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    netmiQ-jijneh-9fywgy
    otpauth://totp/accounts.google.com:thexhalferx@icloud.com?secret=7LOS4DU3TEZMRGJMB7JBAPXYLUPGNAT5&issuer=accounts.google.com&algorithm=SHA1&digits=6&period=30
    
    lk.gosuslugi.ru (+7(996)0662907)
    +7(996)0662907
    suqvyk-nymbi4-goFtar
    otpauth://totp/lk.gosuslugi.ru:+7(996)0662907?secret=IKGUXU7ZL37VN7QNEX6CG2UTEFCTISYM&issuer=lk.gosuslugi.ru&algorithm=SHA1&digits=6&period=30
    
    esia.gosuslugi.ru (+7(996)0662907)
    +7(996)0662907
    suqvyk-nymbi4-goFtar
    otpauth://totp/esia.gosuslugi.ru:+7(996)0662907?secret=IKGUXU7ZL37VN7QNEX6CG2UTEFCTISYM&issuer=esia.gosuslugi.ru&algorithm=SHA1&digits=6&period=30
    
    www.guilded.gg (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    hyfkEk-cywsec-vozxi2
    otpauth://totp/Guilded:thexhalferx%40icloud.com?secret=DNKQ4HKYHYBGKHB7&period=30&digits=6&algorithm=SHA1&issuer=Guilded
    
    account.habr.com (works.fitter-0j@icloud.com)
    works.fitter-0j@icloud.com
    harsod-bohxU0-mibsac
    
    
    www.hackintoshzone.com (TheXHalferX)
    TheXHalferX
    vorkaf-4poksU-gucnaj
    
    
    hard-tm.su (XHalferX)
    XHalferX
    hecVy8-sydkom-tyzsig
    
    
    nn.hh.ru (scene_severer.0x@icloud.com)
    scene_severer.0x@icloud.com
    temcub-pasxu2-xitPec
    
    
    my.hostiman.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    xupdaB-syzpuf-copgu5
    
    
    www.ibm.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    corcy1-Myrkyb-xoxxus
    
    
    www.ingos.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Ue8-KVo-CeJ-3ke
    
    
    www.instagram.com (1day.1room)
    1day.1room
    WeAreTheBandFromRussia2020
    
    
    instagram.com (olegsazonov66677712345)
    olegsazonov66677712345
    wewki8-puhMux-zutvop
    otpauth://totp/instagram.com:olegsazonov66677712345?secret=G2G2RRPTFYZX2SIWUCHNOMUPCD6Y3WYC&issuer=instagram.com&algorithm=SHA1&digits=6&period=30
    
    www.instagram.com (olegsazonov66677712345)
    olegsazonov66677712345
    wewki8-puhMux-zutvop
    otpauth://totp/www.instagram.com:olegsazonov66677712345?secret=G2G2RRPTFYZX2SIWUCHNOMUPCD6Y3WYC&issuer=www.instagram.com&algorithm=SHA1&digits=6&period=30
    
    www.instagram.com (ssazonovas)
    ssazonovas
    qyhciM-jopqa0-vadcon
    otpauth://totp/Instagram:ssazonovas?secret=S5XXTLW5XNN6K4IZE7Z45XGJ4CHECJRU&issuer=Instagram
    
    www.iqos.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    h7g4c8n4f8j0
    
    
    lil.iqos.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    h7g4c8n4f8j0
    
    
    itch.io (TheXHalferX)
    TheXHalferX
    bikNy5-nompeq-qanmov
    
    
    www.kaggle.com (trans_atheist0t@icloud.com)
    trans_atheist0t@icloud.com
    Goxjav-4qenka-hycpyv
    
    
    kazanexpress.ru (8 996 066-29-07)
    8 996 066-29-07
    vytjat-1juqby-bywsEp
    
    
    kazanexpress.ru (8 996 066-29-07)
    8 996 066-29-07
    vytjat-1juqby-bywsEp
    
    
    account.keenetic.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    picgu1-zufwij-tyqhIs
    otpauth://totp/Keenetic:thexhalferx%40icloud.com?secret=NZSECZLBIJGEQQ32GRGWGSD2PFUTATLJ&digits=6&algorithm=SHA1&issuer=Keenetic&period=30
    
    97e12aaec711564fdd065059.keenetic.io (admin)
    admin
    TheXHalferX@1234@9876
    
    
    9e7fa0e602e845b166784a40.keenetic.io (admin)
    admin
    TheXHalferX@1234@9876
    
    
    my.keenetic.net
    BSIDD: Lipa
    1Sb3EKqw2YZon36J
    
    
    keenlipa.keenetic.pro (admin)
    admin
    TheXHalferX@1234@9876
    
    
    keenliparelay.keenetic.pro (admin)
    admin
    TheXHalferX@1234@9876
    
    
    keenliparelay.keenetic.pro (admin)
    admin
    TheXHalferX@1234@9876
    
    
    keentunki.keenetic.pro (admin)
    admin
    TheXHalferX@1234@9876
    
    
    shop.keenetic.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    kindak-8Xeqzo-fejsaw
    
    
    www.koingosw.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    cafna8-xadkev-fengUk
    
    
    leakemup.com (TheXHalferX)
    TheXHalferX
    nihmaj-3huvxa-catmeX
    
    
    lenta.com (+79960662907)
    79960662907
    sujmyw-qYjwi3-bivfuk
    
    
    auth.leroymerlin.ru (tachyon_00moloch@icloud.com)
    tachyon_00moloch@icloud.com
    cursew-ceJceq-mavdo1
    
    
    leroymerlin.ru (tachyon_00moloch@icloud.com)
    tachyon_00moloch@icloud.com
    cursew-ceJceq-mavdo1
    
    
    lifescience-liga.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    bygdi9-vifjog-Johtub
    
    
    account.live.com (familycomputerr@hotmail.com)
    familycomputerr@hotmail.com
    UC@HHOTH@CKTH1SP@SSW049
    
    
    login.live.com (familycomputerr@hotmail.com)
    familycomputerr@hotmail.com
    UC@HHOTH@CKTH1SP@SSW049
    
    
    signup.live.com (one_day_1_room@outlook.com)
    one_day_1_room@outlook.com
    risfaq-tUgce1-zipsaw
    
    
    login.live.com (one_day_1_room@outlook.com)
    one_day_1_room@outlook.com
    risfaq-tUgce1-zipsaw
    
    
    odc.officeapps.live.com (one_day_1_room@outlook.com)
    one_day_1_room@outlook.com
    risfaq-tUgce1-zipsaw
    
    
    login.live.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    dynduq-gykxap-5pecwU
    otpauth://totp/Microsoft:thexhalferx@icloud.com?secret=25GYFJG7TCBTXMUN&issuer=Microsoft
    
    account.live.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    dynduq-gykxap-5pecwU
    otpauth://totp/Microsoft:thexhalferx@icloud.com?secret=25GYFJG7TCBTXMUN&issuer=Microsoft
    
    odc.officeapps.live.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    dynduq-gykxap-5pecwU
    
    
    id.logi.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wawhUg-casnuc-5zigwy
    
    
    accounts.logme.in (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    qiwWeb-gevqus-6zonko
    
    
    lolz.guru (splashy.vixens.0m@icloud.com)
    splashy.vixens.0m@icloud.com
    fikmy5-nopBop-tutdyd
    
    
    www.lostfilm.tv (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Zuqgy1-fefsih-xehmas
    
    
    www.maconpc.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    pepvAp-bovrok-dovri9
    
    
    my.macpaw.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    kybjus-xoFpyv-sobgu9
    
    
    moy.magnit.ru (+79960662907)
    79960662907
    tusraj-dUdweq-0wardo
    
    
    www.mapbox.com (thexhalferx)
    thexhalferx
    rovBuh-5nusfi-mekfoj
    
    
    www.maxidom.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    gimsEg-8wezve-miqzyr
    
    
    mega.nz (meekest.tanners.0n@icloud.com)
    meekest.tanners.0n@icloud.com
    xywvif-gukju1-Tyxvyq
    otpauth://totp/mega.nz:meekest.tanners.0n@icloud.com?secret=J3P37AYS5MIRT2OERVLA6JEB5TTIRY2UXC3I2BICTBWOCDNGSBYQ&issuer=mega.nz&algorithm=SHA1&digits=6&period=30
    
    www.metal-tracker.com (Halfer666)
    Halfer666
    Ktu-wf4-FRe-GeZ
    
    
    www.metal-tracker.com (sazonovoleg2008@yandex.ru)
    sazonovoleg2008@yandex.ru
    Ktu-wf4-FRe-GeZ
    
    
    idam.metro-cc.ru (thexhalferx)
    thexhalferx
    xedte6-bygBek-fycriv
    
    
    www.metro-cc.ru (thexhalferx)
    thexhalferx
    xedte6-bygBek-fycriv
    
    
    login.microsoftonline.com (chief.sazonoff2011@yandex.ru)
    chief.sazonoff2011@yandex.ru
    dynduq-gykxap-5pecwU
    
    
    mimi.io (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    GhbdtnNt,tGhjdthmCdjqCke[2750
    
    
    mirm.ru (+7 (996) 066-2907)
    +7 (996) 066-2907
    gEtmoh-virnaq-gebgu7
    
    
    mirpizzy.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    voqnec-qySpu3-fejfax
    
    
    www.moddb.com (THeXHalferX)
    THeXHalferX
    syqvi1-kewVib-fudjev
    
    
    msfreemicrosoft.ru (TheXHalferX)
    TheXHalferX
    nuhvij-jujqa3-pepjaJ
    
    
    login.mts.ru (9875480490)
    9875480490
    fucnen-6zidfo-gIbrob
    
    
    login.mts.ru (9960662907)
    9960662907
    fiswi3-pawhaX-zoqded
    
    
    profile.mts.ru (9960662907)
    9960662907
    fiswi3-pawhaX-zoqded
    
    
    login.mts.ru (login)
    login
    cignig-vIkra0-rebnud
    
    
    mullvad.net (2171301755381451)
    2171301755381451
    gahdix-cibpiv-4gyBzo
    
    
    my.club (shipman-kidder08@icloud.com)
    shipman-kidder08@icloud.com
    guksUr-2kicga-sunxoc
    
    
    my.club (TXHX)
    TXHX
    guksUr-2kicga-sunxoc
    
    
    order.mycommerce.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wannep-pEqcy8-zukgud
    
    
    mydom365.ru (+79960662907)
    79960662907
    foxrEs-wigcyw-3dofpy
    
    
    myspar.ru (05.10.1995)
    05.10.1995
    zomcaPtyzsi3bopfob
    
    
    users.nexusmods.com (TheXHalferX)
    TheXHalferX
    (ImaGamerNotAModer5537)
    otpauth://totp/Nexus%20Mods:thexhalferx@icloud.com?secret=GJKKOL5VB75B3DRECX7DW2ZF&issuer=Nexus%20Mods
    
    nexusmods.com (TheXHalferX)
    TheXHalferX
    (ImaGamerNotAModer5537)
    otpauth://totp/Nexus%20Mods:thexhalferx@icloud.com?secret=GJKKOL5VB75B3DRECX7DW2ZF&issuer=Nexus%20Mods
    
    www.nike.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    hebnyx-1hucpo-cexXob
    
    
    nn-card.ru (+7 (996) 066-2907)
    +7 (996) 066-2907
    PischPischOloloYaVoditelNLO
    
    
    nnmclub.to (Halfer666)
    Halfer666
    zandax-cyZcu8-rogdyd
    
    
    nnmclub.to (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    zandax-cyZcu8-rogdyd
    
    
    edu.nntu.ru (sazonovoleg2018)
    sazonovoleg2018
    v5aYpJOB99bhnYTTwmaFkfYw
    
    
    nordaccount.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    coxrin-7jepqi-qubsUc
    otpauth://totp/nordaccount.com:thexhalferx@icloud.com?secret=CVVIVR2JWFPPSNAAV6DT2CUZQTP32224&issuer=nordaccount.com&algorithm=SHA1&digits=6&period=30
    
    login.nvgs.nvidia.com (Олег Сазонов)
    Олег Сазонов
    puWsi4-tygbyk-vukcoj
    
    
    ok.ru (bktsdbzwt7@privaterelay.appleid.com)
    bktsdbzwt7@privaterelay.appleid.com
    cyvDy1-sipbax-syhmut
    
    
    okeydostavka.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    qyxfah-pinkob-vyZjy3
    
    
    home.openweathermap.org (bride_karts0r@icloud.com)
    bride_karts0r@icloud.com
    vasqip-5zibtU-hakneg
    
    
    home.openweathermap.org (TheXHalferX)
    TheXHalferX
    vasqip-5zibtU-hakneg
    
    
    account.otoy.com (TheXHalferX)
    TheXHalferX
    bUmno2-xugfev-dokvic
    
    
    www.paradoxplaza.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    sevkiz-weqbeC-pytny7
    
    
    my.paragon-software.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Cywgih-hivpiv-5dofny
    
    
    uc.paragon-software.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Cywgih-hivpiv-5dofny
    
    
    www.patreon.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    hyNved-bovqaw-cahja6
    otpauth://totp/Patreon:thexhalferx%40icloud.com?secret=LBKJKPNOF5CWFQG2&issuer=Patreon
    
    retail.payment.ru (7071965)
    7071965
    XWider2750
    
    
    my.perekrestok.ru
    +79960662907
    XWider2750
    
    
    pirnn.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    "83Y}KtBi5D""A_3E"
    
    
    app.plex.tv (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    marvo7-rysjem-Hitxeg
    otpauth://totp/app.plex.tv:thexhalferx@icloud.com?secret=ZYAMTX33XZFASEEJ7RWEIDOFV5COL2GK&issuer=app.plex.tv&algorithm=SHA1&digits=6&period=30
    
    www.plex.tv (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    XWider27505537
    otpauth://totp/www.plex.tv:thexhalferx@icloud.com?secret=ZYAMTX33XZFASEEJ7RWEIDOFV5COL2GK&issuer=www.plex.tv&algorithm=SHA1&digits=6&period=30
    
    passport.pochta.ru (+79960662907)
    79960662907
    cyzkun-dupfon-4Racnu
    
    
    portingteam.com (TheXHalferX)
    TheXHalferX
    TheXHalferX275055375537
    
    
    account.positivegrid.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wopce4-kihqeH-tofdud
    
    
    member.positivegrid.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wopce4-kihqeH-tofdud
    
    
    privacy.com (segues-smirk-0a@icloud.com)
    segues-smirk-0a@icloud.com
    gumzyd-pamgi4-bahTov
    
    
    www.prosound-nn.ru (thexhalferx)
    thexhalferx
    vTX-6p6-T3p-peH
    
    
    en.pudn.com (chief.sazonoff2011@yandex.ru)
    chief.sazonoff2011@yandex.ru
    xedked-Fijdas-6tykga
    
    
    www.purpleplectrums.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    fegsa8-sijtyz-Nazdez
    
    
    q3.qwintry.com (t**********x@icloud.com)
    t**********x@icloud.com
    bavqur-2qYqzo-mocgof
    
    
    my.rapidminer.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    XWider2750
    
    
    www.raycast.com (TheXHalferX)
    TheXHalferX
    hycsac-qyvxyn-guhcA3
    
    
    www.reddit.com (TheXHalferX)
    TheXHalferX
    hovnez-jUgveg-meqwi4
    otpauth://totp/www.reddit.com:TheXHalferX?secret=VMZ4Y4ISIISGGAMSRCUKY5BDBY3XCZII&issuer=www.reddit.com&algorithm=SHA1&digits=6&period=30
    
    accounts.reddit.com (TheXHalferX)
    TheXHalferX
    hovnez-jUgveg-meqwi4
    
    
    redgifs.com (yetanotherrandomguy)
    yetanotherrandomguy
    siTbyx-kadtar-9tytzy
    
    
    www.redgifs.com (yetanotherrandomguy)
    yetanotherrandomguy
    siTbyx-kadtar-9tytzy
    
    
    my.replika.ai (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    vEnqip-hekcoz-biwwa4
    
    
    www.roblox.com (TheXHalferX)
    TheXHalferX
    gomkaz-2verTi-podgox
    
    
    signin.rockstargames.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    benrok-cEjti4-wiwzuf
    otpauth://totp/signin.rockstargames.com:thexhalferx@icloud.com?secret=RYYLP2HF3K2GZIBAEP5OZPOAJA&issuer=signin.rockstargames.com&algorithm=SHA1&digits=6&period=30
    
    rutracker.org (Halfer666)
    Halfer666
    THeXHalferX@1649
    
    
    rutracker.org (Halfer666)
    Halfer666
    THeXHalferX@1649
    
    
    rzd.ru (XHalferX)
    XHalferX
    heqboj-cikzaj-pEbda6
    
    
    online.sberbank.ru (chief.sazonoff2011)
    chief.sazonoff2011
    mywme4-Zabvoj-zesweb
    
    
    math.semestr.ru (nntux)
    nntux
    qwertyuiopfucku
    
    
    www.semestr.ru (nntux)
    nntux
    qwertyuiopfucku
    
    
    my.setapp.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    femxew-foxhyd-Hosfe2
    
    
    account.shapr3d.com (00_silica_rejects@icloud.com)
    00_silica_rejects@icloud.com
    gePxaq-gysko7-qybxax
    
    
    www.shellsmart.com (70043609851766212)
    70043609851766212
    mojdub-getxy1-geGwot
    
    
    sinoni.men (sazonovoleg2008@yandex.ru)
    sazonovoleg2008@yandex.ru
    kawzug-cipWof-bymjo6
    
    
    www.sketch.com (riser.scalier_0b@icloud.com)
    riser.scalier_0b@icloud.com
    qyNjaq-mekfoz-qipma1
    
    
    x-lab-headquarters.slack.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    nyzqik-Qydhos-rajco2
    
    
    s.sleepcycle.com
    App
    nihmy2-zugpUc-vapryz
    
    
    songmoney.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    Qobnor-sidhi0-wevmit
    
    
    soundcloud.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    S0()HDP@55W0R6
    
    
    www.speedtest.net (chatty-mapping-0r@icloud.com)
    chatty-mapping-0r@icloud.com
    tozkyF-webgis-4xyxge
    
    
    www.spotify.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    tuncyb-4godna-gaQmuz
    
    
    accounts.spotify.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    tuncyb-4godna-gaQmuz
    
    
    stackoverflow.com (sparkly_seabed0j@icloud.com)
    sparkly_seabed0j@icloud.com
    rysciz-pipTyq-1zexqo
    
    
    starline.online (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wd_XW275055375537
    
    
    steamcommunity.com (chieff2011)
    chieff2011
    sazonovoleg200812345678XWider275055375537
    
    
    help.steampowered.com (chieff2011)
    chieff2011
    sazonovoleg200812345678XWider275055375537
    
    
    store.steampowered.com (chieff2011)
    chieff2011
    sazonovoleg200812345678XWider275055375537
    
    
    www.stolplit.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    zinrop-6tedxY-woczar
    
    
    my.surfshark.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    tyhnif-debgi7-kirhuG
    
    
    surfshark.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    tyhnif-debgi7-kirhuG
    otpauth://totp/surfshark.com:thexhalferx@icloud.com?secret=KUP3CGQJTGJWQJOLVI5DLMCE3A&issuer=surfshark.com&algorithm=SHA1&digits=6&period=30
    
    login.teamviewer.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    vygho8-roddez-jetMyw
    otpauth://totp/TeamViewer:thexhalferx@icloud.com?secret=FRR6MSO7DJ6OE3N3I7KGBXCV&issuer=TeamViewer
    
    techlandgg.com (builds-gunny-0e@icloud.com)
    builds-gunny-0e@icloud.com
    voWxu7-nawpiv-comhyx
    
    
    auth.ted.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    roXxyq-huggo8-xaspuk
    
    
    termius.com (f5m8qtfbd7@privaterelay.appleid.com)
    f5m8qtfbd7@privaterelay.appleid.com
    pektam-2vaspy-nAsbep
    otpauth://totp/termius.com:f5m8qtfbd7@privaterelay.appleid.com?secret=YCG2CPK65GZ4U6AAKY3VAY5CU66KQYO5&issuer=termius.com&algorithm=SHA1&digits=6&period=30
    
    tinkoff.ru (SazHelen)
    SazHelen
    qiwbid-rIshik-3sevne
    
    
    www.tinkoff.ru (SazHelen)
    SazHelen
    qiwbid-rIshik-3sevne
    
    
    id.tinkoff.ru (TheXHalferX)
    TheXHalferX
    hiSteq-xuvkyp-gysji5
    
    
    www.tinkoff.ru (TheXHalferX)
    TheXHalferX
    hiSteq-xuvkyp-gysji5
    
    
    fintech.tinkoff.ru (TheXHalferX)
    TheXHalferX
    hiSteq-xuvkyp-gysji5
    
    
    toneden.io (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    xicza9-voxqUx-cendyt
    
    
    www.toontrack.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    ruwvyq-Fakxo3-hifgim
    
    
    torrentmac.org (TheXHalferX)
    TheXHalferX
    XWider275055375537
    
    
    tplinknbu.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    hAnjac-xaqgi5-biwtic
    
    
    social.treehouse.systems (asset_drinker.0p@icloud.com)
    asset_drinker.0p@icloud.com
    nazhyS-4mezwe-byvbos
    otpauth://totp/treehouse.systems:asset_drinker.0p%40icloud.com?secret=UMIRLFZ3JX4E52RLXGLVVWCCI6VBRJSM&issuer=treehouse.systems
    
    passport.twitch.tv (Helg_S)
    Helg_S
    gakFuw-mufbo2-mezqoq
    otpauth://totp/Twitch?secret=7O4YBMCWVS2533DCKWBDOFX3R6CHSWK4PVLD66KFJFKM26GKOXZA&issuer=Twitch
    
    www.twitch.tv (Helg_S)
    Helg_S
    gakFuw-mufbo2-mezqoq
    otpauth://totp/Twitch?secret=7O4YBMCWVS2533DCKWBDOFX3R6CHSWK4PVLD66KFJFKM26GKOXZA&issuer=Twitch
    
    profile.twocanoes.com (TheXHalferX)
    TheXHalferX
    jasces-5Pecta-mygxoj
    
    
    www.uaudio.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    buKhew-wajmek-nahhu1
    
    
    connect.ubisoft.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    iN9-vkS-E^n-)U7
    otpauth://totp/thexhalferx@icloud.com?secret=jvrxi2dunu4uqq2y&issuer=Ubisoft
    
    unknowncheats.me (TheXHalferX)
    TheXHalferX
    XjzbjKvp:J22dTd
    
    
    ups-broker.ru (89960662907)
    89960662907
    79730
    
    
    wwwapps.ups.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    keffyd-jUrmef-rywry3
    
    
    www.ups.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    keffyd-jUrmef-rywry3
    
    
    connect.vk.com (+79960662907)
    79960662907
    vYcmom-pudpu0-kipbyz
    otpauth://totp/VK:thexhalferx?secret=N6DLY26NHXY76WXT&issuer=VK
    
    vk.com (+79960662907)
    79960662907
    vYcmom-pudpu0-kipbyz
    otpauth://totp/VK:thexhalferx?secret=N6DLY26NHXY76WXT&issuer=VK
    
    oauth.vk.com (+79960662907)
    79960662907
    vYcmom-pudpu0-kipbyz
    otpauth://totp/VK:thexhalferx?secret=N6DLY26NHXY76WXT&issuer=VK
    
    m.vk.com (+79960662907)
    79960662907
    vYcmom-pudpu0-kipbyz
    
    
    vk.com (ssazonovas@icloud.com)
    ssazonovas@icloud.com
    "(Kj;yjtChf,fnsdfybt2110)"
    
    
    vkarmane.me (TheXHalferX)
    TheXHalferX
    Infra96331552struct
    
    
    customerconnect.vmware.com (seeded.laces.0p@icloud.com)
    seeded.laces.0p@icloud.com
    sappim-1gojdo-vyckEb
    
    
    idp.vwgroup.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    jinrap-Qizhy0-savgor
    otpauth://totp/Volkswagen%20Group%20Rus:thexhalferx%40icloud.com?secret=J5CGSNLMMVFGUVKGGA4WW2DKMR4E65DV&digits=6&algorithm=SHA1&issuer=Volkswagen%20Group%20Rus&period=30
    
    www.wemod.com (manor_milkier.0k@icloud.com)
    manor_milkier.0k@icloud.com
    hyNcoq-fyrsow-6nibmu
    
    
    x-print.local (XWider)
    XWider
    27505537
    
    
    x-pro.local (chieff)
    chieff
    XWider2750
    
    
    xplrclub.com (chances03.drainer@icloud.com)
    chances03.drainer@icloud.com
    hefRib-7jerge-suwtig
    
    
    xrx9c934e3763f7.local. (XWider)
    XWider
    27505537
    
    
    xrx9c934e3763f7.local (XWider)
    XWider
    27505537
    
    
    passport.yandex.ru (chief.sazonoff2011)
    chief.sazonoff2011
    FuckTheSystemX3399
    
    
    passport.yandex.ru (group15ist1)
    group15ist1
    trudnaya.zadacha.xxxx
    
    
    passport.yandex.ru (m19-ist-123)
    m19-ist-123
    IRIT2021
    
    
    passport.yandex.ru (okskoe.tszh)
    okskoe.tszh
    8qrr7db6
    
    
    id.yandex.ru (sazonovoleg2008)
    sazonovoleg2008
    cybzyb-Cewbe4-wighum
    
    
    passport.yandex.ru (sazonovoleg2008)
    sazonovoleg2008
    cybzyb-Cewbe4-wighum
    
    
    passport.yandex.ru (swetlana5azonova)
    swetlana5azonova
    duzrid-dyBvyp-rygwi3
    
    
    id.yota.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    TheXHalferX@1234@9876
    
    
    my.yota.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    TheXHalferX@1234@9876
    
    
    status.yota.ru (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    TheXHalferX@1234@9876
    
    
    positivegrid.zendesk.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    wopce4-kihqeH-tofdud
    
    
    accounts.zerotier.com (thexhalferx@icloud.com)
    thexhalferx@icloud.com
    xepduh-nechIm-vicqy7
    
    
    us04web.zoom.us (chief.sazonoff2011@yandex.ru)
    chief.sazonoff2011@yandex.ru
    denquZ-mopgez-tubny0
    
    
    10.0.0.1 (admin)
    admin
    i7Z-uBu-ZJ5-LtA
    
    
    10.0.0.1 (admin)
    admin
    i7Z-uBu-ZJ5-LtA
    
    
    192.168.1.1 (admin)
    admin
    TheXHalferX@1234@9876
    
    
    192.168.1.1 (fh_3f12c0)
    fh_3f12c0
    zohVi6-kavvib-huxhuj
    
    
    192.168.1.1 (user)
    user
    Mijxip-guwhaq-muwdi4
    
    
    192.168.1.85 (admin)
    admin
    TheXHalferX@1234@9876
    
    
    ru-new.4game.com (TheXHalferX)
    TheXHalferX
    qynpoj-jiXbyn-gujjo3
    
    
    4pda.ru (TheXHalferX)
    TheXHalferX
    zecwyd-zagmis-qamdE0
    
    
    4pda.to (TheXHalferX)
    TheXHalferX
    zecwyd-zagmis-qamdE0
    
    
    my.5ka.ru (+7 (996) 066-29-07)
    +7 (996) 066-29-07
    CommandControlOptionShiftEscape2750
    """
    
    private typealias PassDict = [String : ItemStruct]
    
    struct ItemStruct {
        var Domain: String
        var Title: String
        var Login: String
        var Password: String
        var TOTP: String?
    }
    
    private func generatePasswordStruct() -> PassDict {
        let array = string.split(separator: "\n\n\n")
        
        var ItemsArray = PassDict()
        
        var count = 0
        
        array.forEach { element in
            let items = element.split(separator: "\n")
            let title = String(items[0])
            let domain = String(title.split(separator: " ")[0])
            let login = String(items[1])
            let password = String(items[2])
            var totp: String? = nil
            if items.count > 3 {
                let totpPrep = String(items[3])
                if totpPrep.split(separator: ":")[0] == "otpauth" {
                    totp = totpPrep.split(separator: "secret=").last!.description
                    totp = totp?.split(separator: "&")[0].description
                }
            }
            ItemsArray[title] = .init(Domain: domain, Title: title, Login: login, Password: password, TOTP: totp)
            count += 1
        }
        return ItemsArray
    }
    public enum generate {
        case totpConf
        case passwordsWithTOTP
        case passwordsWithoutTOTP
        case allPasswordsFile
        case everything
    }
    
    private func generateTOTPConfig(_ s: PassDict) {
        var totpCONFIGString: String {
            get {
                var retval: String = ""
                s.forEach { el in
                    if el.value.TOTP != nil {
                        retval.append("""
    TokenName: \(el.value.Domain)
    TokenSecret: \(el.value.TOTP!)
    TokenAlgo: sha1
    TokenDigits: 6
    
    """)
                    }
                }
                return retval
            }
        }
        
        let fileData: String = """
    Filetype: Flipper TOTP plugin config file
    Version: 2
    BaseIV: 03 FC 99 92 42 45 AD 85 5F 00 47 65 19 C7 42 CD
    Crypto: 20 EA 2A 59 24 54 C7 AF 8D 4C 65 2E A1 AC 8C 59
    Timezone: 3.000000
    PinIsSet: true
    NotificationMethod: 3
    """
        
        FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/totp.conf", contents: String(fileData + "\n" + totpCONFIGString).data(using: .utf8))

    }
    
    private func generatePasswordsWithTOTP(_ s: PassDict) {
        try? FileManager.default.createDirectory(atPath: "/Users/chieff/Downloads/Passwords With TOTP", withIntermediateDirectories: false)
        s.forEach { el in
            if el.value.TOTP != nil {
                let contents: Data = String("""
    Title: \(el.value.Title)
    Login: \(el.value.Login)
    Password: \(el.value.Password)
    TOTP: \(el.value.TOTP!)
    """).data(using: .utf8)!
                FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords With TOTP/\(el.key).txt", contents: contents)
            }
        }
    }
    
    private func generatePasswordsWithoutTOTP(_ s: PassDict) {
        try? FileManager.default.createDirectory(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords Without TOTP", withIntermediateDirectories: false)
        s.forEach { el in
            if el.value.TOTP == nil {
                let contents: Data = String("""
    Title: \(el.value.Title)
    Login: \(el.value.Login)
    Password: \(el.value.Password)
    """).data(using: .utf8)!
                FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords Without TOTP/\(el.key).txt", contents: contents)
            }
        }
    }
    
    private func generateAllPasswordsFile(_ s: PassDict) {
        var allPasswordsData: Data {
            get {
                var retval = ""
                s.forEach { el in
                    retval += """
Domain: \(el.value.Domain)
Title: \(el.value.Title)
Login: \(el.value.Login)
Password: \(el.value.Password)
\(el.value.TOTP != nil ? "TOTP Secret: \(el.value.TOTP!)" : "")


"""
                }
                return retval.data(using: .utf8)!
            }
        }
        FileManager.default.createFile(atPath: URL.homeDirectory.path(percentEncoded: false) + "/Downloads/Passwords.txt", contents: allPasswordsData)
    }
    
    func generateFiles(_ type: generate) {
        let ItemsArray = generatePasswordStruct()
        
        switch type {
        case .totpConf:
            generateTOTPConfig(ItemsArray)
        case .passwordsWithTOTP:
            generatePasswordsWithTOTP(ItemsArray)
        case .passwordsWithoutTOTP:
            generatePasswordsWithoutTOTP(ItemsArray)
        case .allPasswordsFile:
            generateAllPasswordsFile(ItemsArray)
        case .everything:
            generateTOTPConfig(ItemsArray)
            generatePasswordsWithTOTP(ItemsArray)
            generatePasswordsWithoutTOTP(ItemsArray)
            generateAllPasswordsFile(ItemsArray)
        }
    }
}

Passworder().generateFiles(.everything)

#!/bin/bash


## icons initialize

cd /home/isucon/isubata/webapp/public

if [ -f icons.tar ];then
  rm -rf icons
  tar xvf icons.tar
fi

## cache


for url in 02be8cdc86437df99c6cdcfb47c52f1085d92b1a.png \
           0614f0cea1b70fb71b4c3b88545a42327157a41e.jpg \
           158fa9df919970ac8bc3bc2724ed5b02fe30968d.png \
           164a720f716d0b01e6c66cb53a8d1367aaf4fc42.png \
           1ce0c4ff504f19f267e877a9e244d60ac0bf1a41.png \
           1d7020c12548e0fa1401ade0dcd50591fbc709e3.png \
           1d76784a308ce4cabc26ee143e6be5ac64eaa494.png \
           2716e8a567c6eb3bab842e5b82940e795583ce59.png \
           2917ace8d8d4e5e1df4e4ce8f6bf03c1fb9ab162.png \
           32d45e64d52509f2c55d030637f94692ef1ea08f.png \
           37cb504a993a882fb7bae384f0a518cae7ff97b5.png \
           3bb9df05ed10fa7a086183bf2799e132631a93ce.png \
           3d46b7f1f3b3b4486d56a224db9fea9b12c718f5.png \
           3f6591acbf1577185cd7c674f0ec36efcc9c4970.png \
           4222f36590fbd90f9b7179efaa582ae51c777c52.jpg \
           450886d6faaee54f7387d890bd1a8e01e80c147c.png \
           512b284bbcc00e73735b15619527e34087e4276d.png \
           541bd3a853096f172a2d87898ed47a97ba1da1ee.png \
           5dc48c74e0f923aa2a4acbe786d3cbe2512c6767.png \
           5e981ef46ec0f47bdc2f188673325b85078f5235.png \
           60c8a6a07eafc18c9d37dc0e00f26e8fadd6c125.jpg \
           61463cd868570a29cc1b74232000e84d3276e315.png \
           65ea5a70b1fcf8f5f816b01b87f2aca2251315b0.png \
           6b88bb2c190da9e6cd9e704c45bf1d52ad107348.png \
           6ccf2a335413b8773f03ed4345e66d0019e44bd8.png \
           6e7908eacdf1817989ed98b8ed979a4f49ad60c2.png \
           7598595abd317f5ae637300a27f95e3c700376a7.png \
           78a9228a393eb2621f346fc6a5e099d5bc373f76.png \
           846f4f0bde2a2103c71936091e82bc1354f11b3a.png \
           851e9e15e1d1fff39c2d182881926d107154c44a.png \
           8628ef0f034d734729e3a735362e6008b30bb72b.png \
           8649e36ef8740cdb137911097e1438d825e9434b.png \
           8aa90058ae2ca9c39b63de8bceef53e2d3a6d80c.png \
           8cbe874a2eac5b9e665add295160d36c56be5df5.png \
           8e4c19ddf58b761c97bbfcf7e6279f0c793c4156.png \
           9152bd50720b3e825a7e193ff062e6fe13e72ef9.png \
           9ffcd7cee7e5947b204db47c5738150e09e685e1.png \
           aa8c2a9a793eb1414c45fd2f46f08096d5f7cb69.png \
           ae8893170459dc68063b942c49cc0b2be78f6b47.png \
           afed4119e9395c58e691e8f1c2687ce222e95183.png \
           b0eecd54d66dd89864a6a0997d69e7bcd00036ee.png \
           b1af7d150304a3dde8c139a544db8cdb4571d690.png \
           b1c8c5bc9b026507ae62e6bf62cf55f70f4ac3d8.png \
           b4f9effc4d9e86b58b271f5652b51dd997036d43.png \
           ba05f8d186ab9c5270276176187eb0361b06baef.png \
           ba2d2384f825a83862f3b61302468b2e07f0a0f7.png \
           bde120814720fb3bee14f415b4001305868df456.png \
           bf37d9ee523c443a410f532a828ed9197da95329.png \
           c192f5cb12a1e37d0e5ada0c2fa5335d016b912c.png \
           c2d161d74b4e6b6541974a473bf0a9dfb01579dd.png \
           c3e70129aeb6397568d97c8261b134547c31f4dc.png \
           c434098fec37fd0d2c1e646d104220f6ffabbea7.png \
           c89c27eb8b8c37dec15ac414a64798f7d43968f5.png \
           cc70e74a366a09da57f028a4317043d40e48afcc.png \
           d596eb3cfed2cf248053397eb623fc560917d0c9.png \
           d6ad2e7df048b8691a8223482adf654ae03376af.png \
           d9efb5732e0ee53618bd10d2ddc5a6b33edc4751.png \
           default.png \
           e01bb3e44b4b80c34168091f7aa3ce083b31add1.png \
           e58ed7194ed4a99d9d6ada9e3383983edcbd1edc.png \
           e7ae0e65a2deb1f89a1f82dfc713c787cf2a5233.png \
           ec48374ca1b2693ca643041659fb8372c72d1ddd.png \
           f03c4f9c623562d824399f660f619f22dc88763e.png \
           f0a6a8334e2b9b3f49c39ce35a19a2d20e648aab.png \
           f66cf18995c7be8ca7f490210a15b80c35197347.png \
           f8a9d2d65300689fdbf9688a05045f56c122bc16.png \
           f906be69b742085556fd0d80ac1241e2693d9872.png

           do
           echo $url
           done
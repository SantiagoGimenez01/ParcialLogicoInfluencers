% La empresa Grandato quiere hacer un análisis del comportamiento de los usuarios a través de distintas redes sociales. Y nos pide realizar una solución 
% en Prolog para satisfacer los siguientes requerimientos. Los predicados principales deben ser completamente inversibles.
% Los usuarios tienen canales en distintas redes sociales con distinta cantidad de seguidores en cada una.

% Punto 1
% Modelar los siguientes usuarios de ejemplo:
% ana tiene un canal de youtube con 3.000.000 de seguidores, un canal de instagram con 2.700.000 seguidores, y un canal de tiktok con 1.000.000 de seguidores. 
% Se acaba de abrir un canal de twitch así que sólo tiene 2 seguidores.
% beto tiene un canal de twitch con 120.000 seguidores, un canal de youtube con 6.000.000 de seguidores, y un canal de instagram con 1.100.000 seguidores, 
% pero no tiene canal de tik tok.
% cami tiene canal de tiktok con 2.000 seguidores. No tiene canal de instagram ni de twitch ni de youtube.
% dani tiene un canal de youtube con 1000000 de seguidores.
% evelyn tiene un instagram con 1 seguidor.

% Punto 2
% Sobre los influencers:
% influencer/1 se cumple para un usuario que tiene más de 10.000 seguidores en total entre todas sus redes.
% En los usuarios de ejemplo, dani, ana y beto son influencers.
% omnipresente/1 se cumple para un influencer si está en cada red que existe (se consideran como existentes aquellas redes en las que hay al menos un usuario).
% Por ejemplo, ana es omnipresente.
% exclusivo/1 se cumple cuando un influencer está en una única red.
% Por ejemplo, dani es exclusivo.

% Punto 3
% En las distintas redes sociales pueden publicarse distintos tipos de contenidos. Por ahora existen los videos (de los cuales nos interesan quienes aparecen
% en el video y la duración), las fotos (de las cuales nos interesan quienes aparecen en la foto), y los streams (de los cuales nos interesa la temática).
% Modelar los contenidos de forma tal que a futuro puedan existir otros tipos de contenido y agregarlos debe producir el menor impacto posible en el sistema.
% Ejemplos:
% ana publicó en tiktok un video de 1 minuto en el que aparecen beto y evelyn, otro video de 1 minuto en tiktok donde se grabó a ella misma y además 
% publicó en instagram una selfie.
% beto publicó una foto de un paisaje en instagram (en la que no aparece nadie).
% cami publicó un stream sobre el leagueOfLegends en twitch, y un video de ella de 5 minutos en youtube.
% evelyn publicó una foto de ella y cami en instagram.
% Se sabe que las temáticas relacionadas con juegos son leagueOfLegends, minecraft y aoe. Agregar esta información a la base de conocimientos.

% Punto 4
% adictiva/1 se cumple para una red cuando sólo tiene contenidos adictivos (Un contenido adictivo es un video de menos de 3 minutos, un stream sobre una 
% temática relacionada con juegos, o una foto con menos de 4 participantes).

% Punto 5
% colaboran/2 se cumple cuando un usuario aparece en las redes de otro (en alguno de sus contenidos). En un stream siempre aparece quien creó el contenido.
% Esta relación debe ser simétrica. (O sea, si a colaboró con b, entonces también debe ser cierto que b colaboró con a)
% Por ejemplo, beto colaboró con ana y ana colaboró con evelyn.

% Punto 6
% caminoALaFama/1 se cumple para un usuario no influencer cuando un influencer publicó contenido en el que aparece el usuario, o bien el influencer publicó 
% contenido donde aparece otro usuario que a su vez publicó contenido donde aparece el usuario. Debe valer para cualquier nivel de indirección.
% Cami está camino a la fama porque evelyn publicó una foto suya (y a su vez ana, que es influencer, publicó un video donde aparece evelyn).
% Beto no está camino a la fama aunque ana haya publicado un video con él, ¡porque ya es famoso, es influencer!

% Punto 7


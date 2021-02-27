/*******************************************************************************
   Beers Database - Version 0.5
   Script: PopulateTables.sql
   Description: Populates the Beers database.
   DB Server: PostgreSql
   Author: Gil Gonçalves
   License:
********************************************************************************/

/*******************************************************************************
   Populate Tables
********************************************************************************/

INSERT INTO beers (beername,manufacturer) VALUES (N'coruja',N'superbock');

INSERT INTO bars (barname,address,license) VALUES (N'cheers', N'505 8th St S', N'0');

INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Sandra Tejo', N'Harrisburg, Pennsylvania', N'928073579');

INSERT INTO likes (drinkername,beername) VALUES (N'Sandra Tejo',N'coruja');

INSERT INTO sells (barname,beername,price) VALUES (N'cheers',N'coruja',2.50);

INSERT INTO frequents (drinkername,barname) VALUES (N'Sandra Tejo',N'cheers');






INSERT INTO beers (beername,manufacturer) VALUES (N'Hocus Pocus',N'Magic Hat');
INSERT INTO beers (beername,manufacturer) VALUES (N'Grimbergen Blonde',N'Brouwerij Alken-Maes');
INSERT INTO beers (beername,manufacturer) VALUES (N'Widdershins Barleywine',N'Left Hand Brewing Company');
INSERT INTO beers (beername,manufacturer) VALUES (N'Lucifer',N'Brouwerij Liefmans');
INSERT INTO beers (beername,manufacturer) VALUES (N'Bitter',N'Ridgeway Brewing');
INSERT INTO beers (beername,manufacturer) VALUES (N'Winter Warmer',N'Youngs & Company Brewery');
INSERT INTO beers (beername,manufacturer) VALUES (N'Winter Welcome 2007-2008',N'Samuel Smith Old Brewery (Tadcaster)');
INSERT INTO beers (beername,manufacturer) VALUES (N'Oatmeal Stout',N'Samuel Smith Old Brewery (Tadcaster)');
INSERT INTO beers (beername,manufacturer) VALUES (N'Espresso Porter',N'Empyrean Brewing Company');
INSERT INTO beers (beername,manufacturer) VALUES (N'Chocolate Stout',N'Fort Collins Brewery');
INSERT INTO beers (beername,manufacturer) VALUES (N'Hitachino Nest Real Ginger Brew',N'Kiuchi Shuzou Goushi Kaisya');
INSERT INTO beers (beername,manufacturer) VALUES (N'JuJu Ginger',N'Left Hand Brewing Company');
INSERT INTO beers (beername,manufacturer) VALUES (N'The Kidd Lager',N'Fort Collins Brewery');
INSERT INTO beers (beername,manufacturer) VALUES (N'Imperial Stout',N'Samuel Smith Old Brewery (Tadcaster)');
INSERT INTO beers (beername,manufacturer) VALUES (N'Oak-Aged Belgian Tripel',N'Upstream Brewing Company at Legacy');
INSERT INTO beers (beername,manufacturer) VALUES (N'Ultrablonde',N'Brasserie dEcaussinnes');
INSERT INTO beers (beername,manufacturer) VALUES (N'Wiesen Edel Weisse',N'Private Weissbierbrauerei G. Schneider & Sohn GmbH');
INSERT INTO beers (beername,manufacturer) VALUES (N'Old Foghorn 2001',N'Anchor Brewing');
INSERT INTO beers (beername,manufacturer) VALUES (N'Framboise',N'Brasserie La Choulette');
INSERT INTO beers (beername,manufacturer) VALUES (N'Cow Palace Scotch Ale 1998',N'Egan Brewing');
INSERT INTO beers (beername,manufacturer) VALUES (N'Bigfoot 2001',N'Sierra Nevada Brewing Co.');
INSERT INTO beers (beername,manufacturer) VALUES (N'Bigfoot 2002',N'Sierra Nevada Brewing Co.');
INSERT INTO beers (beername,manufacturer) VALUES (N'Bigfoot 2003',N'Sierra Nevada Brewing Co.');
INSERT INTO beers (beername,manufacturer) VALUES (N'Bigfoot 2004',N'Sierra Nevada Brewing Co.');
INSERT INTO beers (beername,manufacturer) VALUES (N'Bigfoot 2005',N'Sierra Nevada Brewing Co.');
INSERT INTO beers (beername,manufacturer) VALUES (N'Winter Ale',N'Summit Brewing');
INSERT INTO beers (beername,manufacturer) VALUES (N'Full Moon Winter Ale',N'Molson Breweries of Canada');
INSERT INTO beers (beername,manufacturer) VALUES (N'Odell IPA',N'Odell Brewing');
INSERT INTO beers (beername,manufacturer) VALUES (N'Ornery Amber Lager',N'Tommyknocker Brewery and Pub');
INSERT INTO beers (beername,manufacturer) VALUES (N'Cutthroat Porter',N'Odell Brewing');
INSERT INTO beers (beername,manufacturer) VALUES (N'Maple Nut Brown Ale Ale',N'Tommyknocker Brewery and Pub');
INSERT INTO beers (beername,manufacturer) VALUES (N'Cocoa Porter',N'Tommyknocker Brewery and Pub');
INSERT INTO beers (beername,manufacturer) VALUES (N'Jenlain Blonde',N'Brasserie Duyck');
INSERT INTO beers (beername,manufacturer) VALUES (N'Blonde',N'Brasserie La Choulette');
INSERT INTO beers (beername,manufacturer) VALUES (N'Flemish Primitive Wild Ale (Demon Fish)',N'De Proef Brouwerij');
INSERT INTO beers (beername,manufacturer) VALUES (N'Witkap-Pater Tripel',N'Brouwerij Slaghmuylder');
INSERT INTO beers (beername,manufacturer) VALUES (N'Winter Cheer',N'Spanish Peaks Brewing');
INSERT INTO beers (beername,manufacturer) VALUES (N'Canaster Winter Scotch',N'Kleinbrouwerij de Glazen Toren');
INSERT INTO beers (beername,manufacturer) VALUES (N'16',N'Unibroue');
INSERT INTO beers (beername,manufacturer) VALUES (N'Quelque Chose',N'Unibroue');
INSERT INTO beers (beername,manufacturer) VALUES (N'Kriek',N'Brouwerij De Ranke');
INSERT INTO beers (beername,manufacturer) VALUES (N'BiÃ¨re Darbyste',N'Brasserie de Blaugies');
INSERT INTO beers (beername,manufacturer) VALUES (N'Maracaibo Especial',N'Jolly Pumpkin Artisan Ales');
INSERT INTO beers (beername,manufacturer) VALUES (N'Flemish Primitive Wild Ale (Pin Head)',N'De Proef Brouwerij');
INSERT INTO beers (beername,manufacturer) VALUES (N'Calabaza Blanca',N'Jolly Pumpkin Artisan Ales');
INSERT INTO beers (beername,manufacturer) VALUES (N'Porter',N'Nebraska Brewing Company');
INSERT INTO beers (beername,manufacturer) VALUES (N'Cardinal Pale Ale',N'Nebraska Brewing Company');
INSERT INTO beers (beername,manufacturer) VALUES (N'Zinnebir Xmas',N'Brasserie de la Senne');
INSERT INTO beers (beername,manufacturer) VALUES (N'Bridal Ale 2005',N'Pelican Pub & Brewery');






INSERT INTO bars (barname,address,license) VALUES (N'Frequency Breaker Club', N'1856 Duval St', N'36606-1106');
INSERT INTO bars (barname,address,license) VALUES (N'M & P Lounge', N'453 Bay Shore Ave', N'36607-1501');
INSERT INTO bars (barname,address,license) VALUES (N'Patches Lounge', N'6368 Cottage Hill Rd', N'36609-3111');
INSERT INTO bars (barname,address,license) VALUES (N'19th Hole Pub & Package Store', N'Alabama 25', N'0');
INSERT INTO bars (barname,address,license) VALUES (N'1st and 10 Restaurant and Bar', N'236 S Gay St', N'36830-5422');
INSERT INTO bars (barname,address,license) VALUES (N'4 Play', N'5911 Old Montgomery Hwy', N'35405-4126');
INSERT INTO bars (barname,address,license) VALUES (N'4th & 23rd', N'401 23rd Ave', N'35401-1058');





INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Caio Penedos', N'Austin, Texas', N'912297504');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Helena Silva', N'San Francisco, California', N'918920771');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Leonor Santos', N'Beersel, Vlaams Brabant', N'963202058');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Miguel Santos', N'Drammen, ', N'969800917');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Tatiana Moreira', N'Dinant, Namur', N'936483738');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Céu Silva', N'Dene, Namur', N'910228538');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Sandra Santos', N'Rochefort, Namur', N'964232531');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Filipa Tejo', N'Williamsport, Pennsylvania', N'961773483');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Elvira Rodrigues', N'Valparaiso, Indiana', N'922801091');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Florinda Sousa', N'Abita Springs, Louisiana', N'936655037');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'David Pereira', N'Southwold, Suffolk', N'912149768');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Mafalda Santos', N'Opwijk, ', N'939044184');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Tânia Rodrigues', N'Winnipeg, Manitoba', N'965502023');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Myriam Pereira', N'Omaha, Nebraska', N'938534681');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Miguel Penedos', N'Kaufbeuren, Bayern', N'936911173');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Ana Alves', N'Portland, Oregon', N'962926137');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Fátima Rodrigues', N'Juneau, Alaska', N'914465732');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Luís Penedos', N'Panevys, ', N'967416278');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'João Malheiro', N'Rga, ', N'932926586');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Tomás Pereira', N'Madison, Wisconsin', N'919937006');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Artur Santos', N'San Diego, California', N'913832349');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Daniel Moreira', N'Honolulu, Hawaii', N'936724436');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Tiago Penedos', N'Portland, Maine', N'935329722');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Benedita Rodrigues', N'Allentown, Pennsylvania', N'965303403');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Vera Silva', N'Kempten, Bayern', N'911327079');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Tiago Pereira', N'Marktoberdorf, Bayern', N'934052874');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Beatriz Santos', N'Lexington, Kentucky', N'935939786');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Leonor Silva', N'Alpine, California', N'911536460');
INSERT INTO drinkers (drinkername,address,phone) VALUES (N'Daniel Teles', N'Alpirsbach, Baden-Wrttemberg', N'966179626');




INSERT INTO likes (drinkername,beername) VALUES (N'Caio Penedos',N'Bitter');
INSERT INTO likes (drinkername,beername) VALUES (N'Caio Penedos',N'Ultrablonde');
INSERT INTO likes (drinkername,beername) VALUES (N'Caio Penedos',N'Hocus Pocus');
INSERT INTO likes (drinkername,beername) VALUES (N'Caio Penedos',N'Odell IPA');
INSERT INTO likes (drinkername,beername) VALUES (N'Leonor Santos',N'coruja');
INSERT INTO likes (drinkername,beername) VALUES (N'Leonor Santos',N'Grimbergen Blonde');
INSERT INTO likes (drinkername,beername) VALUES (N'Leonor Santos',N'Winter Ale');
INSERT INTO likes (drinkername,beername) VALUES (N'Leonor Santos',N'Imperial Stout');
INSERT INTO likes (drinkername,beername) VALUES (N'João Malheiro',N'Imperial Stout');
INSERT INTO likes (drinkername,beername) VALUES (N'Tiago Pereira',N'Bitter');
INSERT INTO likes (drinkername,beername) VALUES (N'Beatriz Santos',N'Winter Ale');

INSERT INTO sells (barname,beername,price) VALUES (N'M & P Lounge',N'Bitter',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'M & P Lounge',N'Ultrablonde',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'M & P Lounge',N'Winter Ale',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'M & P Lounge',N'Grimbergen Blonde',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'M & P Lounge',N'Hocus Pocus',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'M & P Lounge',N'Imperial Stout',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'M & P Lounge',N'coruja',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'4 Play',N'Bitter',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'4 Play',N'Ultrablonde',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'4 Play',N'Winter Ale',2.50);
INSERT INTO sells (barname,beername,price) VALUES (N'4 Play',N'Odell IPA',2.50);


INSERT INTO frequents (drinkername,barname) VALUES (N'Caio Penedos',N'M & P Lounge');
INSERT INTO frequents (drinkername,barname) VALUES (N'Caio Penedos',N'4 Play');
INSERT INTO frequents (drinkername,barname) VALUES (N'Leonor Santos',N'M & P Lounge');
INSERT INTO frequents (drinkername,barname) VALUES (N'João Malheiro',N'M & P Lounge');
INSERT INTO frequents (drinkername,barname) VALUES (N'Beatriz Santos',N'4 Play');
INSERT INTO frequents (drinkername,barname) VALUES (N'Tiago Pereira',N'4 Play');

use akgimi;
insert into users(id,kakao_profile_nickname, nickname, oauth_id, oidc_provider,simple_password, user_state,profile_image_url) values (9999,'가나다','nick1','1','KAKAO','pGp7oK0O4bcVOHFNsDBRbwmz0k4QyGG4A3FphLS3WYM=','PENDING','https://postfiles.pstatic.net/MjAyMDAyMTBfODAg/MDAxNTgxMzA0MTE3ODMy.ACRLtB9v5NH-I2qjWrwiXLb7TeUiG442cJmcdzVum7cg.eTLpNg_n0rAS5sWOsofRrvBy0qZk_QcWSfUiIagTfd8g.JPEG.lattepain/1581304118739.jpg?type=w580');
insert into users(id,kakao_profile_nickname, nickname, oauth_id, oidc_provider, user_state,profile_image_url) values (10000,'라마바','nick2','2','KAKAO','PENDING','https://postfiles.pstatic.net/MjAyMDAyMTBfODAg/MDAxNTgxMzA0MTE3ODMy.ACRLtB9v5NH-I2qjWrwiXLb7TeUiG442cJmcdzVum7cg.eTLpNg_n0rAS5sWOsofRrvBy0qZk_QcWSfUiIagTfd8g.JPEG.lattepain/1581304118739.jpg?type=w580');
insert into salt(user_id, salt_value, type)
values (9999,'RVUJdBfDf8J+k0k+fJlI2g==','SIMPLE');

insert into account(id, account_type, is_deleted, is_password_registered, balance, created_at, updated_at, user_id, account_number, bank)
values (1, 'DEPOSIT', false, false, 50000, now(),now(), 9999, '123412341234', 'MULTI');
insert into account(id, account_type, is_deleted, is_password_registered, balance, created_at, updated_at, user_id, account_number, bank)
values (2, 'WITHDRAW', false, false, 50000, now(),now(), 9999, '567856785678', 'MULTI');

insert into product(id, name, thumbnail, image, detail, url, price, is_deleted)
values (1, '닌텐도DS', '/images/nintendo.png', '/images/nintendo.png', '디테일', '/images/nintendo.png', 20000, 0);
insert into product(id, name, thumbnail, image, detail, url, price, is_deleted)
values (2, '시그니엘숙박권', '/images/nintendo.png', '/images/nintendo.png', '디테일', '/images/nintendo.png', 30000, 0);

insert into challenge(id, user_id, product_id, accumulated_amount, achievement_state, challenge_period, is_in_progress, achievement_date, created_at, updated_at)
values (999, 9999, 2, 20000, true, 30, false, '2023-08-08', current_timestamp, current_timestamp);

insert into feed(feed_id, is_deleted,is_public,accumulated_amount,created_at,price,
    updated_at, image_url, not_purchased_item, place,content,user_id,challenge_id)
values (1, false, true, 30000, now(), 3000, now(), 'hsdfa.com','item','place','content',9999,999);

insert into count_like(like_count, feed_id) values (0, 1);

insert into feed(feed_id, is_deleted,is_public,accumulated_amount,created_at,price,
                 updated_at, image_url, not_purchased_item, place,content,user_id,challenge_id)
values (2, false, true, 30000, now(), 3000, now(), 'hsdfa.com','item','place','content',9999,999);

insert into count_like(like_count, feed_id) values (0, 2);


insert into feed(feed_id, is_deleted,is_public,accumulated_amount,created_at,price,
                 updated_at, image_url, not_purchased_item, place,content,user_id,challenge_id)
values (3, false, true, 30000, now(), 3000, now(), 'hsdfa.com','item','place','content',9999,999);

insert into count_like(like_count, feed_id) values (0, 3);


insert into feed(feed_id, is_deleted,is_public,accumulated_amount,created_at,price,
                 updated_at, image_url, not_purchased_item, place,content,user_id,challenge_id)
values (4, false, true, 30000, now(), 3000, now(), 'hsdfa.com','item','place','content',9999,999);

insert into count_like(like_count, feed_id) values (0, 4);

insert into feed(feed_id, is_deleted,is_public,accumulated_amount,created_at,price,
                 updated_at, image_url, not_purchased_item, place,content,user_id,challenge_id)
values (5, false, true, 30000, now(), 3000, now(), 'hsdfa.com','item','place','content',9999,999);

insert into count_like(like_count, feed_id) values (0, 5);


insert into feed(feed_id, is_deleted,is_public,accumulated_amount,created_at,price,
                 updated_at, image_url, not_purchased_item, place,content,user_id,challenge_id)
values (6, false, true, 30000, now(), 3000, now(), 'hsdfa.com','item','place','content',9999,999);
insert into count_like(like_count, feed_id) values (0, 6);



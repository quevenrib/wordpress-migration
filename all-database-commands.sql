UPDATE wp_options SET option_value = replace(option_value, 'http://www.oldurl.com', 'http://www.newurl.com') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = REPLACE (guid, 'http://www.oldurl.com', 'http://www.newurl.com');
UPDATE wp_posts SET post_content = REPLACE (post_content, 'http://www.oldurl.com', 'http://www.newurl.com');
UPDATE wp_postmeta SET meta_value = REPLACE (meta_value, 'http://www.oldurl.com','http://www.newurl.com');

<?php
// a private key to do an additional hash via
$HAXCMS->privateKey = 'hax-the-web-key';
// no trailing slash
$HAXCMS->projectsDirectory = HAXCMS_ROOT . '/projects';
// super admin account
$HAXCMS->superUser->name = 'admin';
// super admin password, you must set this in order for HAX to work
#$HAXCMS->superUser->password = '';
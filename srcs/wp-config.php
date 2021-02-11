<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'demo' );

/** MySQL database password */
define( 'DB_PASSWORD', 'demo' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'G&lI#VFa-vOT9>sB^!XnIGu?d+KWkXm9cFha0no}.-@>9{9[Pvo|TSBqPIt?@^-y');
define('SECURE_AUTH_KEY',  '.w/(z$;|V y=*:`3Q~^0^u@G+Qirez=<o8=X}QF^^q54g:hV{|`|d!9laiF&$?oE');
define('LOGGED_IN_KEY',    'XCGiPP@dY2HScx=o@@fn&m}w1b4@Zd6<{&iM=C]8 8/|.LHv)d5]$8CZa5e H`he');
define('NONCE_KEY',        'eS=6U`lst=i+s8s`R%?45OX!84QOrJ[I_ST#427{bk0!gC0Wu&WZ4cdea.R483Jn');
define('AUTH_SALT',        'l7O39f-MGnv;X>t+F6p+QQgU(:0j&ChMI#4#=e^$wI8<Se-Ei5P`K|Tqsfn-hcMZ');
define('SECURE_AUTH_SALT', 'Hln`s%|.I|y%M|`<}XRY[w9n-(9w}(gU9%]e<7DDGVBj[F&]y-q:A%3d?L}r0^Ck');
define('LOGGED_IN_SALT',   '+l kO[h5YZ|Gb=ySG4_]&*M|4r2ChSdvJ-D.^+Y[>&&F%rE<Uw}d5<&_@h1v5R:U');
define('NONCE_SALT',       '>y&a1iV%n#x+=9c6og?fQVzJnND-rBnu Nslx<ruJW0yOUf6c]r]<Ha8uG~oj<0?');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

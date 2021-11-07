<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'xisen' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'NHdH_%?z].Ob9|z@|Tn)=Uw^u9X&@0$iA+~3IvQ9PLYt&y)([f:$m^p+i$$vu`m`' );
define( 'SECURE_AUTH_KEY',  ' h>sr4O6HK68J&]A0p=(k,C^Zeqh/T_$NO(S4^ ;hh49&R0O1_kDUFy.;3:n>Ghz' );
define( 'LOGGED_IN_KEY',    'tBFz~t2r2{mu kN0t*W<:+ZDPhY{RkexM$`rQBFn#kP`)];8Ed1bNO[?vx~9] NM' );
define( 'NONCE_KEY',        '?T7bhsxIb,mJ3.B0j>Cg!ZxR4gQ@6D~L}7{Mo~(b<O4e,luYeR~<|$F1p]lY/0d!' );
define( 'AUTH_SALT',        'H63e$2C.IIVbV2C;_8[O_n#%uozqI4$p`ccJ!oXu@k{;4u;F](3w72g y 0$/gT(' );
define( 'SECURE_AUTH_SALT', 'jp(/BXl.,zpaG%*f^ui0P4P=lO7U.Ryr]Kb$MSTw3KgMb5E#N]31Lsx%xTLW`0/k' );
define( 'LOGGED_IN_SALT',   '21c-C4rs<VHIxE$Ozuv[|*U9J/*OL.8V6xhdky@}!]gclacYj)u,&p68fj4~Cbl1' );
define( 'NONCE_SALT',       '}Kz$-lq]B12-_.q1jvJ]se^L5ko<-!pCr@-by*RwE`T^MP[tC[T0^|(,H #%(6E&' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wpxi_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

define('FS_METHOD','direct');

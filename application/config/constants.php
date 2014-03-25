<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0777);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/

define('FOPEN_READ',							'rb');
define('FOPEN_READ_WRITE',						'r+b');
define('FOPEN_WRITE_CREATE_DESTRUCTIVE',		'wb'); // truncates existing file data, use with care
define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE',	'w+b'); // truncates existing file data, use with care
define('FOPEN_WRITE_CREATE',					'ab');
define('FOPEN_READ_WRITE_CREATE',				'a+b');
define('FOPEN_WRITE_CREATE_STRICT',				'xb');
define('FOPEN_READ_WRITE_CREATE_STRICT',		'x+b');


/* ����״̬ */
define('OS_UNCONFIRMED',            1); // δȷ��
define('OS_CONFIRMED',              2); // ��ȷ��
define('OS_PAID',                   3); // �Ѹ���
define('OS_CONFIRMED_PAID',         4); // ȷ�ϸ���
define('OS_CONFIRMED_ARRIVED_PAID', 5); // ȷ�ϻ����Ѹ���
define('OS_DELIVERED',              6); // �ѷ���
define('OS_CONFIRMED_RECEIVED',     7); // �ջ���ȷ��
define('OS_RECEIVED_PAID',          8); // �ջ�������
define('OS_FINISHED',               9); // �������
define('OS_CANCEL',                10); // ��ȡ��
define('OS_REFUND',                11); // ���˿�
define('OS_RETURNED',              12); // ���˻�



/* End of file constants.php */
/* Location: ./application/config/constants.php */
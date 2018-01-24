************************************************************************
*
* @project     <description of project>
* @module      <name of report>
* @description
*&
* @author      SEAL Systems AG, <name of author>
REPORT ZIMT_TSTEST.
*-----------------------------------------------------------------------
* Revision History
* Version | Date     | Who | Description
*---------+----------+-----+--------------------------------------------
*         |          |     |
* 1.0.0   |2014-07-13| <xx>| Created
*end********************************************************************

DATA:
      time_stampl TYPE timestampl,
      time_stamp TYPE timestamp,
      dat        TYPE d,
      dat1       TYPE d,
      mytime(14)     TYPE c,
      tim        TYPE t.

GET TIME STAMP FIELD time_stampl.
WRITE: 'TIMESTAMPL: '.
WRITE: time_stampl.
NEW-LINE.


GET TIME STAMP FIELD time_stamp.
WRITE: 'TIMESTAMP: '.
WRITE: time_stamp.
NEW-LINE.

WRITE: 'sy-datum: '.
WRITE: sy-datum.
NEW-LINE.

WRITE: 'sy-uzeit: '.
WRITE: sy-uzeit.
NEW-LINE.

WRITE: 'sy-datum-5: '.
dat = sy-datum.
dat1 = dat - 5.
WRITE: dat1.
NEW-LINE.

CONCATENATE sy-datum sy-uzeit INTO mytime.
WRITE: 'mytime: '.
WRITE: mytime.
NEW-LINE.

WRITE: 'Test CW.'.

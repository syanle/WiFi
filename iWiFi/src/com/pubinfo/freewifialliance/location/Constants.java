// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.pubinfo.freewifialliance.location;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.util.Log;
import java.io.File;

public class Constants
{

    private static final String ALARMLIST = "Alarm_List";
    public static final String ALARMLISTM = "@";
    public static final String ALARMLISTN = ":";
    private static final String ALARMMYID = "Alarm_my_Id";
    private static final String ALARMTEAMID = "Alarm_team_Id";
    public static final String ALARM_BROADCAST = "com.pubinfo.officeassistant.alarm_broadcast";
    private static final String APPENDIXID = "Appendix_Id";
    public static final int APPENDIXID_KEY = 0xf4240;
    public static final String BOUNDARY = "1234567890";
    public static final String FILEPATH = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getPath()))).append("/ework").toString();
    public static final int HANDLER_DOWNLOADTHUMBNAIL_FAIL = 990;
    public static final int HANDLER_DOWNLOADTHUMBNAIL_SUCCESS = 989;
    public static final int HANDLER_LOCATION_LNGLAT_SUCCESS = 993;
    public static final int HANDLER_LOCATION_START = 994;
    public static final int HANDLER_LOCATION_SUCCESS = 988;
    public static final int HANDLER_POSTIMAGE_FAIL = 992;
    public static final int HANDLER_POSTIMAGE_SUCCESS = 991;
    public static final int HANDLER_TIMEOUTHEART_RECALL = 995;
    public static final int HANDLER_UPDATE = 987;
    public static final int HANDLER_UPLOADFILE_FAIL = 997;
    public static final int HANDLER_UPLOADFILE_SUCCESS = 996;
    public static final String INTENT_KEY_ALAM_ID = "alam_id";
    public static final String INTENT_KEY_ALAM_MSG = "alam_msg";
    public static final String INTENT_KEY_APPENDIX_TITLE = "appendix_title";
    public static final String INTENT_KEY_FILEPATH = "file_path";
    public static final String INTENT_KEY_NOTIFICATION_FILEPATH = "notification_file_path";
    public static final String INTENT_KEY_UPDATE_EXPLAIN = "update_explain";
    public static final String INTENT_KEY_UPDATE_ISUPDATE = "update_isUpdate";
    public static final String INTENT_KEY_UPDATE_PRODUCT = "update_product";
    public static final String INTENT_KEY_UPDATE_URL = "update_url";
    public static final String INTENT_KEY_UPDATE_VERSION = "update_curVersion";
    public static final String MAILURL = "http://60.191.115.162:8080/einfo/";
    public static final int MYALARMSTARTID_KEY = 0x7a120;
    public static final String Preference_PointUpload_etime = "etime";
    public static final String Preference_PointUpload_flag = "flag";
    public static final String Preference_PointUpload_frequency = "frequency ";
    public static final String Preference_PointUpload_stime = "stime";
    public static final String Preference_Time_Date = "time_date";
    public static final String SERVICEROOT = "http://60.191.115.162:8080/einfo/";
    public static final int TEAMALARMSTARTID_KEY = 0;
    public static final int TIMEOUT_ATTENDDETAIL = 0;
    public static final int TIMEOUT_POINTUPLOAD = 1;
    public static int actionType0 = 0;
    public static String appIMSI = "";
    public static String appVersionName = "1.0";
    public static final String cameraPhoto = (new StringBuilder(String.valueOf(FILEPATH))).append("/tempphoto.jpg").toString();
    public static Bitmap personal_anchor;
    public static Bitmap personal_label;
    public static Bitmap public_anchor;
    public static Bitmap public_label;

    public Constants()
    {
    }

    public static String[] getStringArr(String s, String s1)
    {
        return s.split(s1);
    }

    public static int getTeamalarmId(Context context)
    {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("Alarm_team_Id", 1);
    }

    public static final void myLog(String s)
    {
        Log.e("Test", s);
    }

}

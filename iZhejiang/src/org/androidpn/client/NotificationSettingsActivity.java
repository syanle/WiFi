// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.androidpn.client;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.util.Log;

// Referenced classes of package org.androidpn.client:
//            LogUtil

public class NotificationSettingsActivity extends PreferenceActivity
{

    private static final String LOGTAG = LogUtil.makeLogTag(org/androidpn/client/NotificationSettingsActivity);

    public NotificationSettingsActivity()
    {
    }

    private PreferenceScreen createPreferenceHierarchy()
    {
        Log.d(LOGTAG, "createSettingsPreferenceScreen()...");
        Object obj = getPreferenceManager();
        ((PreferenceManager) (obj)).setSharedPreferencesName("client_preferences");
        ((PreferenceManager) (obj)).setSharedPreferencesMode(0);
        obj = ((PreferenceManager) (obj)).createPreferenceScreen(this);
        CheckBoxPreference checkboxpreference = new CheckBoxPreference(this);
        checkboxpreference.setKey("SETTINGS_NOTIFICATION_ENABLED");
        checkboxpreference.setTitle("Notifications Enabled");
        checkboxpreference.setSummaryOn("Receive push messages");
        checkboxpreference.setSummaryOff("Do not receive push messages");
        checkboxpreference.setDefaultValue(Boolean.TRUE);
        checkboxpreference.setOnPreferenceChangeListener(new android.preference.Preference.OnPreferenceChangeListener() {

            final NotificationSettingsActivity this$0;

            public boolean onPreferenceChange(Preference preference, Object obj1)
            {
                if (Boolean.valueOf(obj1.toString()).booleanValue())
                {
                    preference.setTitle("Notifications Enabled");
                } else
                {
                    preference.setTitle("Notifications Disabled");
                }
                return true;
            }

            
            {
                this$0 = NotificationSettingsActivity.this;
                super();
            }
        });
        CheckBoxPreference checkboxpreference1 = new CheckBoxPreference(this);
        checkboxpreference1.setKey("SETTINGS_SOUND_ENABLED");
        checkboxpreference1.setTitle("Sound");
        checkboxpreference1.setSummary("Play a sound for notifications");
        checkboxpreference1.setDefaultValue(Boolean.TRUE);
        CheckBoxPreference checkboxpreference2 = new CheckBoxPreference(this);
        checkboxpreference2.setKey("SETTINGS_VIBRATE_ENABLED");
        checkboxpreference2.setTitle("Vibrate");
        checkboxpreference2.setSummary("Vibrate the phone for notifications");
        checkboxpreference2.setDefaultValue(Boolean.TRUE);
        ((PreferenceScreen) (obj)).addPreference(checkboxpreference);
        ((PreferenceScreen) (obj)).addPreference(checkboxpreference1);
        ((PreferenceScreen) (obj)).addPreference(checkboxpreference2);
        return ((PreferenceScreen) (obj));
    }

    private void setPreferenceDependencies()
    {
        Preference preference = getPreferenceManager().findPreference("SETTINGS_SOUND_ENABLED");
        if (preference != null)
        {
            preference.setDependency("SETTINGS_NOTIFICATION_ENABLED");
        }
        preference = getPreferenceManager().findPreference("SETTINGS_VIBRATE_ENABLED");
        if (preference != null)
        {
            preference.setDependency("SETTINGS_NOTIFICATION_ENABLED");
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setPreferenceScreen(createPreferenceHierarchy());
        setPreferenceDependencies();
        bundle = (CheckBoxPreference)getPreferenceManager().findPreference("SETTINGS_NOTIFICATION_ENABLED");
        if (bundle.isChecked())
        {
            bundle.setTitle("Notifications Enabled");
            return;
        } else
        {
            bundle.setTitle("Notifications Disabled");
            return;
        }
    }

}

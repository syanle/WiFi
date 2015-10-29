.class public Lorg/androidpn/client/NotificationSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "NotificationSettingsActivity.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/androidpn/client/NotificationSettingsActivity;

    invoke-static {v0}, Lorg/androidpn/client/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 36
    sput-object v0, Lorg/androidpn/client/NotificationSettingsActivity;->LOGTAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 40
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    .line 58
    sget-object v5, Lorg/androidpn/client/NotificationSettingsActivity;->LOGTAG:Ljava/lang/String;

    const-string v6, "createSettingsPreferenceScreen()..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lorg/androidpn/client/NotificationSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 62
    .local v1, "preferenceManager":Landroid/preference/PreferenceManager;
    const-string v5, "client_preferences"

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 63
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 65
    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 67
    .local v2, "root":Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "notifyPref":Landroid/preference/CheckBoxPreference;
    const-string v5, "SETTINGS_NOTIFICATION_ENABLED"

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 69
    const-string v5, "Notifications Enabled"

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    const-string v5, "Receive push messages"

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 71
    const-string v5, "Do not receive push messages"

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 74
    new-instance v5, Lorg/androidpn/client/NotificationSettingsActivity$1;

    invoke-direct {v5, p0}, Lorg/androidpn/client/NotificationSettingsActivity$1;-><init>(Lorg/androidpn/client/NotificationSettingsActivity;)V

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-direct {v3, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 88
    .local v3, "soundPref":Landroid/preference/CheckBoxPreference;
    const-string v5, "SETTINGS_SOUND_ENABLED"

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 89
    const-string v5, "Sound"

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    const-string v5, "Play a sound for notifications"

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 93
    new-instance v4, Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 94
    .local v4, "vibratePref":Landroid/preference/CheckBoxPreference;
    const-string v5, "SETTINGS_VIBRATE_ENABLED"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 95
    const-string v5, "Vibrate"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    const-string v5, "Vibrate the phone for notifications"

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 100
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 101
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 104
    return-object v2
.end method

.method private setPreferenceDependencies()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/androidpn/client/NotificationSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 109
    const-string v3, "SETTINGS_SOUND_ENABLED"

    .line 108
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 110
    .local v0, "soundPref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 111
    const-string v2, "SETTINGS_NOTIFICATION_ENABLED"

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/androidpn/client/NotificationSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 114
    const-string v3, "SETTINGS_VIBRATE_ENABLED"

    .line 113
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 115
    .local v1, "vibratePref":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 116
    const-string v2, "SETTINGS_NOTIFICATION_ENABLED"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lorg/androidpn/client/NotificationSettingsActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/androidpn/client/NotificationSettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 46
    invoke-direct {p0}, Lorg/androidpn/client/NotificationSettingsActivity;->setPreferenceDependencies()V

    .line 48
    invoke-virtual {p0}, Lorg/androidpn/client/NotificationSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 49
    const-string v2, "SETTINGS_NOTIFICATION_ENABLED"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 48
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 50
    .local v0, "notifyPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "Notifications Enabled"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "Notifications Disabled"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

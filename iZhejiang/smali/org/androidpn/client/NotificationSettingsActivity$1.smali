.class Lorg/androidpn/client/NotificationSettingsActivity$1;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/androidpn/client/NotificationSettingsActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/androidpn/client/NotificationSettingsActivity;


# direct methods
.method constructor <init>(Lorg/androidpn/client/NotificationSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/androidpn/client/NotificationSettingsActivity$1;->this$0:Lorg/androidpn/client/NotificationSettingsActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 78
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "Notifications Enabled"

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 81
    :cond_0
    const-string v1, "Notifications Disabled"

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

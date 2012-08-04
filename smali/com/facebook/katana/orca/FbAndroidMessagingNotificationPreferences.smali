.class public Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;
.super Ljava/lang/Object;
.source "FbAndroidMessagingNotificationPreferences.java"

# interfaces
.implements Lcom/facebook/orca/notify/MessagingNotificationPreferences;


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;->a:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "vibrate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;->d()Landroid/net/Uri;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "use_led"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/katana/orca/FbAndroidMessagingNotificationPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, "ringtone"

    sget-object v2, Lcom/facebook/katana/SettingsActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f02025d

    return v0
.end method

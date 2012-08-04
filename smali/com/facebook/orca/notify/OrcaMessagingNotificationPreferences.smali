.class public Lcom/facebook/orca/notify/OrcaMessagingNotificationPreferences;
.super Ljava/lang/Object;
.source "OrcaMessagingNotificationPreferences.java"

# interfaces
.implements Lcom/facebook/orca/notify/MessagingNotificationPreferences;


# instance fields
.field private final a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaMessagingNotificationPreferences;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->r:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaMessagingNotificationPreferences;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->q:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaMessagingNotificationPreferences;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->s:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Z

    move-result v0

    return v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/notify/OrcaMessagingNotificationPreferences;->a:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->t:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 53
    sget v0, Lcom/facebook/orca/R$drawable;->orca_notification_icon_ics:I

    .line 57
    :goto_0
    return v0

    .line 54
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 55
    sget v0, Lcom/facebook/orca/R$drawable;->orca_notification_icon_gingerbread:I

    goto :goto_0

    .line 57
    :cond_1
    sget v0, Lcom/facebook/orca/R$drawable;->orca_notification_icon_froyo:I

    goto :goto_0
.end method

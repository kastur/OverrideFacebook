.class public final Lcom/facebook/katana/util/GrowthUtils;
.super Ljava/lang/Object;
.source "GrowthUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/findfriends/StepIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const-string v1, "is_part_of_nux"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public static a(Landroid/app/Activity;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/findfriends/FindFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 179
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .line 181
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/activity/findfriends/LegalDisclaimerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 183
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const-string v0, "phoneNumberDialogShown"

    invoke-static {p0, v0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    const-string v0, "phoneNumberDialogShown"

    invoke-static {p0, v0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    const-string v1, "android_ci_alert_enabled"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "findFriendsDialogShown"

    invoke-static {p0, v1}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    const-string v0, "findFriendsDialogShown"

    invoke-static {p0, v0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 94
    const-string v0, "findFriendsConsentApproved"

    invoke-static {p0, v0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 103
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 104
    if-eqz v0, :cond_0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "android_ci_kddi_intro_enabled"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    const-string v0, "findFriendsLegalBarShown"

    invoke-static {p0, v0}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 153
    const-string v1, "android_ci_legal_bar"

    invoke-static {p0, v1}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "findFriendsLegalBarShown"

    invoke-static {p0, v1}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-static {p0}, Lcom/facebook/katana/util/GrowthUtils;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    const-string v2, "android_ci_legal_screen"

    invoke-static {p0, v2}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 129
    goto :goto_0

    .line 133
    :cond_2
    const-string v2, "findFriendsConsentApproved"

    invoke-static {p0, v2}, Lcom/facebook/katana/util/GrowthUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.class public Lcom/facebook/orca/intents/IntentHandler;
.super Lcom/facebook/orca/activity/FbFragmentActivity;
.source "IntentHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 35
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 36
    const-class v5, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    .line 38
    const-string v5, "smsto"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string v2, "user_key"

    new-instance v4, Lcom/facebook/orca/users/UserKey;

    sget-object v5, Lcom/facebook/orca/users/User$Type;->PHONE_NUMBER:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/intents/IntentHandler;->finish()V

    .line 56
    return-void

    .line 43
    :cond_1
    const-string v0, "thread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 44
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string v2, "thread_id"

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v0, "threads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v0, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/facebook/orca/intents/CanonicalThreadHandler;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v2, "user_key"

    new-instance v3, Lcom/facebook/orca/users/UserKey;

    sget-object v5, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v5, v0}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v1}, Lcom/facebook/orca/intents/IntentHandler;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

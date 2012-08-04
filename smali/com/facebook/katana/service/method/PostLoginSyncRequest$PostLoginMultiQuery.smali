.class final Lcom/facebook/katana/service/method/PostLoginSyncRequest$PostLoginMultiQuery;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "PostLoginSyncRequest.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {p1}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$PostLoginMultiQuery;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 134
    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 163
    invoke-static {p0, v0}, Lcom/facebook/katana/features/Gatekeeper;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;)Lcom/facebook/katana/service/method/FqlGetGatekeeperSettings;

    move-result-object v1

    .line 166
    const-string v2, "composer_tour_completed"

    invoke-static {p0, v0, v2}, Lcom/facebook/katana/features/composer/ComposerUserSettings;->a(Landroid/content/Context;Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlGetUserServerSettings;

    move-result-object v0

    .line 170
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 173
    const-string v3, "gkSync"

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "userSetting"

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-object v2
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-static {}, Lcom/facebook/katana/service/method/PostLoginSyncRequest;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 141
    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/PostLoginSyncRequest$PostLoginMultiQuery;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/ApiMethodCallback;

    .line 145
    const-string v2, "gkSync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 147
    const-string v1, "extended_type"

    const/16 v2, 0x192

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_GATEKEEPERS:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {p1, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 154
    invoke-interface/range {v0 .. v7}, Lcom/facebook/katana/service/method/ApiMethodCallback;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    move-object v3, p3

    .line 151
    goto :goto_1

    .line 157
    :cond_1
    return-void
.end method

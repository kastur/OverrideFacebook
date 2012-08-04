.class public Lcom/facebook/katana/service/method/FqlUsersGetBriefInfo;
.super Lcom/facebook/katana/service/method/FqlGetUsersProfile;
.source "FqlUsersGetBriefInfo.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlUsersGetBriefInfo;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSessionListener;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

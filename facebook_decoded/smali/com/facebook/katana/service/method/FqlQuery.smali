.class public Lcom/facebook/katana/service/method/FqlQuery;
.super Lcom/facebook/katana/service/method/BaseFqlQuery;
.source "FqlQuery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    const-string v3, "GET"

    const-string v4, "fql.query"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/BaseFqlQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 34
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlQuery;->e:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlQuery;->e:Ljava/util/Map;

    const-string v1, "query"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    if-eqz p3, :cond_0

    .line 37
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlQuery;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlQuery;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlQuery;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlQuery;->e:Ljava/util/Map;

    const-string v1, "query"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/FqlQuery;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "([=\'(, ])[0-9]+_?[0-9]*"

    const-string v2, "$1NULL"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

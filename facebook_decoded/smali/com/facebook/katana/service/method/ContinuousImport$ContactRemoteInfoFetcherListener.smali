.class public Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ContinuousImport.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/ContinuousImport;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/service/method/ContinuousImport;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContactUser;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/facebook/katana/service/method/ContinuousImport;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Friends are ready"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-static {v0, p1}, Lcom/facebook/katana/service/method/ContinuousImport;->a(Lcom/facebook/katana/service/method/ContinuousImport;Ljava/util/List;)Ljava/util/List;

    .line 457
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    if-nez p4, :cond_0

    .line 459
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-static {v1}, Lcom/facebook/katana/service/method/ContinuousImport;->b(Lcom/facebook/katana/service/method/ContinuousImport;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/ContinuousImport;->a(Ljava/util/Collection;)V

    .line 460
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-static {v1}, Lcom/facebook/katana/service/method/ContinuousImport;->c(Lcom/facebook/katana/service/method/ContinuousImport;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/method/ContinuousImport;->b(Ljava/util/Collection;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/ContinuousImport;->j()V

    .line 463
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/method/ContinuousImport;->c(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 464
    return-void
.end method

.method public final c(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {}, Lcom/facebook/katana/service/method/ContinuousImport;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invites are ready"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactRemoteInfoFetcherListener;->a:Lcom/facebook/katana/service/method/ContinuousImport;

    invoke-static {v0, p1}, Lcom/facebook/katana/service/method/ContinuousImport;->a(Lcom/facebook/katana/service/method/ContinuousImport;Ljava/util/Map;)Ljava/util/Map;

    .line 448
    return-void
.end method

.class Lcom/facebook/katana/service/method/MailboxSync$1$1;
.super Lcom/facebook/katana/service/method/BaseApiMethodListener;
.source "MailboxSync.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/MailboxSync$1;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/method/MailboxSync$1;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/katana/service/method/MailboxSync$1$1;->a:Lcom/facebook/katana/service/method/MailboxSync$1;

    invoke-direct {p0}, Lcom/facebook/katana/service/method/BaseApiMethodListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1$1;->a:Lcom/facebook/katana/service/method/MailboxSync$1;

    iget-object v0, v0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    iget-object v0, v0, Lcom/facebook/katana/service/method/MailboxSync;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync$1$1;->a:Lcom/facebook/katana/service/method/MailboxSync$1;

    iget-object v1, v1, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 168
    return-void
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    check-cast p1, Lcom/facebook/katana/service/method/FqlGetProfile;

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/FqlGetProfile;->h()Ljava/util/Map;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 154
    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync$1$1;->a:Lcom/facebook/katana/service/method/MailboxSync$1;

    invoke-static {v1}, Lcom/facebook/katana/service/method/MailboxSync$1;->a(Lcom/facebook/katana/service/method/MailboxSync$1;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync$1$1;->a:Lcom/facebook/katana/service/method/MailboxSync$1;

    iget-object v1, v1, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    iget-object v2, p0, Lcom/facebook/katana/service/method/MailboxSync$1$1;->a:Lcom/facebook/katana/service/method/MailboxSync$1;

    invoke-static {v2}, Lcom/facebook/katana/service/method/MailboxSync$1;->b(Lcom/facebook/katana/service/method/MailboxSync$1;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/method/MailboxSync$1$1;->a:Lcom/facebook/katana/service/method/MailboxSync$1;

    invoke-static {v3}, Lcom/facebook/katana/service/method/MailboxSync$1;->a(Lcom/facebook/katana/service/method/MailboxSync$1;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/facebook/katana/service/method/MailboxSync;->a(Lcom/facebook/katana/service/method/MailboxSync;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "MailboxSync"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to download thread participants: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

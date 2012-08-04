.class Lcom/facebook/katana/service/method/MailboxSync$1;
.super Lcom/facebook/katana/service/method/BaseApiMethodListener;
.source "MailboxSync.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/service/method/MailboxSync;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/method/MailboxSync;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    invoke-direct {p0}, Lcom/facebook/katana/service/method/BaseApiMethodListener;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/MailboxSync$1;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/service/method/MailboxSync$1;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->c:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 144
    new-instance v4, Lcom/facebook/katana/service/method/MailboxSync$1$1;

    invoke-direct {v4, p0}, Lcom/facebook/katana/service/method/MailboxSync$1$1;-><init>(Lcom/facebook/katana/service/method/MailboxSync$1;)V

    .line 171
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 172
    const-string v0, "ApiMethod.secret"

    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    invoke-virtual {v1}, Lcom/facebook/katana/service/method/MailboxSync;->l()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "ApiMethod.secret"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 178
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 179
    const/4 v3, 0x0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetProfile;

    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    iget-object v1, v1, Lcom/facebook/katana/service/method/MailboxSync;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    invoke-static {v3}, Lcom/facebook/katana/service/method/MailboxSync;->a(Lcom/facebook/katana/service/method/MailboxSync;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetProfile;->a()V

    .line 188
    :goto_1
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    iget-object v0, v0, Lcom/facebook/katana/service/method/MailboxSync;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    check-cast p1, Lcom/facebook/katana/service/method/MailboxGetThreads;

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/MailboxGetThreads;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->b:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 133
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->a:Lcom/facebook/katana/service/method/MailboxSync;

    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->b:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->d:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/method/MailboxSync;->a(Lcom/facebook/katana/service/method/MailboxSync;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/MailboxSync$1;->c:Ljava/util/Collection;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "MailboxSync"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to download mailbox threads: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

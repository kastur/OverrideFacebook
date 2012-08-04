.class Lcom/facebook/orca/cache/SendMessageManager$3;
.super Ljava/lang/Object;
.source "SendMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/facebook/orca/cache/SendMessageManager;


# direct methods
.method constructor <init>(Lcom/facebook/orca/cache/SendMessageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->c:Lcom/facebook/orca/cache/SendMessageManager;

    iput-object p2, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->c:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-static {v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/cache/SendMessageManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->c:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-static {v0}, Lcom/facebook/orca/cache/SendMessageManager;->b(Lcom/facebook/orca/cache/SendMessageManager;)Lcom/facebook/orca/cache/ThreadsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/ThreadsCache;->b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v0

    .line 361
    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 363
    :goto_1
    new-instance v1, Lcom/facebook/orca/cache/SendMessageManager$3$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/cache/SendMessageManager$3$1;-><init>(Lcom/facebook/orca/cache/SendMessageManager$3;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 374
    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v1

    const/16 v2, 0x385

    if-ne v1, v2, :cond_3

    .line 377
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->c:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-static {v0}, Lcom/facebook/orca/cache/SendMessageManager;->c(Lcom/facebook/orca/cache/SendMessageManager;)Lcom/facebook/orca/notify/OrcaNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/notify/OrcaNotificationManager;->a(Ljava/lang/String;)V

    .line 382
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->c:Lcom/facebook/orca/cache/SendMessageManager;

    invoke-static {v0}, Lcom/facebook/orca/cache/SendMessageManager;->a(Lcom/facebook/orca/cache/SendMessageManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_1

    .line 378
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->c:Lcom/facebook/orca/cache/SendMessageManager;

    iget-object v1, p0, Lcom/facebook/orca/cache/SendMessageManager$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/SendMessageManager;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

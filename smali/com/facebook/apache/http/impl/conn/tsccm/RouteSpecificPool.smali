.class public Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


# annotations
.annotation build Lcom/facebook/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final b:Lcom/facebook/apache/commons/logging/Log;

.field private c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

.field private d:Lcom/facebook/apache/http/conn/params/ConnPerRoute;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>(Lcom/facebook/apache/http/conn/routing/HttpRoute;Lcom/facebook/apache/http/conn/params/ConnPerRoute;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/apache/commons/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/facebook/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->b:Lcom/facebook/apache/commons/logging/Log;

    .line 104
    iput-object p1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    .line 105
    iput-object p2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->d:Lcom/facebook/apache/http/conn/params/ConnPerRoute;

    .line 106
    invoke-interface {p2, p1}, Lcom/facebook/apache/http/conn/params/ConnPerRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)I

    move-result v0

    iput v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a:I

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 110
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/apache/http/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 4
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 176
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 178
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/facebook/apache/http/util/LangUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 195
    :goto_0
    return-object v0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->d()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 186
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->b()V

    .line 187
    invoke-virtual {v0}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->c()Lcom/facebook/apache/http/conn/OperatedClientConnection;

    move-result-object v1

    .line 189
    :try_start_0
    invoke-interface {v1}, Lcom/facebook/apache/http/conn/OperatedClientConnection;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->b:Lcom/facebook/apache/commons/logging/Log;

    const-string v3, "I/O error closing connection"

    invoke-interface {v2, v3, v1}, Lcom/facebook/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3
    .parameter

    .prologue
    .line 207
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    if-gtz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No entry created for this pool. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No entry allocated from this pool. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public final a(Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 2
    .parameter

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Waiting thread must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->a:I

    return v0
.end method

.method public final b(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)V
    .locals 3
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->d()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry not planned for this pool.\npool: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nplan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;->d()Lcom/facebook/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 237
    return-void
.end method

.method public final b(Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/facebook/apache/http/impl/conn/tsccm/BasicPoolEntry;)Z
    .locals 2
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    iget v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 255
    :cond_0
    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->d:Lcom/facebook/apache/http/conn/params/ConnPerRoute;

    iget-object v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->c:Lcom/facebook/apache/http/conn/routing/HttpRoute;

    invoke-interface {v0, v1}, Lcom/facebook/apache/http/conn/params/ConnPerRoute;->a(Lcom/facebook/apache/http/conn/routing/HttpRoute;)I

    move-result v0

    iget v1, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    if-gtz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no entry that could be dropped."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->g:I

    .line 271
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/apache/http/impl/conn/tsccm/RouteSpecificPool;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/impl/conn/tsccm/WaitingThread;

    return-object v0
.end method

.class Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;
.super Ljava/lang/Object;
.source "FacebookStreamContainer.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;",
            "Lcom/facebook/katana/model/FacebookPost;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a:Ljava/util/Map;

    .line 247
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->b:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/facebook/katana/model/FacebookPost;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;
    .locals 3
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPost;->postId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->c(Ljava/lang/String;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    move-result-object v0

    .line 268
    iget-wide v1, p0, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    iput-wide v1, v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->c:J

    .line 270
    sget-object v1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-object v0
.end method

.method static a(Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;)Lcom/facebook/katana/model/FacebookPost;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->b:Z

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    .line 255
    sget-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPost;
    .locals 2
    .parameter

    .prologue
    .line 260
    invoke-static {p0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->c(Ljava/lang/String;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    move-result-object v0

    .line 262
    sget-object v1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPost;

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;
    .locals 2
    .parameter

    .prologue
    .line 277
    invoke-static {p0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->c(Ljava/lang/String;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    move-result-object v0

    .line 279
    sget-object v1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-object v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;
    .locals 4
    .parameter

    .prologue
    .line 287
    const-class v2, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;-><init>(Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 292
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    if-nez v0, :cond_1

    .line 297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->b:Z

    .line 298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 300
    sget-object v3, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostCache;->b:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 303
    :cond_1
    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 304
    iget-boolean v1, v0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->b:Z

    invoke-static {v1}, Lcom/facebook/katana/util/Assert;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit v2

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

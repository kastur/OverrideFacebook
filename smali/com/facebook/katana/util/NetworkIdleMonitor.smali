.class public Lcom/facebook/katana/util/NetworkIdleMonitor;
.super Ljava/lang/Object;
.source "NetworkIdleMonitor.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/Integer;

.field private static final d:Ljava/lang/Integer;

.field private static final e:Ljava/lang/Integer;

.field private static f:Landroid/content/Context;

.field private static g:Z

.field private static h:Landroid/os/Handler;

.field private static i:Landroid/os/Handler;

.field private static j:Landroid/os/Handler;

.field private static k:Landroid/os/Handler;

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4e20

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->a:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->c:Ljava/lang/Integer;

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->d:Ljava/lang/Integer;

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->e:Ljava/lang/Integer;

    .line 47
    sput-boolean v2, Lcom/facebook/katana/util/NetworkIdleMonitor;->g:Z

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->h:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->i:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->j:Landroid/os/Handler;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->k:Landroid/os/Handler;

    .line 52
    sput-boolean v2, Lcom/facebook/katana/util/NetworkIdleMonitor;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkIdleListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 221
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->f:Landroid/content/Context;

    .line 224
    :cond_0
    sget-object v1, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    monitor-enter v1

    .line 225
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->h:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/util/NetworkIdleMonitor$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/util/NetworkIdleMonitor$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->g()V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->i:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/util/NetworkIdleMonitor$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/util/NetworkIdleMonitor$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->f()V

    return-void
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->h()V

    return-void
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->j()V

    return-void
.end method

.method private static f()V
    .locals 4

    .prologue
    .line 126
    sget-boolean v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->g:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->g:Z

    .line 130
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->j:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/util/NetworkIdleMonitor$3;

    invoke-direct {v1}, Lcom/facebook/katana/util/NetworkIdleMonitor$3;-><init>()V

    sget-object v2, Lcom/facebook/katana/util/NetworkIdleMonitor;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static g()V
    .locals 4

    .prologue
    .line 143
    sget-boolean v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->l:Z

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->l:Z

    .line 147
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->k:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/katana/util/NetworkIdleMonitor$4;

    invoke-direct {v1}, Lcom/facebook/katana/util/NetworkIdleMonitor$4;-><init>()V

    sget-object v2, Lcom/facebook/katana/util/NetworkIdleMonitor;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static h()V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->k()V

    .line 164
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->g:Z

    .line 165
    return-void
.end method

.method private static i()Z
    .locals 2

    .prologue
    .line 172
    sget-object v1, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static j()V
    .locals 10

    .prologue
    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 187
    sget-object v4, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    monitor-enter v4

    .line 188
    :try_start_0
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    sget-object v1, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;

    .line 190
    iget-wide v6, v1, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkRequest;->a:J

    sub-long v6, v2, v6

    sget-object v1, Lcom/facebook/katana/util/NetworkIdleMonitor;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 191
    invoke-static {v0}, Lcom/facebook/katana/util/NetworkIdleMonitor;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 196
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->f()V

    .line 201
    :goto_1
    return-void

    .line 198
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->l:Z

    .line 199
    invoke-static {}, Lcom/facebook/katana/util/NetworkIdleMonitor;->g()V

    goto :goto_1
.end method

.method private static k()V
    .locals 3

    .prologue
    .line 208
    sget-object v0, Lcom/facebook/katana/util/NetworkIdleMonitor;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkIdleListener;

    .line 209
    sget-object v2, Lcom/facebook/katana/util/NetworkIdleMonitor;->f:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/facebook/katana/util/NetworkIdleMonitor$NetworkIdleListener;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

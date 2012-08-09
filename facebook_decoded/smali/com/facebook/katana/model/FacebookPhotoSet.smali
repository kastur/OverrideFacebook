.class public Lcom/facebook/katana/model/FacebookPhotoSet;
.super Ljava/lang/Object;
.source "FacebookPhotoSet.java"


# static fields
.field private static c:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPhotoSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhotoSet;->b:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/facebook/katana/model/FacebookPhotoSet;->a:Ljava/util/List;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookPhotoSet;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/facebook/katana/model/FacebookPhotoSet;->c()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoSet;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/facebook/katana/model/FacebookPhotoSet;->c()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_MEMORY:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ManagedDataStore$ClearType;)V

    .line 50
    return-void
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "t."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPhotoSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-class v1, Lcom/facebook/katana/model/FacebookPhotoSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/model/FacebookPhotoSet;->c:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    new-instance v2, Lcom/facebook/katana/model/PhotoSetDataStoreClient;

    invoke-direct {v2}, Lcom/facebook/katana/model/PhotoSetDataStoreClient;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    sput-object v0, Lcom/facebook/katana/model/FacebookPhotoSet;->c:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 96
    :cond_0
    sget-object v0, Lcom/facebook/katana/model/FacebookPhotoSet;->c:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(J)Lcom/facebook/katana/model/FacebookPhotoSet;
    .locals 4
    .parameter

    .prologue
    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/facebook/katana/model/FacebookPhotoSet;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dummy."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/model/FacebookPhotoSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoSet;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoSet;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoSet;->b:Ljava/lang/String;

    const-string v1, "a."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

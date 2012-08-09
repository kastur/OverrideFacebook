.class Lcom/facebook/katana/util/WebPageCache$CacheStore;
.super Lcom/facebook/katana/binding/SimpleManagedDataStore;
.source "WebPageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/katana/binding/SimpleManagedDataStore",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/facebook/katana/util/WebPageCache$WebPageCacheClient;

    invoke-direct {v0, p2, p4}, Lcom/facebook/katana/util/WebPageCache$WebPageCacheClient;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    .line 142
    iput p3, p0, Lcom/facebook/katana/util/WebPageCache$CacheStore;->b:I

    .line 143
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/WebPageCache$CacheStore;->a(Landroid/content/Context;)V

    .line 144
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    sget-object v0, Lcom/facebook/katana/binding/ManagedDataStore$ClearType;->CLEAR_MEMORY:Lcom/facebook/katana/binding/ManagedDataStore$ClearType;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/katana/util/WebPageCache$CacheStore;->a(Landroid/content/Context;Lcom/facebook/katana/binding/ManagedDataStore$ClearType;)V

    .line 156
    return-void
.end method

.method private a(Landroid/content/Context;ZLjava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-super/range {p0 .. p6}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/ManagedDataStore$InternalStore",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lorg/codehaus/jackson/map/util/LRUMap;

    const/4 v1, 0x1

    iget v2, p0, Lcom/facebook/katana/util/WebPageCache$CacheStore;->b:I

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/util/LRUMap;-><init>(II)V

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    move-object v3, p3

    check-cast v3, Ljava/lang/Void;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v6, p6

    check-cast v6, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/util/WebPageCache$CacheStore;->a(Landroid/content/Context;ZLjava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

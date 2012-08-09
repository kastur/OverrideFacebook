.class public Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;
.super Ljava/lang/Object;
.source "SimpleManagedDataStore.java"

# interfaces
.implements Lcom/facebook/katana/binding/ManagedDataStore$Client;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/ManagedDataStore$Client",
        "<",
        "Ljava/lang/Void;",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    .line 72
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    invoke-interface {v0, p1, p2}, Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;->deserialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    iget-object v1, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->b:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;->initiateNetworkRequest(Landroid/content/Context;Ljava/lang/Object;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    invoke-interface {v0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;->getDiskKeySuffix(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    invoke-interface {v0, p1, p2}, Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;->staleDataAcceptable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    invoke-interface {v0, p1, p2}, Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;->getCacheTtl(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    invoke-interface {v0, p1, p2}, Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;->getPersistentStoreTtl(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p3}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;

    invoke-interface {v0}, Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;->getDiskKeyPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/katana/binding/NetworkRequestCallback;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p3}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->b:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    .line 77
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p2, p3}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p2, p3}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final synthetic c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p2, p3}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

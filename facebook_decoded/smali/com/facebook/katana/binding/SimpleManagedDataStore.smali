.class public Lcom/facebook/katana/binding/SimpleManagedDataStore;
.super Lcom/facebook/katana/binding/ManagedDataStore;
.source "SimpleManagedDataStore.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/katana/binding/ManagedDataStore",
        "<",
        "Ljava/lang/Void;",
        "TK;TV;>;",
        "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;

    invoke-direct {v0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    invoke-direct {p0, v0}, Lcom/facebook/katana/binding/ManagedDataStore;-><init>(Lcom/facebook/katana/binding/ManagedDataStore$Client;)V

    .line 155
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    check-cast v0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a(Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore$Client",
            "<TK;TV;>;",
            "Lcom/facebook/katana/binding/ManagedDataStore$Mode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;

    invoke-direct {v0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/katana/binding/ManagedDataStore;-><init>(Lcom/facebook/katana/binding/ManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a:Lcom/facebook/katana/binding/ManagedDataStore$Client;

    check-cast v0, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/SimpleManagedDataStore$ShimClient;->a(Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 165
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TK;)TV;"
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZTK;",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 175
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-super/range {v0 .. v6}, Lcom/facebook/katana/binding/ManagedDataStore;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TK;)V"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Lcom/facebook/katana/binding/ManagedDataStore;->b(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

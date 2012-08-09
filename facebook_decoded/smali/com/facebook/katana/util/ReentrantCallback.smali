.class public Lcom/facebook/katana/util/ReentrantCallback;
.super Ljava/lang/Object;
.source "ReentrantCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CallbackClass:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TCallbackClass;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/ReentrantCallback;->a:Ljava/util/Set;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TCallbackClass;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/facebook/katana/util/ReentrantCallback;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackClass;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/util/ReentrantCallback;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/util/ReentrantCallback;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackClass;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/katana/util/ReentrantCallback;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/katana/util/ReentrantCallback;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 74
    return-void
.end method

.class Lcom/facebook/orca/inject/WeakActiveStack$Node;
.super Ljava/lang/Object;
.source "WeakActiveStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/facebook/orca/inject/WeakActiveStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/inject/WeakActiveStack$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Lcom/facebook/orca/inject/WeakActiveStack$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/inject/WeakActiveStack$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/orca/inject/WeakActiveStack$Node;->c:Ljava/lang/ref/WeakReference;

    .line 46
    return-void
.end method

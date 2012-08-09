.class Lcom/facebook/orca/inject/ThreadLocalProvider$2;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/orca/inject/ThreadLocalProvider",
        "<TT;>.Holder;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/inject/ThreadLocalProvider;


# direct methods
.method constructor <init>(Lcom/facebook/orca/inject/ThreadLocalProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/facebook/orca/inject/ThreadLocalProvider$2;->a:Lcom/facebook/orca/inject/ThreadLocalProvider;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private a()Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/orca/inject/ThreadLocalProvider",
            "<TT;>.Holder;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;

    iget-object v1, p0, Lcom/facebook/orca/inject/ThreadLocalProvider$2;->a:Lcom/facebook/orca/inject/ThreadLocalProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;-><init>(Lcom/facebook/orca/inject/ThreadLocalProvider;B)V

    return-object v0
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/inject/ThreadLocalProvider$2;->a()Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;

    move-result-object v0

    return-object v0
.end method

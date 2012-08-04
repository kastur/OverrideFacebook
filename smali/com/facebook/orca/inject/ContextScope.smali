.class public Lcom/facebook/orca/inject/ContextScope;
.super Ljava/lang/Object;
.source "ContextScope.java"


# instance fields
.field private a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/orca/inject/WeakActiveStack",
            "<",
            "Landroid/content/Context;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/inject/ContextScope;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextScope;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextScope;->a:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/facebook/orca/inject/WeakActiveStack;

    invoke-direct {v1}, Lcom/facebook/orca/inject/WeakActiveStack;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/inject/ContextScope;->c()V

    .line 28
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextScope;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/WeakActiveStack;

    invoke-virtual {v0}, Lcom/facebook/orca/inject/WeakActiveStack;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/inject/ContextScope;->c()V

    .line 18
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextScope;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/WeakActiveStack;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/WeakActiveStack;->a(Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/inject/ContextScope;->c()V

    .line 23
    iget-object v0, p0, Lcom/facebook/orca/inject/ContextScope;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/WeakActiveStack;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/inject/WeakActiveStack;->b(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

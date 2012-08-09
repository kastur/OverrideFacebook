.class public Lcom/facebook/orca/inject/ThreadLocalProvider;
.super Ljava/lang/Object;
.source "ThreadLocalProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/orca/inject/ThreadLocalProvider",
            "<TT;>.Holder;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/facebook/orca/inject/ThreadLocalProvider$1;

    invoke-direct {v0}, Lcom/facebook/orca/inject/ThreadLocalProvider$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/inject/ThreadLocalProvider;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/facebook/orca/inject/ThreadLocalProvider$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/inject/ThreadLocalProvider$2;-><init>(Lcom/facebook/orca/inject/ThreadLocalProvider;)V

    iput-object v0, p0, Lcom/facebook/orca/inject/ThreadLocalProvider;->c:Ljava/lang/ThreadLocal;

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/inject/ThreadLocalProvider;->b:Ljavax/inject/Provider;

    .line 37
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/orca/inject/ThreadLocalProvider;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/inject/ThreadLocalProvider;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;

    .line 42
    invoke-static {v0}, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->a(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/facebook/orca/inject/ThreadLocalProvider;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 44
    sget-object v2, Lcom/facebook/orca/inject/ThreadLocalProvider;->a:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/inject/ThreadLocalProvider;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->a(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->a(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    sget-object v2, Lcom/facebook/orca/inject/ThreadLocalProvider;->a:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->b(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v2, Lcom/facebook/orca/inject/ThreadLocalProvider;->a:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

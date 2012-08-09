.class public Lcom/facebook/orca/app/FbAppInitializer;
.super Ljava/lang/Object;
.source "FbAppInitializer.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/inject/ContextScope;

.field private final c:Lcom/facebook/orca/common/util/AndroidThreadUtil;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Lcom/facebook/orca/common/util/AndroidThreadUtil;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/orca/inject/ContextScope;",
            "Lcom/facebook/orca/common/util/AndroidThreadUtil;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/app/INeedInit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/facebook/orca/app/FbAppInitializer;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/facebook/orca/app/FbAppInitializer;->b:Lcom/facebook/orca/inject/ContextScope;

    .line 53
    iput-object p3, p0, Lcom/facebook/orca/app/FbAppInitializer;->c:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    .line 54
    iput-object p4, p0, Lcom/facebook/orca/app/FbAppInitializer;->d:Ljava/util/Set;

    .line 55
    iput-object p5, p0, Lcom/facebook/orca/app/FbAppInitializer;->e:Ljava/util/Set;

    .line 56
    iput-object p6, p0, Lcom/facebook/orca/app/FbAppInitializer;->f:Ljava/util/Set;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/FbAppInitializer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/inject/ContextScope;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->b:Lcom/facebook/orca/inject/ContextScope;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/INeedInit;

    .line 87
    invoke-interface {v0}, Lcom/facebook/orca/app/INeedInit;->b()V

    goto :goto_0

    .line 89
    :cond_0
    const-string v0, "orca:FbAppInitializer"

    const-string v1, "High priority worker thread app initialization complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/INeedInit;

    .line 94
    invoke-interface {v0}, Lcom/facebook/orca/app/INeedInit;->b()V

    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "orca:FbAppInitializer"

    const-string v1, "Low priority main thread app initialization complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/app/FbAppInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/app/FbAppInitializer;->b()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/INeedInit;

    .line 101
    invoke-interface {v0}, Lcom/facebook/orca/app/INeedInit;->b()V

    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "orca:FbAppInitializer"

    const-string v1, "Low priority worker thread app initialization complete"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method static synthetic d(Lcom/facebook/orca/app/FbAppInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/app/FbAppInitializer;->c()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/common/util/AndroidThreadUtil;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->c:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/orca/app/FbAppInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/app/FbAppInitializer;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer;->c:Lcom/facebook/orca/common/util/AndroidThreadUtil;

    const-string v1, "FbAppInit"

    new-instance v2, Lcom/facebook/orca/app/FbAppInitializer$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/app/FbAppInitializer$1;-><init>(Lcom/facebook/orca/app/FbAppInitializer;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.class Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "MessagesModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/app/FbAppInitializer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/MessagesModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/MessagesModule;)V
    .locals 0
    .parameter

    .prologue
    .line 2593
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/MessagesModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2593
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/app/FbAppInitializer;
    .locals 8

    .prologue
    .line 2597
    new-instance v0, Lcom/facebook/orca/app/FbAppInitializer;

    iget-object v1, p0, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->a:Lcom/facebook/orca/app/MessagesModule;

    invoke-static {v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/inject/ContextScope;

    const-class v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/util/AndroidThreadUtil;

    new-instance v4, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider$1;

    invoke-direct {v4, p0}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider$1;-><init>(Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;)V

    const-class v5, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v4, v5}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    new-instance v5, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider$2;

    invoke-direct {v5, p0}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider$2;-><init>(Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;)V

    const-class v6, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnUiThread;

    invoke-static {v5, v6}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    new-instance v6, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider$3;

    invoke-direct {v6, p0}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider$3;-><init>(Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;)V

    const-class v7, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnBackgroundThread;

    invoke-static {v6, v7}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->b(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/app/FbAppInitializer;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;Lcom/facebook/orca/common/util/AndroidThreadUtil;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2593
    invoke-direct {p0}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;->b()Lcom/facebook/orca/app/FbAppInitializer;

    move-result-object v0

    return-object v0
.end method

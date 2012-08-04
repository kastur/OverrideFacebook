.class Lcom/facebook/orca/app/FbAppInitializer$1;
.super Ljava/lang/Object;
.source "FbAppInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/FbAppInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/FbAppInitializer;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->b(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v1}, Lcom/facebook/orca/app/FbAppInitializer;->a(Lcom/facebook/orca/app/FbAppInitializer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->c(Lcom/facebook/orca/app/FbAppInitializer;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->e(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/common/util/AndroidThreadUtil;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/app/FbAppInitializer$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/FbAppInitializer$1$1;-><init>(Lcom/facebook/orca/app/FbAppInitializer$1;)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/common/util/AndroidThreadUtil;->b(Ljava/lang/Runnable;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->f(Lcom/facebook/orca/app/FbAppInitializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->b(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v1}, Lcom/facebook/orca/app/FbAppInitializer;->a(Lcom/facebook/orca/app/FbAppInitializer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v1}, Lcom/facebook/orca/app/FbAppInitializer;->b(Lcom/facebook/orca/app/FbAppInitializer;)Lcom/facebook/orca/inject/ContextScope;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v2}, Lcom/facebook/orca/app/FbAppInitializer;->a(Lcom/facebook/orca/app/FbAppInitializer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    throw v0
.end method

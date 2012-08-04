.class Lcom/facebook/orca/app/FbAppInitializer$1$1;
.super Ljava/lang/Object;
.source "FbAppInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/app/FbAppInitializer$1;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/FbAppInitializer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/facebook/orca/app/FbAppInitializer$1$1;->a:Lcom/facebook/orca/app/FbAppInitializer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/app/FbAppInitializer$1$1;->a:Lcom/facebook/orca/app/FbAppInitializer$1;

    iget-object v0, v0, Lcom/facebook/orca/app/FbAppInitializer$1;->a:Lcom/facebook/orca/app/FbAppInitializer;

    invoke-static {v0}, Lcom/facebook/orca/app/FbAppInitializer;->d(Lcom/facebook/orca/app/FbAppInitializer;)V

    .line 73
    return-void
.end method

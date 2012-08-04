.class Lcom/facebook/orca/images/FetchImageCoordinator$2;
.super Ljava/lang/Object;
.source "FetchImageCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/images/FetchImageCoordinator;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/FetchImageCoordinator;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/images/FetchImageCoordinator$2;->a:Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/images/FetchImageCoordinator$2;->a:Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-static {v0}, Lcom/facebook/orca/images/FetchImageCoordinator;->a(Lcom/facebook/orca/images/FetchImageCoordinator;)V

    .line 63
    return-void
.end method

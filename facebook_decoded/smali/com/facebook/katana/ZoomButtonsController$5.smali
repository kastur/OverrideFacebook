.class Lcom/facebook/katana/ZoomButtonsController$5;
.super Ljava/lang/Object;
.source "ZoomButtonsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ZoomButtonsController;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ZoomButtonsController;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/facebook/katana/ZoomButtonsController$5;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$5;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->f(Lcom/facebook/katana/ZoomButtonsController;)V

    .line 381
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$5;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->e(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/facebook/katana/ZoomButtonsController$5;->a:Lcom/facebook/katana/ZoomButtonsController;

    invoke-static {v0}, Lcom/facebook/katana/ZoomButtonsController;->e(Lcom/facebook/katana/ZoomButtonsController;)Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/katana/ZoomButtonsController$OnZoomListener;->a()V

    .line 384
    :cond_0
    return-void
.end method

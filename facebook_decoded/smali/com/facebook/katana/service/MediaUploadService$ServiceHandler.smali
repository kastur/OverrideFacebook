.class final Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaUploadService.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/MediaUploadService;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/MediaUploadService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;->a:Lcom/facebook/katana/service/MediaUploadService;

    .line 321
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 322
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    iget-object v1, p0, Lcom/facebook/katana/service/MediaUploadService$ServiceHandler;->a:Lcom/facebook/katana/service/MediaUploadService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.class public Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener;
.super Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;
.source "PhotosUpload.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/service/method/PhotosUpload;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/service/method/PhotosUpload;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener;->a:Lcom/facebook/katana/service/method/PhotosUpload;

    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;-><init>(Lcom/facebook/katana/service/method/NetworkServiceOperation;)V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener;->a:Lcom/facebook/katana/service/method/PhotosUpload;

    iget-object v0, v0, Lcom/facebook/katana/service/method/PhotosUpload;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v6, Lcom/facebook/katana/service/method/ServiceOperation;->n:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener$1;-><init>(Lcom/facebook/katana/service/method/PhotosUpload$PhotosUploadHttpListener;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.class Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;
.super Landroid/os/AsyncTask;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[B

.field private b:I

.field private synthetic c:Lcom/facebook/katana/activity/media/CameraHolder;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/CameraHolder;[BI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->c:Lcom/facebook/katana/activity/media/CameraHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->a:[B

    .line 545
    iput p3, p0, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->b:I

    .line 546
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->a:[B

    iget v1, p0, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->b:I

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/Storage;->a([BI)Landroid/net/Uri;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->c:Lcom/facebook/katana/activity/media/CameraHolder;

    iget-object v1, v1, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v1, v0}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->a(Landroid/net/Uri;)Z

    .line 559
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 538
    invoke-direct {p0}, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraHolder$HandleMediaTask;->c:Lcom/facebook/katana/activity/media/CameraHolder;

    iget-object v0, v0, Lcom/facebook/katana/activity/media/CameraHolder;->a:Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;

    invoke-interface {v0}, Lcom/facebook/katana/activity/media/CameraHolder$CameraListener;->s()V

    .line 552
    return-void
.end method

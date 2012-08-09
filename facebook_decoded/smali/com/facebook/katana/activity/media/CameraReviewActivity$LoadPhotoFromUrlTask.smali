.class Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;
.super Landroid/os/AsyncTask;
.source "CameraReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/facebook/katana/activity/media/CameraReviewActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-object p1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 907
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->a:Landroid/graphics/Bitmap;

    .line 912
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 924
    :goto_0
    return-object v0

    .line 915
    :cond_0
    aget-object v0, p1, v3

    .line 918
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->a:Landroid/graphics/Bitmap;

    .line 920
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 921
    :catch_0
    move-exception v0

    .line 922
    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot decode bitmap from url img"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 924
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 930
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Lcom/facebook/katana/activity/media/CameraReviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 935
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->t(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->u(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->e(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->q(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 940
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->e(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/media/CameraReviewActivity$PhotoTouchListener;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/activity/media/CameraReviewActivity$PhotoTouchListener;-><init>(Lcom/facebook/katana/activity/media/CameraReviewActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 942
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->u(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->b:Lcom/facebook/katana/activity/media/CameraReviewActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->u(Lcom/facebook/katana/activity/media/CameraReviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 948
    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 901
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 901
    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/CameraReviewActivity$LoadPhotoFromUrlTask;->a(Ljava/lang/Boolean;)V

    return-void
.end method

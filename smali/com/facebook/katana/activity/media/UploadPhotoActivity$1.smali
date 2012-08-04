.class Lcom/facebook/katana/activity/media/UploadPhotoActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "UploadPhotoActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/facebook/katana/model/FacebookProfile;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 462
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 465
    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->b(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0, p2}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->a(Lcom/facebook/katana/activity/media/UploadPhotoActivity;Lcom/facebook/katana/model/FacebookProfile;)Lcom/facebook/katana/model/FacebookProfile;

    .line 468
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadPhotoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadPhotoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadPhotoActivity;->c(Lcom/facebook/katana/activity/media/UploadPhotoActivity;)V

    .line 471
    :cond_0
    return-void
.end method

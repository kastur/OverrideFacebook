.class Lcom/facebook/katana/activity/media/UploadVideoActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "UploadVideoActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/UploadVideoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/UploadVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadVideoActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/facebook/katana/model/FacebookProfile;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 107
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 110
    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-object v2, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadVideoActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->a(Lcom/facebook/katana/activity/media/UploadVideoActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadVideoActivity;

    invoke-static {v0, p2}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->a(Lcom/facebook/katana/activity/media/UploadVideoActivity;Lcom/facebook/katana/model/FacebookProfile;)Lcom/facebook/katana/model/FacebookProfile;

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/activity/media/UploadVideoActivity$1;->a:Lcom/facebook/katana/activity/media/UploadVideoActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/UploadVideoActivity;->b(Lcom/facebook/katana/activity/media/UploadVideoActivity;)V

    .line 115
    :cond_0
    return-void
.end method

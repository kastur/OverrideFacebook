.class Lcom/facebook/katana/activity/stream/StreamActivity$9;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "StreamActivity.java"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->b:Lcom/facebook/katana/activity/stream/StreamActivity;

    iput-object p2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<typeClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "JTtypeClass;)V"
        }
    .end annotation

    .prologue
    .line 465
    if-eqz p7, :cond_0

    instance-of v0, p7, Lcom/facebook/katana/model/FacebookPage;

    if-eqz v0, :cond_0

    .line 466
    check-cast p7, Lcom/facebook/katana/model/FacebookPage;

    .line 467
    iget-wide v0, p7, Lcom/facebook/katana/model/FacebookPage;->mPageId:J

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->b:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->c(Lcom/facebook/katana/activity/stream/StreamActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p7, Lcom/facebook/katana/model/FacebookPage;->mCanPost:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->b:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;Z)Z

    .line 469
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->b:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->b:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->k()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$9;->b:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->d(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 477
    :cond_1
    return-void
.end method

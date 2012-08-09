.class Lcom/facebook/katana/activity/stream/StreamActivity$10;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/stream/StreamAdapter$StreamAdapterListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$10;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V
    .locals 1
    .parameter

    .prologue
    .line 640
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$10;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;Lcom/facebook/katana/model/FacebookPost$Attachment$MediaItem;)V

    .line 641
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPost;)V
    .locals 4
    .parameter

    .prologue
    .line 624
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$10;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$10;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->e(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/model/FacebookStreamType;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->NEWSFEED_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$10;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;Lcom/facebook/katana/model/FacebookProfile;)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookPost;->actorId:J

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$10;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->d(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$10;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookPost;->b()Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0
.end method

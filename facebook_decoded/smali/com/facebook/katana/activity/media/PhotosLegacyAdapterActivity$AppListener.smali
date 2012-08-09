.class Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PhotosLegacyAdapterActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;-><init>(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    array-length v0, p5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->a(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)J

    move-result-wide v0

    cmp-long v0, p6, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p5, v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->b(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 135
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_0

    if-nez p4, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->b(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/model/FacebookAlbum;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    .line 142
    :cond_0
    if-eqz v0, :cond_2

    .line 143
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookAlbum;->m()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->a(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;J)V

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->finish()V

    .line 151
    :cond_1
    return-void

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    const v1, 0x7f0b018d

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 146
    const-string v0, "album_redirect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to redirect owner="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->a(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity$AppListener;->a:Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;->b(Lcom/facebook/katana/activity/media/PhotosLegacyAdapterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

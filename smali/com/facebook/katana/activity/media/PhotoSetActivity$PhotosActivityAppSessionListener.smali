.class Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PhotoSetActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/PhotoSetActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->d(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->a(J)V

    .line 241
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/model/FacebookPhotoSet;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    if-nez p3, :cond_1

    if-eqz p5, :cond_1

    .line 205
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0, p5}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Lcom/facebook/katana/model/FacebookPhotoSet;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const v1, 0x7f0b02b4

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 208
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->b(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    if-nez p4, :cond_3

    .line 222
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhoto;

    .line 223
    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->c(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->l()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->d(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->c(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const v1, 0x7f0b02b4

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 230
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->finish()V

    goto :goto_0
.end method

.method public final d(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->removeDialog(I)V

    .line 250
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->removeDialog(I)V

    .line 251
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->f(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/model/FacebookPhotoSet;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->e(Lcom/facebook/katana/activity/media/PhotoSetActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/model/FacebookPhotoSet;->a(J)V

    .line 253
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->d(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/media/PhotoSetGridAdapter;->notifyDataSetChanged()V

    .line 254
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$PhotosActivityAppSessionListener;->a:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const v3, 0x7f0b02af

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    return-void
.end method

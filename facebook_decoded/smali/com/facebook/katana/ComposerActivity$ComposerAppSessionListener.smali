.class Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ComposerActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/ComposerActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;-><init>(Lcom/facebook/katana/ComposerActivity;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 344
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;J)V

    .line 346
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->e(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    new-instance v2, Lcom/facebook/katana/model/FacebookProfile;

    invoke-direct {v2, v0}, Lcom/facebook/katana/model/FacebookProfile;-><init>(Lcom/facebook/katana/model/FacebookUser;)V

    invoke-static {v1, v2}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Lcom/facebook/katana/model/FacebookProfile;)Lcom/facebook/katana/model/FacebookProfile;

    .line 348
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->b(Lcom/facebook/katana/ComposerActivity;)V

    .line 350
    :cond_0
    return-void
.end method

.method public final a(ILcom/facebook/katana/features/UserSeenNux$Project;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 356
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 357
    sget-object v0, Lcom/facebook/katana/features/UserSeenNux$Project;->EVENT_TAG_EXPANSION:Lcom/facebook/katana/features/UserSeenNux$Project;

    if-ne p2, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->i()V

    .line 361
    :cond_0
    return-void
.end method

.method public final a(ILcom/facebook/katana/service/method/AudienceSettings;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 303
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->c(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/features/composer/AudienceAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0, p2}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/service/method/AudienceSettings;)V

    .line 306
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p4, Lcom/facebook/katana/binding/ProfileImage;->a:J

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->b(Lcom/facebook/katana/ComposerActivity;)V

    .line 289
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 4
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v0

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-wide v2, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->b(Lcom/facebook/katana/ComposerActivity;)V

    .line 297
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/GeoRegion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->d(Lcom/facebook/katana/ComposerActivity;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v1}, Lcom/facebook/katana/ComposerActivity;->d(Lcom/facebook/katana/ComposerActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 319
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 325
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 327
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 329
    :cond_1
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {p3}, Lcom/facebook/katana/model/GeoRegion;->a(Ljava/util/List;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;)Lcom/facebook/katana/model/GeoRegion$ImplicitLocation;

    .line 331
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$ComposerAppSessionListener;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ComposerActivity;->f()V

    .line 338
    :cond_2
    return-void
.end method

.class Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;
.super Ljava/lang/Object;
.source "SyncPhotoComments.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ServiceOperationListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/SyncPhotoComments;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/method/SyncPhotoComments;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;->a:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/method/SyncPhotoComments;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;-><init>(Lcom/facebook/katana/service/method/SyncPhotoComments;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;->a:Lcom/facebook/katana/service/method/SyncPhotoComments;

    iget-object v0, v0, Lcom/facebook/katana/service/method/SyncPhotoComments;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;->a:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 244
    return-void
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    return-void
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 227
    check-cast p1, Lcom/facebook/katana/service/method/FqlGetProfile;

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/FqlGetProfile;->h()Ljava/util/Map;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;->a:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-static {v1}, Lcom/facebook/katana/service/method/SyncPhotoComments;->b(Lcom/facebook/katana/service/method/SyncPhotoComments;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 231
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;->a:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-static {v0}, Lcom/facebook/katana/service/method/SyncPhotoComments;->c(Lcom/facebook/katana/service/method/SyncPhotoComments;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoComment;

    .line 232
    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;->a:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-static {v1}, Lcom/facebook/katana/service/method/SyncPhotoComments;->b(Lcom/facebook/katana/service/method/SyncPhotoComments;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoComment;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookProfile;

    .line 233
    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/FacebookPhotoComment;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

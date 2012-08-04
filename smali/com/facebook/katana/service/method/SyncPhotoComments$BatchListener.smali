.class Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;
.super Ljava/lang/Object;
.source "SyncPhotoComments.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ServiceOperationListener;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic b:Lcom/facebook/katana/service/method/SyncPhotoComments;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/method/SyncPhotoComments;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/method/SyncPhotoComments;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;-><init>(Lcom/facebook/katana/service/method/SyncPhotoComments;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetProfile;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    iget-object v1, v1, Lcom/facebook/katana/service/method/SyncPhotoComments;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-virtual {v2}, Lcom/facebook/katana/service/method/SyncPhotoComments;->l()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-static {v3}, Lcom/facebook/katana/service/method/SyncPhotoComments;->a(Lcom/facebook/katana/service/method/SyncPhotoComments;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;

    iget-object v5, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/facebook/katana/service/method/SyncPhotoComments$GetUsersApiMethodListener;-><init>(Lcom/facebook/katana/service/method/SyncPhotoComments;B)V

    iget-object v5, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->a:Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FqlGetProfile;->a()V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    iget-object v0, v0, Lcom/facebook/katana/service/method/SyncPhotoComments;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/service/method/ServiceOperation;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    return-void
.end method

.method public final b(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 184
    check-cast p1, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;

    .line 187
    invoke-virtual {p1}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PhotosGetComments;

    .line 188
    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PhotosGetComments;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/service/method/SyncPhotoComments;->a(Lcom/facebook/katana/service/method/SyncPhotoComments;Ljava/util/List;)Ljava/util/List;

    .line 189
    iget-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/SyncPhotoComments;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->a:Ljava/util/Map;

    .line 192
    iget-object v1, p0, Lcom/facebook/katana/service/method/SyncPhotoComments$BatchListener;->b:Lcom/facebook/katana/service/method/SyncPhotoComments;

    invoke-virtual {p1}, Lcom/facebook/katana/service/method/BatchRunDONOTUSE;->h()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/PhotosCanComment;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/PhotosCanComment;->h()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/katana/service/method/SyncPhotoComments;->a(Lcom/facebook/katana/service/method/SyncPhotoComments;Z)Z

    .line 194
    :cond_0
    return-void
.end method

.class public Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;
.super Lcom/facebook/katana/service/method/FqlMultiQuery;
.source "PhotosGetLikesAndComments.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 26
    move-object v0, p1

    move-object v2, p3

    move-wide v3, p4

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)Ljava/util/LinkedHashMap;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/facebook/katana/service/method/FqlMultiQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/LinkedHashMap;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 28
    iput-wide p4, p0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;->a:J

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v8

    .line 46
    if-nez v8, :cond_0

    .line 53
    :goto_0
    return-object v2

    .line 50
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;

    invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 53
    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v3, v8

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)Ljava/util/LinkedHashMap;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/FqlQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    const-string v8, "likes"

    new-instance v0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$LikesQuery;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$LikesQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v8, "comments"

    new-instance v0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V

    invoke-virtual {v7, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v7
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 63
    const-string v1, "comments"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;

    .line 64
    iget-wide v3, p0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;->a:J

    const-string v1, "likes"

    invoke-virtual {p0, v1}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments;->b(Ljava/lang/String;)Lcom/facebook/katana/service/method/FqlQuery;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$LikesQuery;

    invoke-static {v1}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$LikesQuery;->a(Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$LikesQuery;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v2}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;->a(Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;)I

    move-result v6

    move v1, p5

    move-object v2, p7

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/Exception;JLjava/util/Set;I)V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

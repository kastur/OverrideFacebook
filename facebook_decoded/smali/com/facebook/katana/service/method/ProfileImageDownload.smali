.class public Lcom/facebook/katana/service/method/ProfileImageDownload;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "ProfileImageDownload.java"

# interfaces
.implements Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;


# instance fields
.field private a:J

.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/katana/binding/ProfileImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v3, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 45
    iput-wide p3, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->a:J

    .line 46
    iput-object p6, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->f:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 55
    :try_start_0
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->o:Landroid/content/Context;

    sget-object v2, Lcom/facebook/katana/net/HttpOperation$Method;->GET:Lcom/facebook/katana/net/HttpOperation$Method;

    iget-object v3, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 56
    iget-object v0, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    iget-object v1, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v6, v2, v0}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method public final a(Lcom/facebook/katana/net/HttpOperation;ILjava/lang/String;Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;Ljava/lang/Exception;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 76
    const-wide/16 v4, 0x0

    .line 77
    const/16 v1, 0xc8

    if-ne p2, v1, :cond_3

    .line 78
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    :try_start_0
    invoke-virtual {p4, v1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a(Ljava/io/File;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 82
    iget-object v2, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->o:Landroid/content/Context;

    iget-wide v7, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->a:J

    iget-object v3, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->f:Ljava/lang/String;

    invoke-static {v2, v7, v8, v3, v9}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/ProfileImage;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->g:Lcom/facebook/katana/binding/ProfileImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/katana/util/ImageUtils$ImageException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move v6, p2

    .line 103
    :goto_0
    invoke-static {v6}, Lcom/facebook/katana/service/method/ApiLogging;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->o:Landroid/content/Context;

    iget-object v1, p1, Lcom/facebook/katana/net/HttpOperation;->a:Lcom/facebook/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lcom/facebook/apache/http/client/methods/HttpRequestBase;->h()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation;->b()J

    move-result-wide v2

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiLogging;->a(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 110
    :cond_0
    invoke-super {p0, v6, p3, p5}, Lcom/facebook/katana/service/method/ApiMethod;->a(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 111
    return-void

    .line 83
    :catch_0
    move-exception p5

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object p3, v0

    goto :goto_0

    .line 87
    :catch_1
    move-exception p5

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-object p3, v0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    throw v0

    :cond_2
    move-object p3, v0

    goto :goto_0

    :cond_3
    move v6, p2

    goto :goto_0
.end method

.method public final h()Lcom/facebook/katana/binding/ProfileImage;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/katana/service/method/ProfileImageDownload;->g:Lcom/facebook/katana/binding/ProfileImage;

    return-object v0
.end method

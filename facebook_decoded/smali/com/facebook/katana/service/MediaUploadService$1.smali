.class Lcom/facebook/katana/service/MediaUploadService$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "MediaUploadService.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/MediaUploadService;


# direct methods
.method constructor <init>(Lcom/facebook/katana/service/MediaUploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/katana/service/MediaUploadService$1;->a:Lcom/facebook/katana/service/MediaUploadService;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;ILcom/facebook/katana/model/FacebookPhoto;JJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService$1;->a:Lcom/facebook/katana/service/MediaUploadService;

    invoke-static {v0}, Lcom/facebook/katana/service/MediaUploadService;->a(Lcom/facebook/katana/service/MediaUploadService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p6}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p5, v1}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->d()V

    .line 80
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService$1;->a:Lcom/facebook/katana/service/MediaUploadService;

    invoke-static {v0}, Lcom/facebook/katana/service/MediaUploadService;->a(Lcom/facebook/katana/service/MediaUploadService;)Landroid/content/Context;

    move-result-object v1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-static {v1, p5, v0}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;ILjava/lang/Class;)V

    .line 74
    const-string v0, "api photo upload failure"

    const-string v1, "Failed photo upload (reqID=%s, uploadId=%d, errorCode=%d, reason=%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    invoke-static {}, Lcom/facebook/katana/service/method/ApiLogging;->c()V

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/model/FacebookVideoUploadResponse;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService$1;->a:Lcom/facebook/katana/service/MediaUploadService;

    invoke-static {v0}, Lcom/facebook/katana/service/MediaUploadService;->a(Lcom/facebook/katana/service/MediaUploadService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p5, Lcom/facebook/katana/model/FacebookVideoUploadResponse;->vid:Ljava/lang/String;

    invoke-static {v0, p6, v1}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/MediaUploadService$1;->a:Lcom/facebook/katana/service/MediaUploadService;

    invoke-static {v0}, Lcom/facebook/katana/service/MediaUploadService;->a(Lcom/facebook/katana/service/MediaUploadService;)Landroid/content/Context;

    move-result-object v1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-static {v1, p6, v0}, Lcom/facebook/katana/service/MediaUploadService;->a(Landroid/content/Context;ILjava/lang/Class;)V

    .line 92
    const-string v0, "api video upload failure"

    const-string v1, "Failed video upload (reqID=%s, uploadId=%d, errorCode=%d, reason=%s, exception=%s)"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
